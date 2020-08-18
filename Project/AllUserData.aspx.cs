using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class AllUserData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection("Data Source=asktoakhi.database.windows.net;Initial Catalog=asktoakhi;UID=asktoakhi;pwd=@K#!le47;Max Pool Size=100000;");
            SqlConnection con = new SqlConnection("Data Source=.;database=jaspreet;integrated security=SSPI;");
            SqlCommand cmd;
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            try
            {
                con.Open();
                string Query = "SELECT * FROM jaspreet";
                cmd = new SqlCommand(Query, con);
                da.SelectCommand = cmd;
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    GridAllUser.DataSource = dt;
                    GridAllUser.DataBind();
                }
                else
                {
                    Response.Write("<Script>alert('No Record Found.');</Script>");
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