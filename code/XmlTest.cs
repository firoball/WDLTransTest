using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;using System.Xml;

namespace WDLTransTest
{
    class XmlTest
    {
        private readonly string m_test;
        private XmlDocument m_xmlDoc;

        public XmlTest(string test)
        {
            m_test = test;
            try
            {
                m_xmlDoc = new XmlDocument();
                m_xmlDoc.Load(m_test);
            }
            catch //(Exception e)
            {
                m_xmlDoc = null;
                Console.WriteLine("Error - invalid test: " + m_test);
                //Console.WriteLine(e.Message);
            }
        }

        public XmlNode GetRoot()
        {
            if (m_xmlDoc != null)
                return m_xmlDoc.ChildNodes[0];
            else
                return null;
        }

        public static bool IsTest(XmlNode node, out string name, out Dictionary<string, string> config)
        {
            config = new Dictionary<string, string>();
            if (node != null && node.Name.Equals("test", StringComparison.CurrentCultureIgnoreCase) && node.HasChildNodes)
            {
                name = GetName(node);
                foreach (XmlNode item in node.ChildNodes)
                {
                    if (!config.ContainsKey(item.Name))
                        config.Add(item.Name, item.InnerText);
                }
                return true;
            }
            else
            {
                name = string.Empty;
                return false;
            }
        }

        public static bool IsTestSuite(XmlNode node, out string name, out XmlNodeList children)
        {
            if (node != null && IsTestSuite(node))
            {
                name = GetName(node);
                children = node.ChildNodes;
                return true;
            }
            else
            {
                name = string.Empty;
                children = null;
                return false;
            }
        }

        public static bool IsTestSuite(XmlNode node)
        {
            XmlAttribute attribute = node?.Attributes["file"];
            if (node != null &&
                node.HasChildNodes &&
                node.Name.Equals("testsuite", StringComparison.CurrentCultureIgnoreCase) &&
                attribute == null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public static bool IsReference(XmlNode node, out string file)
        {
            XmlAttribute attribute = node?.Attributes["file"];

            if (node != null && node.Name.Equals("testsuite", StringComparison.CurrentCultureIgnoreCase) && attribute != null)
            {
                file = attribute.Value;
                return true;
            }
            else
            {
                file = string.Empty;
                return false;
            }
        }

        private static string GetName(XmlNode node)
        {
            XmlAttribute attribute = node?.Attributes["name"];
            if (attribute != null)
                return attribute.Value;
            else
                return "(unnamed)";
        }

    }
}
