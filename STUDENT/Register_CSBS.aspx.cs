using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.Web.Security;
using System.Net.Mail;
namespace STUDENT
{
    public partial class Register_CSBS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            VOTP.Visible = false;
            reg.Visible = true;
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            SqlConnection server = new SqlConnection("Data Source=SQL5105.site4now.net;initial catalog=db_a3e957_njdynamic003;User ID=db_a3e957_njdynamic003_admin;Password=VnrVjiet@1234");
            try
            {
                server.Open();
                SqlCommand cmd = new SqlCommand("select * from Users_CSBS where Email=@Email1", server);
                cmd.Parameters.AddWithValue("@Email1", txtemail.Text);
                SqlDataAdapter da = new SqlDataAdapter();
                DataTable dt = new DataTable();
                da.SelectCommand = cmd;
                da.Fill(dt);
                if (dt.Rows.Count == 0)
                {
                    lbl1.Text = "";
                    SqlCommand c = new SqlCommand("select * from Users_CSBS where Username=@user1", server);
                    c.Parameters.AddWithValue("@user1", txtUsername.Text);
                    SqlDataAdapter d = new SqlDataAdapter();
                    DataTable dt2 = new DataTable();
                    d.SelectCommand = c;
                    d.Fill(dt2);
                    if (dt2.Rows.Count == 0)
                    {
                        Random rand = new Random();
                        ViewState["OTP"] = rand.Next(1111, 9999).ToString();
                        ViewState["Email"] = txtemail.Text;
                        ViewState["Name"] = txtName.Text;
                        ViewState["p"] = txtpwd.Text;
                        bool chk = SendEmail();
                        if (chk == true)
                        {
                            reg.Visible = false;
                            VOTP.Visible = true;
                        }
                    }
                    else
                    {
                        txtUsername.Text = "";
                        lbl1.Text = "Username already used Please Use Another";
                    }
                }
                else
                {
                    txtemail.Text = "";
                    lbl1.Text = "Email Already Registered Please use another one";
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
        public bool SendEmail()
        {
            bool check = false;
            try
            {
                MailMessage obj = new MailMessage();
                obj.From = new MailAddress("venkatsai.bandi2019@gmail.com");
                obj.To.Add(ViewState["Email"].ToString());
                obj.IsBodyHtml = true;
                obj.Subject = "CONFIRM EMAIL FOR REGISTRATION- TEAM VNR-VJIET";
                obj.Body = "Your OTP For Registration : " + ViewState["OTP"];
                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                smtp.Credentials = new NetworkCredential("venkatsai.bandi2019@gmail.com", "hwwzgcvvgeszzwzg");
                smtp.EnableSsl = true;
                smtp.Send(obj);
                check = true;
            }
            catch (Exception)
            {

                throw;
            }
            return check;
        }

        protected void btnlogin1_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtOTP.Text))
            {
                reg.Visible = false;
                VOTP.Visible = true;
                lbl.Text = "please Enter OTP";
            }
            if (txtOTP.Text.Equals(ViewState["OTP"]))
            {
                SqlConnection server = new SqlConnection("Data Source=SQL5105.site4now.net;initial catalog=db_a3e957_njdynamic003;User ID=db_a3e957_njdynamic003_admin;Password=VnrVjiet@1234");
                try
                {
                    server.Open();
                    SqlCommand cmd = new SqlCommand("insert into Users_CSBS values(@Username,@Name,@emailid,@password,@role,@gender,@department)", server);
                cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@emailid", txtemail.Text);
                cmd.Parameters.AddWithValue("@password",FormsAuthentication.HashPasswordForStoringInConfigFile(ViewState["p"].ToString(), "SHA1"));
                cmd.Parameters.AddWithValue("@gender", rdgender.SelectedValue);
                cmd.Parameters.AddWithValue("@department", dddldept.SelectedValue);
                cmd.Parameters.AddWithValue("@role", ddlrole.SelectedValue);
                int x = cmd.ExecuteNonQuery();
                if ( x >0)
                    {

                        SendEmail2();
                        Response.Redirect("login_CSBS.aspx");
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
            else
            {
                reg.Visible = false;
                VOTP.Visible = true;
                lbl.Text = "INVALID OTP";
            }
        }
        public void SendEmail2()
        {
            try
            {
                MailMessage obj = new MailMessage();
                obj.From = new MailAddress("venkatsai.bandi2019@gmail.com");
                obj.To.Add(ViewState["Email"].ToString());
                obj.IsBodyHtml = true;
                obj.Subject = "Congratulations...You had been Succesfully Registered-TEAM VNRVJIET";
                obj.Body = "Thank You.. " + ViewState["Name"] + " Have a GREAT DAY ";
                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                smtp.Credentials = new NetworkCredential("venkatsai.bandi2019@gmail.com", "hwwzgcvvgeszzwzg");
                smtp.EnableSsl = true;
                smtp.Send(obj); 
            }
            catch (Exception)
            {

                throw;
            }
        }


    }
}