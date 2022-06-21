<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword_CSBS.aspx.cs" Inherits="STUDENT.ForgotPassword_CSBS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .main
        {
            background-color:lightyellow;
            width: 500px;
            height: 550px;
            margin: auto;
            padding-top:20px;
            border-radius: 1.5em;
            box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
        }
         .main1
        {
            background-color:lightyellow;
            width: 500px;
            height: 600px;
            margin: auto;
            padding-top:20px;
            border-radius: 1.5em;
            box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
        }
        form.form1
        {
            padding-top: 25px;
        }
         .un
        {
            width: 76%;
            color: rgb(38, 50, 56);
            font-weight: 700;
            font-size: 14px;
            letter-spacing: 1px;
            padding: 10px 20px;
            border: none;
            border-radius: 20px;
            outline: none;
            box-sizing: border-box;
            border: 2px solid rgba(0, 0, 0, 0.02);
            margin-bottom: 50px;
            margin-left: 46px;
            text-align: center;
            margin-bottom: 27px;
            font-family: 'Ubuntu' , sans-serif;
        }
         .sign
        {
            color: ThreeDHighlight;
            font-family: 'Ubuntu' , sans-serif;
            font-weight: bold;
            font-size: 26px;
        }
         .pass
        {
            width: 76%;
            color: rgb(38, 50, 56);
            font-weight: 700;
            font-size: 14px;
            letter-spacing: 1px;
            padding: 10px 20px;
            border: none;
            border-radius: 20px;
            outline: none;
            box-sizing: border-box;
            border: 2px solid rgba(0, 0, 0, 0.02);
            margin-bottom: 50px;
            margin-left: 46px;
            text-align: center;
            margin-bottom: 27px;
            font-family: 'Ubuntu' , sans-serif;
        }
          .submit
        {
            padding-left: 25px;
            padding-right: 40px;
            padding-bottom: 10px;
            padding-top: 10px;
            font-family: 'Ubuntu' , sans-serif;
            margin-left: 35%;
            font-size: 13px;
        }
           .submit1
        {
            padding-left: 10px;
            padding-right: 40px;
            padding-bottom: 10px;
            padding-top: 10px;
            font-family: 'Ubuntu' , sans-serif;
            margin-left: 35%;
            font-size: 13px;
        }
          a
        {
            text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
            color: orangered;
            text-decoration: none;
        }
         #btnlogin,#btnlogin1,#Button1{
               background-color: #4CAF50;
             color: white;
             padding: 10px 15px;
             text-align: center;
             text-decoration: none;
             font-size: 16px;
             cursor: pointer;
             border-radius:10px;
         }
         #Image1 ,#Image2,#Image3{
           width: 40%;
           border-radius: 50%;
           height:250px;
           width:250px;
         }
         .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
         }
         #lblerror{
             color:red;
         }
    </style>
</head>
<body style="background-color:aliceblue">
    <form id="form1" runat="server">
        <div style="display:flex;flex-wrap:nowrap;justify-content:space-between">
            <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<lottie-player src="https://assets1.lottiefiles.com/packages/lf20_mdyrjbcc.json"  background="transparent"  speed="1"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>
          <p style="color:red;font-size:30px;text-align:center">WELCOME  TO  VNR  PORTAL</p>
            <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<lottie-player src="https://assets1.lottiefiles.com/packages/lf20_mdyrjbcc.json"  background="transparent"  speed="1"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>
            </div>
        <asp:Panel ID="panlogin" runat="server">
            <div class="main">
        <p class="sign" align="center">Enter Your Email ID</p>
                <div class="imgcontainer">
           <asp:Image ID="Image1" runat="server" src="img.png/img_avatar2.png" />
       </div>
        <asp:TextBox ID="txtemail" runat="server" CssClass="un" align="center" placeholder="Username"></asp:TextBox>
                <br />
                <div style="padding-left:150px;padding-bottom:2px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail"
                    ErrorMessage="  Please Enter EmailID " ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                <asp:RegularExpressionValidator ID="regu" runat="server" ControlToValidate="txtemail"
                    ErrorMessage="Plz Enter Correct Email Format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                   </div>
                    <a class="submit1" align="center">
            <asp:Button ID="btnlogin" BackColor="Green" BorderStyle="Double" runat="server" Text="Request OTP" OnClick="btnlogin_Click"/></a>
                <p class="forgot" align="center">
                <asp:Label ID="lblerror" runat="server"></asp:Label></p>
        </div>
         </asp:Panel>
        <asp:Panel ID="PanOTP" runat="server">
            <div class="main">
        <p class="sign" align="center">ENTER OTP</p>
                <div class="imgcontainer">
           <asp:Image ID="Image2" runat="server" src="img.png/img_avatar2.png" />
       </div>
        <asp:TextBox ID="txtOTP" runat="server" CssClass="un" align="center" placeholder="Enter OTP"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtOTP"
                    ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <div style="text-align:center;color:red;padding-bottom:10px">
       <asp:Label runat="server" ID="lbl"></asp:Label>
                </div>
        <a class="submit" align="center">
            <asp:Button ID="btnlogin1" BackColor="Green" BorderStyle="Double" runat="server" Text="Validate" OnClick="btnlogin1_Click"/></a>
        </div>
         </asp:Panel>
        <asp:Panel ID="panpass" runat="server">
            <div class="main1">
        <p class="sign" align="center">Setup New Password Here..</p>
                <div class="imgcontainer">
           <asp:Image ID="Image3" runat="server" src="img.png/img_avatar2.png" />
       </div>
        <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" CssClass="pass" align="center" placeholder="New Password"></asp:TextBox>
                <br />
                <div style="padding-left:150px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpwd"
                    ErrorMessage="Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpwd"
                    ErrorMessage="Minimum 8 characters at least 1 Alphabet and 1 Number and 1 special charecter" ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,15}$"></asp:RegularExpressionValidator>
               </div>
                    <asp:TextBox ID="txtcpwd" runat="server" TextMode="Password" CssClass="pass" align="center" placeholder="Confirm Password"></asp:TextBox>
                <br />
                <div style="padding-left:150px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcpwd"
                    ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="com" runat="server" ControlToValidate="txtcpwd" ErrorMessage="Password is Not Correct"
                    ForeColor="Red" ControlToCompare="txtpwd"></asp:CompareValidator>
                    </div>
        <a class="submit" align="center">
            <asp:Button ID="Button1" BackColor="Green" BorderStyle="Double" runat="server" Text="Submit" OnClick="Button1_Click"  /></a>
    </div>
        </asp:Panel>
    </form>
</body>
</html>

