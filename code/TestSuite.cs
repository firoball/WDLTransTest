using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace WDLTransTest
{
    class TestSuite
    {
        private readonly string m_folder;
        private string m_name;
        private XmlNodeList m_children;
        private bool m_valid;

        public TestSuite(string file)
        {
            XmlTest xmlTest = new XmlTest(file);
            XmlNode root = xmlTest.GetRoot();
            m_folder = Path.GetDirectoryName(file);
            Init(root);
        }

        public TestSuite(XmlNode root, string folder)
        {
            m_folder = folder;
            Init(root);
        }

        private void Init(XmlNode root)
        {
            if (m_valid = XmlTest.IsTestSuite(root, out string name, out XmlNodeList children))
            {
                m_name = name;
                m_children = children;
            }
            else
            {
                m_name =  "(invalid)";
                m_children = null;
            }
        }

        public int Run(string[] filters)
        {
            Logger.Info("Running TestSuite: " + m_name);
            int result = 0;
            if (m_valid)
            {
                int subresult = 0;
                foreach (XmlNode child in m_children)
                {
                    if (XmlTest.IsReference(child, out string file))
                    {
                        file = Path.Combine(m_folder, file);
                        TestSuite extTestSuite = new TestSuite(file);
                        subresult = extTestSuite.Run(filters);
                    }
                    else if (XmlTest.IsTestSuite(child))
                    {
                        TestSuite childTestSuite = new TestSuite(child, m_folder);
                        subresult = childTestSuite.Run(filters);
                    }
                    else if (XmlTest.IsTest(child, out string name, out string type, out Dictionary<string, string> config))
                    {
                        if ((filters == null) || ((filters != null) && filters.Contains(type.ToLower())))
                            subresult = TestRunner.Run(name, type, config);
                    }
                    else
                    {
                        subresult = 0;
                        //unknown node - ignore
                    }
                    result = subresult != 0 ? subresult : result;
                }
            }
            else
            {
                result = 1;
            }
            Logger.Result("TestSuite: " + m_name + " - ", result);

            return result;
        }
    }
}
