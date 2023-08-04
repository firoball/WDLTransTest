using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WDLTransTest
{
    class Test
    {
        private readonly string m_name;
        private readonly Dictionary<string, string> m_config;

        public Test(string name, Dictionary<string, string> config)
        {
            m_name = name;
            m_config = config;
        }

        public int Execute()
        {
            int result = 0;
            Logger.Info("Running Test: " + m_name + " (DUMMY)");
            if (m_config != null)
            {
                foreach (KeyValuePair<string, string> kvp in m_config)
                {
                    Console.WriteLine("TestCfg: " + kvp.Key + " " + kvp.Value);
                }
            }
            Logger.Result("Test: " + m_name + " - ", result);
            return result;
        }
    }
}
