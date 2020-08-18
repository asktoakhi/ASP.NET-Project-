using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                btnLogout.Visible = false;
                btnProfile.Visible = false;
                lblName.Visible = false;
               
            }
            else
            {
                btnLogout.Visible = true;
                btnProfile.Visible = true;
                lblName.Visible = true;
                lblName.Text = "Welcome : " + Session["UserName"].ToString();

                if (Session["UserName"].ToString() == "Admin" || Session["UserName"].ToString() == "admin")
                {
                    btnAllUser.Visible = true;
                }
                else
                {
                    btnAllUser.Visible = false;
                }
            }
            
        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["UserName"] = "";
            Session.Abandon();
            Session.RemoveAll();
            Session.Clear();
            Response.Redirect("Login.aspx", false);
        }

        protected void btnProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx", false);
        }

        protected void btnAllUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("AllUserData.aspx", false);
        }
    }
}