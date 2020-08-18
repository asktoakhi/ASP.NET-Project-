using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["UserName"] = "";
            Session.Abandon();
            Session.RemoveAll();
            Session.Clear();
            Response.Redirect("Login.aspx", false);
        }
    }
}