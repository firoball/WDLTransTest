using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WDLTransTest
{
    class Program
    {
        static void Main(string[] args)
        {
            if (args.Length < 2)
            {
                Console.WriteLine("Usage: WdlTransTest <config.xml> <testsuite.xml>");
            }
            else if (!File.Exists(args[0]))
            {
                Console.WriteLine("Error - configuration not found: " + args[0]);
            }
            else if (!File.Exists(args[1]))
            {
                Console.WriteLine("Error - test suite not found: " + args[1]);
            }
            else
            {
                XmlConfig cfg = new XmlConfig(args[0]);
                BuildTranspiler(cfg);
                BuildApi(cfg);
                RunTests(args[1]);
            }
        }

        public static void BuildTranspiler(XmlConfig cfg)
        {
            Logger.Info("Building Transpiler");

            var transpiler = cfg.GetConfig("transpiler");
            Builder transpilerBuilder = new Builder(transpiler);
            int result = transpilerBuilder.Build();

            Logger.Result("Transpiler: ", result);
        }

        public static void BuildApi(XmlConfig cfg)
        {
            Logger.Info("Building Acknex API DLL");

            var api = cfg.GetConfig("api");
            Builder apiBuilder = new Builder(api, true);
            int result = apiBuilder.Build();

            Logger.Result("Acknex API DLL: ", result);
        }

        public static void RunTests(string file)
        {
            Logger.Info("Running Tests");

            TestSuite testSuite = new TestSuite(file);
            int testSuiteCode = testSuite.Execute();

            Logger.Result("Tests: ", testSuiteCode);
        }
    }
}
