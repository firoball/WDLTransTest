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
        private readonly string m_options = "/property:Configuration=Release";
        private readonly bool m_forceLib;

        public Builder(Dictionary<string, string> config, bool forceLib)
        {
            m_config = config;
            m_forceLib = forceLib;
            if (m_forceLib)
                m_options += ";OutPutType=Library";
        }
        public Builder(Dictionary<string, string> config) : this(config, false) {}

        public int Build(out string product)
        {
            string cmd = SetupCmd(out string outputPath);
            //Console.WriteLine(cmd);
            int result = Execute(cmd);
            product = LocateProduct(outputPath);
            return result;
        }

        private string LocateProduct(string path)
        {
            string[] files = Directory.GetFiles(path);
            foreach (string file in files)
            {
                if (Path.HasExtension(file))
                {
                    string ext = Path.GetExtension(file);
                    if (m_forceLib && ext.Equals(".dll"))
                    {
                        return Path.Combine(path, file);
                    }
                    else if (!m_forceLib && ext.Equals(".exe"))
                    {
                        return Path.Combine(path, file);
                    }
                    else
                    {
                        //not relevant
                    }
                }
            }
            return string.Empty;
        }

        private int Execute (string cmd)
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
            Console.WriteLine(output);
            return exitCode;
        }

        private string SetupCmd(out string outputPath)
        {
            string cmd = string.Empty;
            outputPath = string.Empty;
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

                    outputPath = outpath;

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
            path = string.Concat(path.Split(new[] { '"' }));
            if (path.Contains(" "))
                path = '"' + path + '"';
            return path;
        }
    }
}
