using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo1
{
    public partial class HistPandL : System.Web.UI.Page
    {
        public string a;
        protected void Page_Load(object sender, EventArgs e)
        {
            a = "2";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("tr.aspx");
        }
    }
}