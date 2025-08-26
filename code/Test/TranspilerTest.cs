using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;

namespace WDLTransTest
{
    class TranspilerTest : Test
    {
        private static string s_transpilerPath = string.Empty;

        private string m_output;
        private readonly string[] m_errors = { "syntax error", "yyparse stack overflow" };  //strings indicating transpiler issues
                                                                                            //taken from parser.cs of WDL2CS
                                                                                            //any string handed to yyerror() must be added here

        public static string TranspilerPath { set => s_transpilerPath = value; }

        public TranspilerTest(string name, Dictionary<string, string> config) : base(name, config)
        {
            m_output = string.Empty;
        }

        protected override int Execute(Dictionary<string, string> config, out string log)
        {
            if (config != null)
            {
                string cmd = SetupCmd(config);

                if (!string.IsNullOrEmpty(cmd))
                {
                    Process process = new Process();
                    ProcessStartInfo startInfo = new ProcessStartInfo
                    {
                        //startInfo.WindowStyle = ProcessWindowStyle.Hidden;
                        UseShellExecute = false,
                        //startInfo.CreateNoWindow = true;
                        RedirectStandardOutput = true,
                        FileName = "cmd.exe",
                        Arguments = "/C " + cmd
                    };
                    process.StartInfo = startInfo;
                    process.Start();
                    string output = process.StandardOutput.ReadToEnd();
                    int exitCode = process.ExitCode;
                    process.WaitForExit();
                    m_output = output;
                    log = output;
                    return exitCode;
                }
            }
            Console.WriteLine("Invalid configuration - Skipping Test");
            log = string.Empty;
            return 1; //something is wrong - force failure
        }

        protected override int Evaluate()
        {
            if (!string.IsNullOrEmpty(m_output))
            {
                foreach (string err in m_errors)
                {
                    if (m_output.ToLower().Contains(err))
                        return 1;
                }
                return 0;
            }
            //no output - something is wrong -> fail the test
            return 1;
        }

        private string SetupCmd(Dictionary<string, string> config)
        {
            string cmd = string.Empty;
            if (config.TryGetValue("wdl-file", out string wdlfile))
            {
                if (!string.IsNullOrEmpty(wdlfile) && !string.IsNullOrEmpty(s_transpilerPath))
                {
                    try
                    {
                        //Transpiler requires a current directory switch to where all WDL code is stored
                        //otherwise WDL includes won't be found
                        string wdlpath = Path.GetDirectoryName(wdlfile);

                        //pass WDL file without path to transpiler
                        wdlfile = Path.GetFileName(wdlfile);

                        if (config.TryGetValue("cs-file", out string csfile))
                        {
                            string csdir = Path.GetDirectoryName(csfile);
                            Directory.CreateDirectory(csdir);

                            //C# output file needs to be specified relative to current path
                            string curdir = Directory.GetCurrentDirectory();
                            csfile = Path.Combine(curdir, csfile);
                        }
                        else
                        {
                            //no C# file specified - just place it next to WDL files
                            csfile = Path.GetFileNameWithoutExtension(wdlfile) + ".cs";
                        }

                        cmd = s_transpilerPath + " " + wdlfile + " " + csfile;

                        //switch to WDL directory
                        Directory.SetCurrentDirectory(wdlpath);

                        //append custom options
                        if (config.TryGetValue("options", out string options))
                        {
                            Console.WriteLine("Options: " + options);
                            cmd += " " + options;
                        }

                        Console.WriteLine(cmd);
                    }
                    catch (Exception e)
                    {
                        Console.WriteLine(e.Message);
                    }
                }
            }
            return cmd; 
        }
    }
}
