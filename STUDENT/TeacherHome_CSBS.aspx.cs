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
    public partial class TeacherHome_CSBS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                filldata();
            }

        }
        void filldata()
        {
            using (SqlConnection con = new SqlConnection("Data Source=SQL5105.site4now.net;initial catalog=db_a3e957_njdynamic003;User ID=db_a3e957_njdynamic003_admin;Password=VnrVjiet@1234"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter("select * from Library_CSBS", con))
                {
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
        }

        protected void Insert(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtBookid.Text))
            {
                Response.Write("Please Enter BookID");
            }
            else
            {
                SqlConnection server = new SqlConnection("Data Source=SQL5105.site4now.net;initial catalog=db_a3e957_njdynamic003;User ID=db_a3e957_njdynamic003_admin;Password=VnrVjiet@1234");
                try
                {
                    server.Open();
                    SqlCommand cmd = new SqlCommand("insert into Library_CSBS values(@BId,@BNAME,@AUTHOR,@PRICE,@RNO)", server);
                    cmd.Parameters.AddWithValue("@BID", txtBookid.Text);
                    cmd.Parameters.AddWithValue("@BNAME", txtBname.Text);
                    cmd.Parameters.AddWithValue("@AUTHOR", txtAuthor.Text);
                    cmd.Parameters.AddWithValue("@PRICE", txtPrice.Text);
                    cmd.Parameters.AddWithValue("@RNO", txtRno.Text);
                    int x = cmd.ExecuteNonQuery();
                    txtRno.Text = "";
                    txtBname.Text = "";
                    txtAuthor.Text = "";
                    txtBookid.Text = "";
                    txtPrice.Text = "";
                    this.filldata();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection server = new SqlConnection("Data Source=SQL5105.site4now.net;initial catalog=db_a3e957_njdynamic003;User ID=db_a3e957_njdynamic003_admin;Password=VnrVjiet@1234");
            try
            {
                server.Open();
                SqlCommand cmd = new SqlCommand("Update Library_CSBS set Bookid=@BID1,Bname=@BNAME,Author=@AUTHOR,Price=@PRICE,Rackno=@RNO where Bookid=@BID1", server);
                cmd.Parameters.AddWithValue("@BID1", txtId.Text);
                cmd.Parameters.AddWithValue("@BNAME", txtName.Text);
                cmd.Parameters.AddWithValue("@AUTHOR", txtA.Text);
                cmd.Parameters.AddWithValue("@PRICE", TxtP.Text);
                cmd.Parameters.AddWithValue("@RNO", txtR.Text);
                int x = cmd.ExecuteNonQuery();
                txtId.Text = "";
                txtName.Text = "";
                txtA.Text = "";
                txtR.Text = "";
                TxtP.Text = "";
                this.filldata();
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection server = new SqlConnection("Data Source=SQL5105.site4now.net;initial catalog=db_a3e957_njdynamic003;User ID=db_a3e957_njdynamic003_admin;Password=VnrVjiet@1234");
            try
            {
                server.Open();
                SqlCommand cmd = new SqlCommand("DELETE from Library_CSBS where Bookid=@BID2", server);
                cmd.Parameters.AddWithValue("@BID2", txtId2.Text);
                txtId2.Text = "";
                int x = cmd.ExecuteNonQuery();
                if (x > 0)
                {
                    this.filldata();
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