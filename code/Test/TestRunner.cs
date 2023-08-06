using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WDLTransTest
{
    class TestRunner
    {
        static public int Run(string name, string type, Dictionary<string, string> config)
        {
            Test test;
            switch (type)
            {
                case "transpiler":
                    test = new TranspilerTest(name, config);
                    break;

                case "api":
                    test = new ApiTest(name, config);
                    break;

                default:
                    test = new Test(name, config);
                    break;
            }
            return test.Run();
        }
    }
}
