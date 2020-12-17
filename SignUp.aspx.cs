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
    public partial class SignUp : System.Web.UI.Page
    {
        String str = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
        SqlConnection conn = new SqlConnection();
        Message msg = new Message();

        protected void Page_Load(object sender, EventArgs e)
        {
            //lblErrorMsg.Visible = true;
            //if (Session["logged on"] == null)
            //{
            //    Response.Redirect("UserLogin.aspx");
            //}
            //conn.ConnectionString = str;
            //conn.Open();

        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            try
            {
                //file upload
                String strImage = ""; //stores name of images
                String photoFolder = Server.MapPath("MemberImages/"); //creates root folder for storing images

                if (fileupload.HasFile)
                {
                    String ful = Path.GetExtension(fileupload.FileName);

                    if (ful == ".jpg" || ful == ".png" || ful == ".JPG" || ful == ".PNG")
                    {
                        fileupload.SaveAs(photoFolder + fileupload.FileName);
                        strImage = "MemberImages/" + fileupload.FileName;
                    }
                    else
                    {
                        msg.uMsg("Incorrect File Type! Only .jpg or .png is accepted");
                    }

                }

                char chkValue;

                if (chkbx.Checked == true)
                {
                    chkValue = 'A';
                }
                else
                {
                    chkValue = 'I';
                }

                String qr = "insert into tblMembers(MemberId,fName,lName,Address,Email,Phone,DOB,Gender,Photo,Status) values('" + txtUsername.Text + "','" + txtFname.Text + "','" + txtLname.Text + "','" + txtAddress.Text + "','" + txtEmail.Text + "', '" + txtPhone.Text + "', '" + Convert.ToDateTime(txtDOB.Text) + "','" + drpList.SelectedItem.Value + "','" + strImage + "','" + chkValue + "')";

                SqlCommand cmd = new SqlCommand(qr, conn);
                int r = cmd.ExecuteNonQuery();

                if (r > 0)
                {
                    String entr = "insert into tblUserLogin (UserName,Passwrd) values(@UserName,@Passwrd)";
                    SqlCommand cmd1 = new SqlCommand(entr, conn);
                    cmd1.Parameters.AddWithValue("@UserName", txtUsername.Text);
                    cmd1.Parameters.AddWithValue("@Passwrd", txtInputP.Text);

                    int a = cmd1.ExecuteNonQuery();

                    if (a > 0)
                    {
                        lblErrorMsg.Visible = true;
                        lblErrorMsg.Text = "Member Created Successfully";
                        lblErrorMsg.ForeColor = System.Drawing.Color.Blue;

                        txtUsername.Text = "";
                        txtFname.Text = "";
                        txtLname.Text = "";
                        txtAddress.Text = "";
                        txtEmail.Text = "";
                        txtPhone.Text = "";
                        txtDOB.Text = "";
                        drpList.Items.Clear();
                        fileupload.ID = null;

                    }
                    else
                    {
                        lblErrorMsg.Visible = true;
                        lblErrorMsg.Text = "Member Not Created";
                        lblErrorMsg.ForeColor = System.Drawing.Color.Red;

                    }

                }


            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtUsername.Text = "";
            txtFname.Text = "";
            txtLname.Text = "";
            txtAddress.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            txtDOB.Text = "";
            drpList.Items.Clear();
            fileupload.ID = null;
        }
    }
}