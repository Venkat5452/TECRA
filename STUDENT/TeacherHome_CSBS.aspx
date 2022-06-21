<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher_CSBS.Master" AutoEventWireup="true" CodeBehind="TeacherHome_CSBS.aspx.cs" Inherits="STUDENT.TeacherHome_CSBS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        #btnAdd{
           text-align:center;
           width:100px;
           padding:20px;
           background-color:green;
           }
    </style>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<div id="dvGrid" style="padding-top: 10px; width:100%">
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
         <div style="display:flex;flex-wrap:nowrap;justify-content:space-between">
           <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<lottie-player src="https://assets10.lottiefiles.com/packages/lf20_xjhwr9wv.json"  background="transparent"  speed="1"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>
           <h1 style="text-align:center;color:orangered;font-size:30px">UPDATE LIBRARY</h1>
            <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<lottie-player src="https://assets10.lottiefiles.com/packages/lf20_z8szrftm.json"  background="transparent"  speed="1"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>
            </div>
        <div style="padding-bottom:20px;width:100%">
            <h3 style="color:blue">To ADD book to the Library:</h3>
        <table border="1" cellpadding="6" cellspacing="5" style="border-collapse: collapse;width:100%" >
            <tr>
                <td >
                    BookId:<br />
                    <asp:TextBox ID="txtBookid" runat="server" Width="140" />
                    

                </td>
                <td >
                    Book Name:<br />
                    <asp:TextBox ID="txtBname" runat="server" Width="140" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBname"
                    ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td >
                    Author:<br />
                    <asp:TextBox ID="txtAuthor" runat="server" Width="140" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAuthor"
                    ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td >
                    Price:<br />
                    <asp:TextBox ID="txtPrice" runat="server" Width="140" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPrice"
                    ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td >
                    Rack Number:<br />
                    <asp:TextBox ID="txtRno" runat="server" Width="140" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtRno"
                    ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td >
                    <asp:Button  ID="btnAdd" runat="server" Text="Add" CausesValidation="false" OnClick="Insert" />
                </td>
            </tr>
        </table>
            </div>
        </ContentTemplate>
</asp:UpdatePanel>
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
    <ContentTemplate>
         <div style="width:100%;padding-bottom:20px">
            <h3 style="color:blue">To Update book in the Library:</h3>
        <table border="1" cellpadding="6" cellspacing="5" style="border-collapse: collapse;width:100%">
            <tr>
                <td>
                    BookId:<br />
                    <asp:TextBox ID="txtId" runat="server" Width="140" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtId"
                    ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td >
                    Book Name:<br />
                    <asp:TextBox ID="txtName" runat="server" Width="140" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtName"
                    ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td >
                    Author:<br />
                    <asp:TextBox ID="txtA" runat="server" Width="140" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtA"
                    ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td >
                    Price:<br />
                    <asp:TextBox ID="TxtP" runat="server" Width="140" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TxtP"
                    ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td >
                    Rack Number:<br />
                    <asp:TextBox ID="txtR" runat="server" Width="140" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtR"
                    ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td >
                    <asp:Button  ID="Button1" runat="server" Text="Update Book" CausesValidation="false" OnClick="Button1_Click"  />
                </td>
            </tr>
        </table>
            </div>
    </ContentTemplate>
</asp:UpdatePanel>
    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
    <ContentTemplate>
         <div style="width:100%;padding-bottom:20px">
            <h3 style="color:blue">To REMOVE book in the Library:</h3>
        <table border="1" cellpadding="6" cellspacing="5" style="border-collapse: collapse;width:100%">
            <tr>
                <td>
                    BookId:<br />
                    <asp:TextBox ID="txtId2" runat="server" Width="140" />
                </td>
                <td >
                    <asp:Button  ID="Button2" runat="server" Text="Delete Book" CausesValidation="false" OnClick="Button2_Click"  />
                </td>
            </tr>
        </table>
            </div>
          <asp:GridView ID="GridView1" runat="server" Width="100%" RowStyle-Height="50px"></asp:GridView>
    </ContentTemplate>
</asp:UpdatePanel>
</div>
</asp:Content>

