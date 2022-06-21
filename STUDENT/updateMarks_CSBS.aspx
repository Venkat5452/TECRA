<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher_CSBS.Master" AutoEventWireup="true" CodeBehind="updateMarks_CSBS.aspx.cs" Inherits="STUDENT.updateMarks_CSBS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <style type="text/css">
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
         #btnsave {
             background-color: #4CAF50;
             color: white;
             padding: 10px 15px;
             text-align: center;
             text-decoration: none;
             font-size: 16px;
             cursor: pointer;
             border-radius:10px;
         }
    </style>
    <div style="display:flex;flex-wrap:nowrap;justify-content:space-between">
           <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<lottie-player src="https://assets1.lottiefiles.com/private_files/lf30_aiklsxys.json"  background="transparent"  speed="1"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>
           <div style="text-align:center;color:red">
       <h1 style="font-weight:300">Update Student Info HERE!!!</h1>
    </div>
           <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<lottie-player src="https://assets5.lottiefiles.com/packages/lf20_kny4hso1.json"  background="transparent"  speed="1"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>
            </div>
    <table id="customers">
         <tr>
            <th>
                Roll Number
            </th>
            <td>
                <asp:TextBox ID="txtRoll" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRoll"
                      ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <th>
                Branch
            </th>
            <td>
                <asp:DropDownList ID="Branch" runat="server">
                    <asp:ListItem Text="--Select--" Value="--Select--"></asp:ListItem>
                    <asp:ListItem Text="CSE" Value="CSE"></asp:ListItem>
                    <asp:ListItem Text="EEE" Value="EEE"></asp:ListItem>
                    <asp:ListItem Text="ECE" Value="ECE"></asp:ListItem>
                    <asp:ListItem Text="CSBS" Value="CSBS"></asp:ListItem>
                    <asp:ListItem Text="CIVIL" Value="Civil"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Branch"
                    ErrorMessage="Please fill this feild" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <th>
               Java(<=40)
            </th>
            <td>
                <asp:TextBox ID="txtJava" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtJava"
                      ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="CompareValidator2" ForeColor="Red" runat="server" ControlToValidate="txtJava" ErrorMessage="Must be <=40 " Operator="LessThanEqual" Type="Integer" ValueToCompare="40" />
            </td>
        </tr>
         <tr>
            <th>
                Python(<=40)
            </th>
            <td>
                <asp:TextBox ID="txtPython" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPython"
                      ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="CompareValidator3" ForeColor="Red" runat="server" ControlToValidate="txtPython" ErrorMessage="Must be <=40 " Operator="LessThanEqual" Type="Integer" ValueToCompare="40" />
            </td>
        </tr>
         <tr>
            <th>
                CPP(<=40)
            </th>
            <td>
                <asp:TextBox ID="txtcpp" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcpp"
                      ErrorMessage="Required"  ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator5" ForeColor="Red" runat="server" ControlToValidate="txtcpp" ErrorMessage="Must be <=40 " Operator="LessThanEqual" Type="Integer" ValueToCompare="40" />
            </td>
        </tr>
         <tr>
            <th>
                DBMS(<=40)
            </th>
            <td>
                <asp:TextBox ID="txtDbms" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDbms"
                      ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="CompareValidator1" ForeColor="Red" runat="server" ControlToValidate="txtDbms" ErrorMessage="Must be <=40 " Operator="LessThanEqual" Type="Integer" ValueToCompare="40" />
            </td>
        </tr>
        <tr>
            <td >
                <asp:Button ID="btnsave" runat="server" Text="Update Data" OnClick="btnsave_Click"  />
            </td>
        </tr>
    </table>
</asp:Content>

