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
                Console.WriteLine("Usage: " + typeof(Program).Assembly.GetName().Name + " <config.xml> <testsuite.xml> [type1,type2,...]");
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
                string transpilerProduct = BuildTranspiler(cfg);
                string apiProduct = BuildApi(cfg);
                SetupTests(transpilerProduct, apiProduct);
                string[] filters = null;
                if (args.Length > 2)
                    filters = args[2].ToLower().Split(',');
                RunTests(args[1], filters);
            }
        }

        public static string BuildTranspiler(XmlConfig cfg)
        {
            Logger.Info("Building Transpiler");

            var transpiler = cfg.GetConfig("transpiler");
            Builder transpilerBuilder = new Builder(transpiler);
            int result = transpilerBuilder.Build(out string product);

            Logger.Result("Transpiler", result);
            return product;
        }

        public static string BuildApi(XmlConfig cfg)
        {
            Logger.Info("Building Acknex API DLL");

            var api = cfg.GetConfig("api");
            Builder apiBuilder = new Builder(api, true);
            int result = apiBuilder.Build(out string product);

            Logger.Result("Acknex API DLL", result);
            return product;
        }

        public static void SetupTests(string transpiler, string api)
        {
            Console.WriteLine("Transpiler location: " + transpiler);
            Console.WriteLine("Acknex API location: " + api);
            TranspilerTest.TranspilerPath = transpiler;
            ApiTest.ApiPath = api; 
        }

        public static void RunTests(string file, string[] filters)
        {
            Logger.Info("Running Tests");
            if (filters != null)
            {
                Console.WriteLine("FILTERS ACTIVE: " + string.Join(" ", filters));
            }

            TestSuite testSuite = new TestSuite(file);
            int testSuiteCode = testSuite.Run(filters);

            Logger.Result("Tests", testSuiteCode);
        }
    }
}
