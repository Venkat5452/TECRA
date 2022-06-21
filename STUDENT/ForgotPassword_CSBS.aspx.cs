using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Web.Security;

namespace STUDENT
{
    public partial class ForgotPassword_CSBS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            panlogin.Visible = true;
            PanOTP.Visible = false;
            panpass.Visible = false;
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SqlConnection server = new SqlConnection("Data Source=SQL5105.site4now.net;initial catalog=db_a3e957_njdynamic003;User ID=db_a3e957_njdynamic003_admin;Password=VnrVjiet@1234");
            try
            {
                server.Open();
                SqlCommand cmd = new SqlCommand("select Username from Users_CSBS where Email=@EmailID ", server);
                ViewState["Email"] = txtemail.Text;
                string s = txtemail.Text;
                cmd.Parameters.AddWithValue("@EmailID", ViewState["Email"]);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Random rand = new Random();
                    ViewState["OTP"] = rand.Next(1111, 9999).ToString();
                    bool chk = SendEmail();
                    if (chk == true)
                    {
                        panlogin.Visible = false;
                        PanOTP.Visible = true;
                    }
                }
                else
                {
                    lblerror.Text = "EmailID Dosnt Exists!";
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
                obj.Subject = "UPDATE PASSWORD EMAIL CONFIRMATION - TEAM VNR-VJIET  ";
                obj.Body = "your OTP For Confirmation in EMAIL ID for password UPDATION is : " + ViewState["OTP"];

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
            {
                if (String.IsNullOrEmpty(txtOTP.Text))
                {
                    panlogin.Visible = false;
                    PanOTP.Visible = true;
                    lbl.Text = "please Enter OTP";
                }
                if (txtOTP.Text.Equals(ViewState["OTP"]))
                {

                    panlogin.Visible = false;
                    PanOTP.Visible = false;
                    panpass.Visible = true;
                }
                else
                {
                    panlogin.Visible = false;
                    PanOTP.Visible = true;
                    lbl.Text = "Otp is Not Correct!";
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection server = new SqlConnection("Data Source=SQL5105.site4now.net;initial catalog=db_a3e957_njdynamic003;User ID=db_a3e957_njdynamic003_admin;Password=VnrVjiet@1234");
            try
            {
                server.Open();
                SqlCommand cmd = new SqlCommand("Update Users_CSBS set Password=@password where Email=@emailid", server);
                cmd.Parameters.AddWithValue("@password", FormsAuthentication.HashPasswordForStoringInConfigFile(txtpwd.Text, "SHA1"));
                cmd.Parameters.AddWithValue("@emailid", ViewState["Email"]);
                int x = cmd.ExecuteNonQuery();
                if (x > 0)
                {
                    SendEmail2();
                    Response.Redirect("login_CSBS.aspx");
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
        public void SendEmail2()
        {
            try
            {
                MailMessage obj = new MailMessage();
                obj.From = new MailAddress("venkatsai.bandi2019@gmail.com");
                obj.To.Add(ViewState["Email"].ToString());
                obj.IsBodyHtml = true;
                obj.Subject = "Change in password Confirmation - Team VNRVJIET";
                obj.Body = " Your password has been successfully Updated ..Thank You.. " + ViewState["Name"] +" Have a GREAT DAY...";
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