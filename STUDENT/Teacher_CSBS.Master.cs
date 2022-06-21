using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STUDENT
{
    public partial class Teacher_CSBS : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["LName"] == null)
                {
                    Response.Redirect("login_CSBS.aspx");
                }
            }

        }
        protected void log_out(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login_CSBS.aspx");
        }
    }
}