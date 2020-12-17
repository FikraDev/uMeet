using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace uMeet
{
    public partial class UserLogin : System.Web.UI.Page
    {
        String str = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
        SqlConnection conn = new SqlConnection();
        Message msg = new Message();
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.ConnectionString = str;
            lblErrorMsg.Visible = true;

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("select * from tblUserLogin where UserName=@UserName and Passwrd=@Passwrd", conn);
                cmd.Parameters.AddWithValue("@UserName", txtInput.Text);
                cmd.Parameters.AddWithValue("@Passwrd", txtInputP.Text);

                SqlDataAdapter adpt = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                adpt.Fill(dt);
                conn.Open();

                int a = cmd.ExecuteNonQuery();
                conn.Close();

                if (dt.Rows.Count > 0)
                {
                    SqlDataReader dr;
                    WebSiteLibrary lib = new WebSiteLibrary();

                    string getMember = @"select MemberId, fName, lName,UserName from tblMembers inner join tblUserLogin on tblUserLogin.UserName=tblMembers.MemberId";

                    Session["loggedon"] = "yes";
                    dr = lib.SearchSite(getMember);

                    if (dr.Read() == true)
                    {
                        Session["UserName"] = dr["UserName"].ToString();
                        Session["fName"] = dr["fName"].ToString();
                        Session["lName"] = dr["lName"].ToString();
                        Response.Redirect("indexPage.aspx");
                    }
                }
                else
                {
                    lblErrorMsg.Text = "Your Username/Password is incorrect";
                    lblErrorMsg.ForeColor = System.Drawing.Color.Red;
                    lblErrorMsg.Visible = true;
                }


            }
            catch (Exception ex)
            {
                throw ex;
            }



        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtInput.Text = " ";
            txtInputP.Text = " ";

        }
    }
}