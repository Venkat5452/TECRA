<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register_CSBS.aspx.cs" Inherits="STUDENT.Register_CSBS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style type="text/css">
    .sign
        {
            color: ThreeDHighlight;
            font-family: 'Ubuntu' , sans-serif;
            font-weight: bold;
            font-size: 26px;
        }
     .main
        {
            background-color:lightyellow;
            width: 500px;
            height: 500px;
            margin: auto;
            padding-top:5px;
            border-radius: 1.5em;
            box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
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
         #lblerror,#lbl1{
             color:red;
         }
        #customers
        {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;

        }
        
        #customers td, #customers th
        {
            border: 1px solid #ddd;
            padding: 8px;
        }
        
        
        
        #customers tr:hover
        {
            background-color: lightcyan;
        }
        
        #customers th
        {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: cadetblue;
            color: white;
        }
         #btnsave,#btnlogin1 {
               background-color: #4CAF50;
             color: white;
             padding: 10px 15px;
             text-align: center;
             text-decoration: none;
             font-size: 16px;
             cursor: pointer;
             border-radius:10px;
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
    </style>
</head>
<body style="background-color:lightcyan"> 
    <form id="form1" runat="server">
        <div style="display:flex;flex-wrap:nowrap;justify-content:space-between">
          <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<lottie-player src="https://assets4.lottiefiles.com/packages/lf20_qh9ueu4r.json"  background="transparent"  speed="1"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>
           <p style="font-size:30px;text-align:center;color:orangered">REGISTER HERE.</p>
            <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<lottie-player src="https://assets4.lottiefiles.com/packages/lf20_qh9ueu4r.json"  background="transparent"  speed="1"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>
            </div>
        <asp:Panel ID="reg" runat="server">
    <table id="customers" >
        <tr>
            <th>
                Username
            </th>
            <td>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtUsername"
                    ErrorMessage="Username Required" ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtUsername"
                    ErrorMessage="Minimum 4 characters at least 1 capital Alphabet,1 special charecter and 1 Number" ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{4,15}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <th>
                Name
            </th>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtName"
                    ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <th>
                EmailID
            </th>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail"
                    ErrorMessage="EmailID Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regu" runat="server" ControlToValidate="txtemail"
                    ErrorMessage="Plz Enter Correct Email Format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <th>
                Password
            </th>
            <td>
                <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" ></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd"
                    ErrorMessage="Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpwd"
                    ErrorMessage="Minimum 8 characters at least 1 capital Alphabet,1 special charecter and 1 Number" ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,15}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <th>
                Confirm Password
            </th>
            <td>
                <asp:TextBox ID="ctxtpwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ctxtpwd"
                    ErrorMessage="Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="com" runat="server" ControlToValidate="ctxtpwd" ErrorMessage="Password is Not Correct"
                    ForeColor="Red" ControlToCompare="txtpwd"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <th>
                Gender
            </th>
            <td>
                <asp:RadioButtonList ID="rdgender" runat="server">
                    <asp:ListItem Value="Male" Text="Male"></asp:ListItem>
                    <asp:ListItem Value="Female" Text="Female"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="rdgender"
                    ErrorMessage="Please fill this feild" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <th>
                Department
            </th>
            <td>
                <asp:DropDownList ID="dddldept" runat="server">
                    <asp:ListItem Text="--Select--" Value="--Select--"></asp:ListItem>
                    <asp:ListItem Text="CSE" Value="CSE"></asp:ListItem>
                     <asp:ListItem Text="CSBS" Value="CSBS"></asp:ListItem>
                    <asp:ListItem Text="EEE" Value="EEE"></asp:ListItem>
                    <asp:ListItem Text="ECE" Value="ECE"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="dddldept"
                    ErrorMessage="Please fill this feild" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <th>
                Role
            </th>
            <td>
                <asp:DropDownList ID="ddlrole" runat="server">
                    <asp:ListItem Text="--Select--" Value="--Select--"></asp:ListItem>
                    <asp:ListItem Text="Student" Value="Student"></asp:ListItem>
                    <asp:ListItem Text="Teacher" Value="Teacher"></asp:ListItem>
                </asp:DropDownList>
            </td>
             <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlrole"
                    ErrorMessage="Please fill this feild" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td >
                <asp:Button ID="btnsave"  runat="server" Text="Save Data" OnClick="btnsave_Click"  />
            </td>
            <td>
               <asp:Label ID="lbl1"  runat="server"></asp:Label>
            </td>
        </tr>
    </table>
            </asp:Panel>
        <asp:Panel ID="VOTP" runat="server">
             <div class="main">
        <p class="sign" align="center">ENTER OTP Sent to Email</p>
                <div class="imgcontainer">
           <asp:Image ID="Image2" runat="server" src="img.png/img_avatar2.png" />
       </div>
        <asp:TextBox ID="txtOTP" runat="server" CssClass="un" align="center" placeholder="Enter OTP"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtOTP"
                    ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <div style="text-align:center;color:red;padding-bottom:10px">
       <asp:Label runat="server" ID="lbl"></asp:Label>
                </div>
        <a class="submit" align="center">
            <asp:Button ID="btnlogin1" BackColor="Green" BorderStyle="Double" runat="server" Text="Validate" OnClick="btnlogin1_Click" /></a>
        </div>
        </asp:Panel> 
    </form>
</body>
</html>

