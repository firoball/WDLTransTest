using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WDLTransTest
{
    class Test
    {
        private readonly string m_name;
        private readonly string m_type;
        private readonly Dictionary<string, string> m_config;

        public Test(string name, Dictionary<string, string> config)
        {
            m_name = name;
            m_type = GetType().Name;
            m_config = config;
        }

        public int Run()
        {
            int result = 0;
            Logger.Info("Running " + m_type + " " + m_name);

            Stopwatch watch = new Stopwatch();
            watch.Start();

            string currentDir = Directory.GetCurrentDirectory();

            result += Execute(m_config, out string log);
            result += Evaluate();

            //Make sure original directory is restored
            Directory.SetCurrentDirectory(currentDir);

            Log(log);

            watch.Stop();
            Console.WriteLine("Execution time: " + watch.Elapsed);

            Logger.Result(m_type + " " + m_name, result);
            return result;
        }

        private void Log(string log)
        {
            if (m_config.TryGetValue("log-file", out string logfile) && !string.IsNullOrEmpty(logfile))
            {
                try
                {
                    string logpath = Path.GetDirectoryName(logfile);
                    Directory.CreateDirectory(logpath);
                    using (StreamWriter writer = new StreamWriter(logfile))
                    {
                        writer.Write(log);
                        Console.WriteLine("Logfile created: " + Path.GetFullPath(logfile));
                    }
                }
                catch { }
            }
            else
            {
                Console.WriteLine(log);
            }

        }

        protected virtual int Execute(Dictionary<string, string> config, out string log)
        {
            Console.WriteLine("No test execution specified!");
            log = string.Empty;
            return 1; //force test failure
        }

        protected virtual int Evaluate()
        {
            Console.WriteLine("No test evaluation specified!");
            return 1; //force test failure
        }
    }
}
