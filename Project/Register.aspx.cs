using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if(chkMusic.Checked == false && chkDancing.Checked == false && chkTravelling.Checked == false)
            {
                Response.Write("<Script>alert('Please Select At least One Hobby.');</Script>");
                return;
            }
            else
            {
                string ImagePath = "", ImageName = "";
                //SqlConnection con = new SqlConnection("Data Source=asktoakhi.database.windows.net;Initial Catalog=asktoakhi;UID=asktoakhi;pwd=@K#!le47;Max Pool Size=100000;");
                SqlConnection con = new SqlConnection("Data Source=.;database=jaspreet;integrated security=SSPI;");
                SqlCommand cmd;
                try
                {
                    con.Open();
                    var Hobbies = "";
                    if (chkMusic.Checked)
                    {
                        Hobbies = chkMusic.Text + ",";
                    }
                    if (chkDancing.Checked)
                    {
                        Hobbies += chkDancing.Text + ",";
                    }
                    if (chkTravelling.Checked)
                    {
                        Hobbies += chkTravelling.Text;
                    }

                    if (fileImage.HasFile)
                    {
                        string str = DateTime.Now.ToString("yyyy-MM-dd-HH-mm-ss") + "_" + fileImage.FileName;
                        fileImage.PostedFile.SaveAs(Server.MapPath("~/UploadImage/" + str));
                        ImagePath = "~/UploadImage/" + str.ToString();
                        ImageName = str;
                    }

                    string Query = "INSERT INTO jaspreet(UserName, EmailId, PhoneNo, UserPass , Gender , Hobbies, City ,ImageName , ImagePath)" +
                        "VALUES('" + txtUserName.Text + "','" + txtEmailId.Text + "','" + txtPhoneNo.Text + "','" + txtPassword.Text + "','" + rdGender.SelectedValue.ToString() + "','" + Hobbies + "','" + ddlCity.SelectedValue.ToString() + "','" + ImageName + "','" + ImagePath + "')";

                    cmd = new SqlCommand(Query, con);
                    int res = cmd.ExecuteNonQuery();
                    if (res > 0)
                    {
                        Response.Redirect("Login.aspx", false);
                    }
                    else
                    {
                        Response.Write("<Script>alert('Please Try again Later.');</Script>");
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
}