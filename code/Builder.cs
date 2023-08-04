using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WDLTransTest
{
    class Builder
    {
        private Dictionary<string, string> m_config;
        protected string m_options = "/property:Configuration=Release";

        public Builder(Dictionary<string, string> config, bool forceLib)
        {
            m_config = config;
            if (forceLib)
                m_options += ";OutPutType=Library";
        }
        public Builder(Dictionary<string, string> config) : this(config, false) {}

        public int Build()
        {
            string cmd = SetupCmd();
            //Console.WriteLine(cmd);
            return Execute(cmd);
        }

        private int Execute (string cmd)
        {
            Process process = new Process();
            ProcessStartInfo startInfo = new ProcessStartInfo();
            //startInfo.WindowStyle = ProcessWindowStyle.Hidden;
            startInfo.UseShellExecute = false;
            //startInfo.CreateNoWindow = true;
            startInfo.RedirectStandardOutput = true;
            startInfo.FileName = "cmd.exe";
            startInfo.Arguments = "/C " + cmd;
            process.StartInfo = startInfo;
            process.Start();
            string output = process.StandardOutput.ReadToEnd();
            int exitCode = process.ExitCode;
            process.WaitForExit();
            Console.WriteLine(output);
            return exitCode;
        }

        private string SetupCmd()
        {
            string cmd = string.Empty;
            if (m_config.TryGetValue("msbuild", out string msbuild))
            {
                msbuild = MakePath(msbuild);
                cmd += SanitizePath(msbuild);

                if (m_config.TryGetValue("prj-path", out string prjpath) && m_config.TryGetValue("vsproj", out string vsproj))
                {
                    vsproj = MakePath(prjpath, vsproj);
                    cmd += " " + SanitizePath(vsproj);

                    if (m_config.TryGetValue("out-path", out string outpath))
                        outpath = MakePath(outpath);
                    else
                        outpath = MakePath("bin");

                    cmd += " " + m_options + ";OutPutPath=" + outpath;
                }

            }
            return cmd;
        }

        private string MakePath(string path)
        {            
            //gnarf
            if (!Path.HasExtension(path))
            {
                if (!path.EndsWith(Path.DirectorySeparatorChar.ToString()))
                    path += Path.DirectorySeparatorChar;
            }

            string newpath = string.Empty;
            try
            {
                string current = Directory.GetCurrentDirectory();

                if (Path.IsPathRooted(path))
                    newpath = Path.GetFullPath(path);
                else
                    newpath = Path.Combine(current, Path.GetDirectoryName(path));
            }
            catch //(Exception e)
            {
                Console.WriteLine("Error - invalid path: " + path);
            }
            return newpath;
        }

        private string MakePath(string path, string file)
        {
            string filepath = string.Empty;
            try
            {
                string newpath = MakePath(path);
                file = string.Concat(file.Split(Path.GetInvalidFileNameChars()));
                filepath = Path.Combine(newpath, file);
            }
            catch //(Exception e)
            {
                Console.WriteLine("Error - invalid path: " + path);
            }
            return filepath;
        }

        private string SanitizePath(string path)
        {
            path = string.Concat(path.Split(new [] { '"'}));
            if (path.Contains(" "))
                path = '"' + path + '"';
            return path;
        }
    }
}
