using System;
using System.IO;
using System.Xml;
using System.Xml.Xsl;

namespace XsltTest
{
    class Program
    {
        static void Main(string[] args)
        {
            var xml = FileReader.ReadXml("Test.xml");
            var xslTransform = GetXslTransform();
            using (var sr = new StringReader(xml))
            {
                using (var xr = XmlReader.Create(sr))
                {
                    using (var sw = new StringWriter())
                    {
                        xslTransform.Transform(xr, null, sw);
                        File.WriteAllText("test.xml", sw.ToString());
                    }
                }
            }
        }

        private static XslCompiledTransform GetXslTransform()
        {
            var fileData = FileReader.ReadXslt("Edi.xsl");
            var xslTransform = new XslCompiledTransform();

            using (var sr = new StringReader(fileData))
            {
                using (var xr = XmlReader.Create(sr))
                {
                    xslTransform.Load(xr);
                }
            }
            return xslTransform;
        }
    }
}
