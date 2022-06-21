using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Web.Security;
using System.Security.Cryptography;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Configuration;
using System.Web.UI.WebControls;

namespace STUDENT
{
    public partial class login_CSBS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Session.Abandon();
                Session["LName"] = "";
            }
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SqlConnection server = new SqlConnection("Data Source=SQL5105.site4now.net;initial catalog=db_a3e957_njdynamic003;User ID=db_a3e957_njdynamic003_admin;Password=VnrVjiet@1234");
            try
            {
                server.Open();
                SqlCommand cmd = new SqlCommand("select * from Users_CSBS where Username=@emailid and Password=@password", server);
                cmd.Parameters.AddWithValue("@emailid", txtemail.Text);
                cmd.Parameters.AddWithValue("@password", FormsAuthentication.HashPasswordForStoringInConfigFile(txtpwd.Text, "SHA1"));
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["LName"] = dr["Name"].ToString();
                    Session["time"] = System.DateTime.Now.ToShortTimeString();
                    if (dr["Roll"].ToString() == "Student")
                    {
                        Response.Redirect("StudentHome_CSBS.aspx");
                    }
                    if (dr["Roll"].ToString() == "Teacher")
                    {
                        Response.Redirect("TeacherHome_CSBS.aspx");
                    }
                    else
                    {
                        Response.Redirect("home.aspx");
                    }

                }
                else
                {
                    Response.Write("Username or pwd is Invalid!");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                server.Close();
            }

        }
    }
}