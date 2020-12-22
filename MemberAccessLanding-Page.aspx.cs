using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace uMeet
{
    public partial class MemberAccessLanding_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["loggedon"] == null)
            {
                Response.Redirect("UserLogin.aspx");
            }
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            try
            {
                if (maddlist.SelectedItem.Value == "1")
                {
                    Response.Redirect("MemPageFemale.aspx");
                }
                else
                {
                    Response.Redirect("MemPageMale.aspx");
                }
            }
            catch(Exception ex)
            {
                throw ex;
            }
            
           
        }
    }
}