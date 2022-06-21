using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace STUDENT
{
    public partial class addStudent_CSBS : System.Web.UI.Page
    {
        protected void btnsave_Click(object sender, EventArgs e)
        {

            SqlConnection server = new SqlConnection("Data Source=SQL5105.site4now.net;initial catalog=db_a3e957_njdynamic003;User ID=db_a3e957_njdynamic003_admin;Password=VnrVjiet@1234");
            try
            {
                server.Open();
                SqlCommand cmd = new SqlCommand("Insert into Student_MarksCSBS values(@ROLL,@BRANCH,@JAVA,@PYTHON,@CPP,@DBMS)", server);
                cmd.Parameters.AddWithValue("@ROLL", txtRoll.Text);
                cmd.Parameters.AddWithValue("@BRANCH", Branch.Text);
                cmd.Parameters.AddWithValue("@JAVA", txtJava.Text);
                cmd.Parameters.AddWithValue("@PYTHON", txtPython.Text);
                cmd.Parameters.AddWithValue("@CPP", txtcpp.Text);
                cmd.Parameters.AddWithValue("@DBMS", txtDbms.Text);
                int x = cmd.ExecuteNonQuery();
                if (x > 0)
                {
                    Response.Redirect("addStudent_CSBS.aspx");
                    Response.Write("Added Succefully");
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