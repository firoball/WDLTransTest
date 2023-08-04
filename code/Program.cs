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
            if (args.Length < 1)
            {
                Console.WriteLine("Usage: WdlTransTest <config.xml>");
            }
            else if (!File.Exists(args[0]))
            {
                Console.WriteLine("Error - configuration not found: " + args[0]);
            }
            else
            {
                XmlConfig cfg = new XmlConfig(args[0]);

                Console.WriteLine(Environment.NewLine + ">>>>Building Acknex API DLL");
                var api = cfg.GetConfig("api");
                Builder apiBuilder = new Builder(api, true);
                int apiCode = apiBuilder.Build();
                Console.ForegroundColor = apiCode == 0 ? ConsoleColor.Green : ConsoleColor.Red;
                Console.WriteLine("<<<<Acknex API DLL: " + (apiCode == 0 ? "SUCCESS" : "FAIL"));
                Console.ResetColor();

                Console.WriteLine(Environment.NewLine + ">>>>Building Transpiler");
                var transpiler = cfg.GetConfig("transpiler");
                Builder transpilerBuilder = new Builder(transpiler);
                int transpilerCode = transpilerBuilder.Build();
                Console.ForegroundColor = transpilerCode == 0 ? ConsoleColor.Green : ConsoleColor.Red;
                Console.WriteLine("<<<<Transpiler: " + (transpilerCode == 0 ? "SUCCESS" : "FAIL"));
                Console.ResetColor();

            }
        }
    }
}
