using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace uMeet
{
    public class Message
    {
        public void uMsg(string valx)
        {
            HttpContext.Current.Response.Write("<script>'" + valx + "'</script>");
        }
    }
}