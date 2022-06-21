<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="STUDENT.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            background-color: #F3EBF6;
            font-family: 'Ubuntu' , sans-serif;
        }
        
        .main
        {
            background-color: #FFFFFF;
            width: 400px;
            height: 400px;
            margin: 7em auto;
            border-radius: 1.5em;
            box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
        }
        
        .sign
        {
            padding-top: 40px;
            color: #8C55AA;
            font-family: 'Ubuntu' , sans-serif;
            font-weight: bold;
            font-size: 23px;
        }
        
        .un
        {
            width: 76%;
            color: rgb(38, 50, 56);
            font-weight: 700;
            font-size: 14px;
            letter-spacing: 1px;
            background: rgba(136, 126, 126, 0.04);
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
        
        form.form1
        {
            padding-top: 40px;
        }
        
        .pass
        {
            width: 76%;
            color: rgb(38, 50, 56);
            font-weight: 700;
            font-size: 14px;
            letter-spacing: 1px;
            background: rgba(136, 126, 126, 0.04);
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
        
        
        .un:focus, .pass:focus
        {
            border: 2px solid rgba(0, 0, 0, 0.18) !important;
        }
        
        .submit
        {
            padding-left: 40px;
            padding-right: 40px;
            padding-bottom: 10px;
            padding-top: 10px;
            font-family: 'Ubuntu' , sans-serif;
            margin-left: 35%;
            font-size: 13px;
        }
        
        .forgot
        {
            text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
            color: #E1BEE7;
            padding-top: 15px;
        }
        
        a
        {
            text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
            color: #E1BEE7;
            text-decoration: none;
        }

        @media (max-width: 600px) {
            .main {
                border-radius: 0px;
            }
        }
    </style>
</head>
<body>
  <form id="form1" runat="server">
  <div class="main">
        <p class="sign" align="center">
            Sign in</p>
        <asp:TextBox ID="txtemail" runat="server" CssClass="un" align="center" placeholder="Username"></asp:TextBox>
        <asp:TextBox ID="txtpwd" runat="server" CssClass="pass" align="center" placeholder="Username"></asp:TextBox>
        <a class="submit" align="center">
            <asp:Button ID="btnlogin" runat="server" Text="Sign In" /></a>
        <p class="forgot" align="center"><a href="Register.aspx">Register</a></p>
        <p class="forgot" align="center"><a href="#">Forgot Password?</p>
    </div>
</form>
</body>
</html>
