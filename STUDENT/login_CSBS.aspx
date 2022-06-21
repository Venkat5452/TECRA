<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_CSBS.aspx.cs" Inherits="STUDENT.login_CSBS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style>
        .main
        {
            background-color:lightyellow;
            width: 500px;
            height: 650px;
            margin-inline:auto;
            padding-top:10px;
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
            padding-left: 20px;
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
         #btnlogin {
               background-color: #4CAF50;
             color: white;
             padding: 10px 15px;
             text-align: center;
             text-decoration: none;
             font-size: 16px;
             cursor: pointer;
             border-radius:10px;
         }
         #Image1 {
           width: 40%;
           border-radius: 50%;
           height:250px;
           width:250px;
         }
         .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
         }
    </style>
</head>
<body style="background-color:aliceblue">
    <form id="form1" runat="server">
        <div style="text-align:center">
            <h1 style="color:red;font-size:30px">WELCOME  TO  VNR  PORTAL</h1>
        </div>
        <div style="display:flex;flex-wrap:nowrap;justify-content:space-between">
             <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<lottie-player src="https://assets4.lottiefiles.com/packages/lf20_pounvezv.json"  background="transparent"  speed="1"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>
            <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<lottie-player src="https://assets2.lottiefiles.com/packages/lf20_w5hernhv.json"  background="transparent"  speed="1"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>
            <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<lottie-player src="https://assets7.lottiefiles.com/packages/lf20_wohcxlyr.json"  background="transparent"  speed="1"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>
            </div>
            <div class="main">
        <p class="sign" align="center">LOG IN</p>
                 <div class="imgcontainer">
           <asp:Image ID="Image1" runat="server" src="img.png/img_avatar2.png" />
                     </div>
        <asp:TextBox ID="txtemail" runat="server" CssClass="un" align="center" placeholder="Username"></asp:TextBox>
        <asp:TextBox ID="txtpwd" runat="server" CssClass="pass" align="center" TextMode="Password" placeholder="Password"></asp:TextBox>
        <a class="submit" align="center">
            <asp:Button ID="btnlogin" BackColor="Green" BorderStyle="Double" runat="server" Text="Sign In" OnClick="btnlogin_Click"  /></a>
        <p class="forgot" align="center"><a href="Register_CSBS.aspx">Register</a></p>
        <p class="forgot" align="center"><a href="ForgotPassword_CSBS.aspx">Forgot Password?</a></p>
    </div>
        <div style="display:flex;flex-wrap:nowrap;justify-content:space-between">
             <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<lottie-player src="https://assets4.lottiefiles.com/packages/lf20_pounvezv.json"  background="transparent"  speed="1"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>
           <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<lottie-player src="https://assets2.lottiefiles.com/packages/lf20_w5hernhv.json"  background="transparent"  speed="1"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>
            <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<lottie-player src="https://assets7.lottiefiles.com/packages/lf20_wohcxlyr.json"  background="transparent"  speed="1"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>
            </div>
    </form>
</body>
</html>
