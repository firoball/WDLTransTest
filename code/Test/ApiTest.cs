using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WDLTransTest
{
    class ApiTest : Test
    {
        private static string s_apiPath = string.Empty;

        public static string ApiPath { set => s_apiPath = value; }

        public ApiTest(string name, Dictionary<string, string> config) : base(name, config)
        {
            //m_output = string.Empty;
        }
    }
}
