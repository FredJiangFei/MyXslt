using System;
using System.IO;
using System.Text;

namespace XsltTest
{
    public class FileReader
    {
        public static string ReadXslt(string fileName)
        {
            const string fileRelativePath = @"Xslts";

            var fileContent =
                File.ReadAllBytes(Path.Combine(
                    AppDomain.CurrentDomain.BaseDirectory,
                    fileRelativePath,
                    fileName));
            return Encoding.UTF8.GetString(fileContent);
        }

        public static string ReadXml(string fileName)
        {
            const string fileRelativePath = @"Data";

            var fileContent =
                File.ReadAllBytes(Path.Combine(
                    AppDomain.CurrentDomain.BaseDirectory,
                    fileRelativePath,
                    fileName));
            return Encoding.UTF8.GetString(fileContent);
        }
    }
}
