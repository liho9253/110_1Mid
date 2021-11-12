using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _110_1Mid {
    public partial class Sample1Com : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            String temp = "";
            temp += Request.Form.Get("tb_Id") + "<br/>";
            temp += Request.Form.Get("tb_Ps") + "<br/>";
            if(Request.Form.Get("cl_Inter$0") != null)
                temp += Request.Form.Get("cl_Inter$0") + "<br/>";
            if (Request.Form.Get("cl_Inter$1") != null)
                temp += Request.Form.Get("cl_Inter$1") + "<br/>";
            if (Request.Form.Get("cl_Inter$2") != null)
                temp += Request.Form.Get("cl_Inter$2") + "<br/>";
            temp += Request.Form.Get("tb_Num") + "<br/>";
            temp += Request.Form.Get("hd_Num") + "<br/>";
            temp += mt_2MD5(Request.Form.Get("tb_Num")) + "<br/>";

            lb_Msg.Text = temp;
        }

        // To convert a plain-text string into a md5 string
        public string mt_2MD5(string s_Str) {
            System.Security.Cryptography.MD5 cryptoMD5 = System.Security.Cryptography.MD5.Create();
            byte[] ba_Bytes = System.Text.Encoding.UTF8.GetBytes(s_Str);
            byte[] ba_Hash = cryptoMD5.ComputeHash(ba_Bytes);

            string s_Md5 = BitConverter.ToString(ba_Hash)
                .Replace("-", String.Empty)
                .ToUpper();
            return s_Md5;
        }
    }
}