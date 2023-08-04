using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WDLTransTest
{
    public class Logger
    {
        public static void Info(string info)
        {
            Console.ForegroundColor = ConsoleColor.Yellow;
            Console.WriteLine(">>> " + info);
            Console.ResetColor();
        }

        public static void Result(string info, int result)
        {
            Console.ForegroundColor = result == 0 ? ConsoleColor.Green : ConsoleColor.Red;
            Console.WriteLine("<<< " + info + (result == 0 ? "SUCCESS" : "FAIL"));
            Console.ResetColor();
        }
    }
}
