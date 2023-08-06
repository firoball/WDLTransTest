using Microsoft.CSharp;
using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.IO;
using System.Text;
using System.Threading.Tasks;

namespace WDLTransTest
{

    class ApiTest : Test
    {
        private readonly string main = @"
using System;
using Acknex3.Script;
class ApiTest
{
    static void Main(string[] args)
    {
        Console.WriteLine(""This executable is non-functional - Compilation test only."");
    }
}
";
        CompilerResults m_results;
        private static string s_apiPath = string.Empty;

        public static string ApiPath { set => s_apiPath = value; }

        public ApiTest(string name, Dictionary<string, string> config) : base(name, config) { }

        protected override int Execute(Dictionary<string, string> config, out string log)
        {
            try
            {
                if (config.TryGetValue("cs-file", out string csfile))
                {
                    StreamReader reader = File.OpenText(csfile);
                    string code = reader.ReadToEnd();
                    reader.Close();

                    CSharpCodeProvider provider = new CSharpCodeProvider();
                    CompilerParameters parameters = new CompilerParameters();

                    parameters.ReferencedAssemblies.Add(s_apiPath);
                    parameters.GenerateExecutable = true;

                    if (config.TryGetValue("exe-file", out string exefile))
                    {
                        parameters.GenerateInMemory = false;
                        parameters.OutputAssembly = exefile;
                    }
                    else
                    {
                        parameters.GenerateInMemory = true;
                    }

                    m_results = provider.CompileAssemblyFromSource(parameters, new[] { code, main });
                    log = FormatOutput(csfile);
                    return 0;
                }
                else
                {
                    Console.WriteLine("Invalid configuration - Skipping Test");
                    log = string.Empty;
                    return 1; //something is wrong - force failure
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                Console.WriteLine("Invalid configuration - Skipping Test");
                log = string.Empty;
                return 1;
            }
        }

        protected override int Evaluate()
        {
            if (m_results == null || m_results.Errors.HasErrors)
                return 1;
            else
                return 0;
        }

        private string FormatOutput(string file)
        {
            string log = string.Empty;
            StringBuilder sb = new StringBuilder();
            foreach (string output in m_results.Output)
            {
                sb.AppendLine(output);
            }
            log = sb.ToString();

            if (m_results.Errors.HasErrors)
            {
                sb = new StringBuilder();
                foreach (CompilerError error in this.m_results.Errors)
                {
                    if (!error.IsWarning)
                        sb.AppendLine(string.Format(file + "(" + error.Line + "," + error.Column + ") error ({0}): {1}", error.ErrorNumber, error.ErrorText));
                }
                Console.WriteLine(sb.ToString());
            }
            else
            {
                if (m_results.Errors.HasWarnings)
                {
                    sb = new StringBuilder();
                    foreach (CompilerError error in this.m_results.Errors)
                    {
                        if (error.IsWarning)
                            sb.AppendLine(string.Format(file + "(" + error.Line + "," + error.Column + ") error ({0}): {1}", error.ErrorNumber, error.ErrorText));
                    }
                    Console.WriteLine(sb.ToString());
                }
                string ok = "Compilation Ok";
                Console.WriteLine(ok);
                log += ok;
            }

            return log;
        }
    }
}
