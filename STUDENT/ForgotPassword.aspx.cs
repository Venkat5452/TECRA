using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

namespace STUDENT
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            panlogin.Visible = true;
            PanOTP.Visible = false;
            panpass.Visible = false;
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SqlConnection server = new SqlConnection("Data Source=LAPTOP-RBEAG814;initial catalog=DB_VNR;Integrated security=true");
            try
            {
                server.Open();
                SqlCommand cmd = new SqlCommand("select Username from VNR_DATA where Username=@EmailID ", server);
                ViewState["Email"] = txtemail.Text;
                string s = txtemail.Text;
                cmd.Parameters.AddWithValue("@EmailID", ViewState["Email"]);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {

                    Random rand = new Random();
                    ViewState["OTP"] = rand.Next(1111, 9999).ToString();
                    bool chk=SendEmail();
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
                obj.Subject = "OTP for Login";
                obj.Body = "your OTP is:" + ViewState["OTP"];

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
            SqlConnection server = new SqlConnection("Data Source=LAPTOP-RBEAG814;initial catalog=DB_VNR;Integrated security=true");
            try
            {
                server.Open();
                SqlCommand cmd = new SqlCommand("Update VNR_DATA set Password=@password where Username=@emailid", server);
                cmd.Parameters.AddWithValue("@password", txtpwd.Text);
                cmd.Parameters.AddWithValue("@emailid", ViewState["Email"]);
                int x = cmd.ExecuteNonQuery();
                if (x > 0)
                {
                    Response.Redirect("Login1_CSBS.aspx");
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