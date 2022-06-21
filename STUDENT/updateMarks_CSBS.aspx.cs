using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace STUDENT
{
    public partial class updateMarks_CSBS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { 

        }
        protected void btnsave_Click(object sender, EventArgs e)
        {
            SqlConnection server = new SqlConnection("Data Source=SQL5105.site4now.net;initial catalog=db_a3e957_njdynamic003;User ID=db_a3e957_njdynamic003_admin;Password=VnrVjiet@1234");
            try
            {
                server.Open();
                SqlCommand cmd = new SqlCommand("Update Student_MarksCSBS set Roll=@ROLL1,Branch=@BRANCH,Java=@JAVA,Python=@PYTHON,CPP=@CPP,DBMS=@DBMS where Roll=@Roll1", server);
                cmd.Parameters.AddWithValue("@ROLL1", txtRoll.Text);
                cmd.Parameters.AddWithValue("@BRANCH", Branch.Text);
                cmd.Parameters.AddWithValue("@JAVA", txtJava.Text);
                cmd.Parameters.AddWithValue("@PYTHON", txtPython.Text);
                cmd.Parameters.AddWithValue("@CPP", txtcpp.Text);
                cmd.Parameters.AddWithValue("@DBMS", txtDbms.Text);
                int x = cmd.ExecuteNonQuery();
                if (x > 0)
                {
                    Response.Redirect("ViewMarks_CSBS.aspx");

                }
                else
                {
                    Response.Write("Something Went Wrong!");
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