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
    public partial class EditProfile : System.Web.UI.Page
    {
        //using the connection string from the configuration section of web.config
        String dbConString = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;

        SqlConnection conn = new SqlConnection();
        Message msg = new Message(); //create an instance of the Message Class

        bool check = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["loggedon"] == null)
            //{
            //    Response.Redirect("UserLogin.aspx");
            //}



            if (IsPostBack == false && check == false)
            {
                try
                {
                    string sql = "select * from tblMembers where MemberId = '" + txtUsername.Text + "'";
                    SqlDataReader sdr;
                    WebSiteLibrary lib = new WebSiteLibrary();
                    sdr = lib.SearchSite(sql);
                    sdr.Read();

                    sdr.Close();
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }



        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            lblErrorMsg.Visible = false;
            string[] member;

            WebSiteLibrary lib = new WebSiteLibrary();

            try
            {
                String strImage = ""; //store name of image
                String photoFolder = Server.MapPath("MemberImages/"); //root folder of the photo folder
                if (fileupload.HasFile)
                {
                    String ext = Path.GetExtension(fileupload.FileName); //get extension of uploaded file

                    //checking to ensure only jpg or png is accepted
                    if (ext == ".jpg" || ext == ".png" || ext == ".JPG" || ext == ".PNG")
                    {
                        fileupload.SaveAs(photoFolder + fileupload.FileName);
                        strImage = "MemberImages/" + fileupload.FileName;
                    }
                    else
                    {
                        //tell user that only jpg or png is needed
                        msg.uMsg("Only jpg or png is accepted");
                    }
                }

                if (txtUsername.Text == "")
                {
                    lblErrorMsg.Visible = true;
                    lblErrorMsg.Text = "Please enter your username to update your profile";
                }
                else
                {
                    member = new string[10];
                    member[0] = txtUsername.Text; //store username in array index 0
                    member[1] = txtFname.Text; //store the firstname in array index 1
                    member[2] = txtLname.Text; //store the lastname in array index 2
                    member[3] = txtAddress.Text; //store the address in array index 3
                    member[4] = txtEmail.Text; //store the email in array index 4
                    member[5] = txtPhone.Text; //store the phone in array index 5
                    member[6] = txtDOB.Text; //store the date of birth in array index 6
                    member[7] = drpList.Text; //store the gender in array index 7
                    member[8] = strImage; //store the image in array index 8


                    if (chkbx.Checked == true)
                    {
                        member[9] = "A";
                    }
                    else
                    {
                        member[9] = "I";
                    }


                    //send array info to the update method in our class file and store return boolean message

                    bool check;
                    check = lib.spUpdateMembers(member, "spUpdateMembers"); //method return true or false

                    if (check == false)
                    {
                        lblErrorMsg.Text = "Update Failed";
                        lblErrorMsg.ForeColor = System.Drawing.Color.Red;
                        lblErrorMsg.Visible = true;
                    }
                    else
                    {
                        lblErrorMsg.Text = "Update Successful";
                        lblErrorMsg.ForeColor = System.Drawing.Color.Blue;
                        lblErrorMsg.Visible = true;
                    }


                    //clear text field
                    txtUsername.Text = ""; //clear Name textbox
                    txtFname.Text = ""; //clear firstname textbox
                    txtLname.Text = ""; //clear lastname textbox
                    txtAddress.Text = ""; //clear address textbox
                    txtEmail.Text = ""; //clear email textbox
                    txtPhone.Text = ""; //clear phone textbox
                    txtDOB.Text = ""; //clear date of birth textbox
                    drpList.Items.Clear(); //clear gender drop down list
                    fileupload.ID = null; //clear file upload
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



        protected void btnDelCancel_Click(object sender, EventArgs e)
        {
            txtUsrName.Text = "";
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            lblErrMsg.Visible = false;
            //create an array to store values to be sent to the website database file
            string[] member = new string[2];

            WebSiteLibrary lib = new WebSiteLibrary();
            try
            {
                if (txtUsrName.Text == "")
                {
                    lblErrMsg.Text = "Please enter username to delete your profile";
                    lblErrMsg.ForeColor = System.Drawing.Color.Red;
                    lblErrMsg.Visible = true;
                }
                else
                {
                    member[0] = txtUsrName.Text;
                    member[1] = txtUsrName.Text;



                    //send array info to the update method in our class file and store return boolean message

                    bool check;
                    check = lib.spDeleteProfile(member, "spDeleteProfile"); //method return true or false


                    if (check == false)
                    {
                        lblErrMsg.Text = "Delete Failed";
                        lblErrMsg.ForeColor = System.Drawing.Color.Red;
                        lblErrMsg.Visible = true;
                    }
                    else
                    {
                        lblErrMsg.Text = "Delete Successful";
                        lblErrMsg.ForeColor = System.Drawing.Color.Blue;
                        lblErrMsg.Visible = true;
                        txtUsrName.Text = "";

                        //2. reload from database
                        String sql = "select * from tblMembers where MemberId = '" + txtUsrName.Text + "'";
                        SqlDataReader sdr;
                        sdr = lib.SearchSite(sql);
                        sdr.Read();

                        sdr.Close();

                        //3. Clear the fields
                        txtUsrName.Text = "";


                    }

                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
    
}