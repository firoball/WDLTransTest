using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace WDLTransTest
{
    class XmlConfig
    {
        private readonly string m_config;
        private XmlDocument m_xmlDoc;

        public XmlConfig(string config)
        {
            m_config = config;
            try
            {
                m_xmlDoc = new XmlDocument();
                m_xmlDoc.Load(m_config);
            }
            catch (Exception e)
            {
                m_xmlDoc = null;
                Console.WriteLine("Error - invalid config: " + m_config);
                Console.WriteLine(e.Message);
            }
        }

        public Dictionary<string, string> GetConfig(string type)
        {
            if (m_xmlDoc == null)
                return new Dictionary<string, string>();

            Dictionary<string, string> dict;
            if (type.Equals("generic"))
                dict = new Dictionary<string, string>();
            else
                dict = GetConfig("generic");
            XmlNodeList list = m_xmlDoc.SelectNodes("//config[@type='" + type + "']");
            XmlNode node = list.Item(0);
            foreach (XmlNode item in node.ChildNodes)
            {
                if (!dict.ContainsKey(item.Name))
                    dict.Add(item.Name, item.InnerText);
            }
            return dict;
        }
    }
}
