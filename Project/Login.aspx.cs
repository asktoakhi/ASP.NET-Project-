using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.;database=jaspreet;integrated security=SSPI;");
            SqlCommand cmd;
            SqlDataReader dr;
            try
            {
                con.Open();
                string Query = "SELECT UserName,UserPass FROM jaspreet WHERE UserName =  '" + txtUserName.Text + "' AND UserPass ='" + txtPassword.Text + "' ";
                cmd = new SqlCommand(Query, con);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["UserName"] = txtUserName.Text;
                    Response.Redirect("Home.aspx", false);
                }
                else
                {
                    Response.Write("<Script>alert('Invalid User Name OR Password.');</Script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<Script>alert('" + ex.Message.ToString() + "');</Script>");
            }
            finally
            {
                con.Close();
            }
        }

    }
}