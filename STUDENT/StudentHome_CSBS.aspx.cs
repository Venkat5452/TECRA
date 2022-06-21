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
    public partial class StudentHome_CSBS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                refreshdata();
            }
        }
        void refreshdata()
        {
            SqlConnection server = new SqlConnection("Data Source=SQL5105.site4now.net;initial catalog=db_a3e957_njdynamic003;User ID=db_a3e957_njdynamic003_admin;Password=VnrVjiet@1234");
            try
            {
                server.Open();
                SqlCommand cmd = new SqlCommand("select * from Library_CSBS", server);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
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