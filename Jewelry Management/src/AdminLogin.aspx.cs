using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JMS
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Submit(object sender, EventArgs e)
        {
            if (Txtadmin.Text == "admin119@gmail.com" && Txtpass.Text == "Admin@1234")
            {
                Session["Adminname"] = "WELCOME" + Txtadmin.Text;
                Response.Redirect("~/AdminModifyDeletePage.aspx");
            }
            else
            {
               
            }
        }
    }
}