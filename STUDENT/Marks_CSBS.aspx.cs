using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace STUDENT
{
    public partial class Marks_CSBS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            SqlConnection server = new SqlConnection("Data Source=LAPTOP-RBEAG814;initial catalog=DB_VNR;Integrated security=true");
            try
            {
                server.Open();
                SqlCommand cmd = new SqlCommand("select * from Student_Marks where Roll=@Roll", server);
                cmd.Parameters.AddWithValue("@Roll", txtRoll.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                grid1.DataSource = ds;
                grid1.DataBind();
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

        protected void Submit_Click1(object sender, EventArgs e)
        {
            SqlConnection server = new SqlConnection("Data Source=SQL5105.site4now.net;initial catalog=db_a3e957_njdynamic003;User ID=db_a3e957_njdynamic003_admin;Password=VnrVjiet@1234");
            try
            {
                server.Open();
                SqlCommand cmd = new SqlCommand("select * from Student_MarksCSBS where Roll=@Roll", server);
                cmd.Parameters.AddWithValue("@Roll", txtRoll.Text);
                SqlDataAdapter da = new SqlDataAdapter();
                DataTable dt = new DataTable();
                da.SelectCommand = cmd;
                da.Fill(dt);
                txtRoll.Text = "";
                if (dt.Rows.Count == 0)
                {

                    lbl.Text = "Student data Not Found";
                    grid1.DataSource = dt;
                    grid1.DataBind();

                }
                else if (dt.Rows.Count > 0)
                {
                    lbl.Text = "";
                    grid1.DataSource = dt;
                    grid1.DataBind();
                }
                else
                {
                    Response.Write("No Data");
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