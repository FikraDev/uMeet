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
    public partial class ContactPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblErrorMsg.Visible = false;

            string[] contactArray = new string[3];

            try
            {
                contactArray[0] = txtName.Text;
                contactArray[1] = txtEmail.Text;
                contactArray[2] = txtMsg.Text;

                WebSiteLibrary lib = new WebSiteLibrary();

                bool check;

                check = lib.spAddContactMessage(contactArray, "spAddContactMessage");

                if (check == false)
                {
                    lblErrorMsg.Visible = true;
                    lblErrorMsg.Text = "Message Not Sent";
                    lblErrorMsg.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    lblErrorMsg.Visible = true;
                    lblErrorMsg.Text = "Message Sent Successfully";
                    lblErrorMsg.ForeColor = System.Drawing.Color.Blue;

                    txtName.Text = "";
                    txtEmail.Text = "";
                    txtMsg.Text = "";
                }

            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

            txtName.Text = "";
            txtMsg.Text = "";
            txtEmail.Text = "";


        }
    }
}