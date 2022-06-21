<%@ Page Title="" Language="C#" MasterPageFile="~/Student_CSBS.Master" AutoEventWireup="true" CodeBehind="Marks_CSBS.aspx.cs" Inherits="STUDENT.Marks_CSBS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:40%;align-content:center">
       <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<lottie-player src="https://assets9.lottiefiles.com/packages/lf20_nm1huacl.json"  background="transparent"  speed="1"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>
       <p>Enter Your Roll Number :  </p>
    <asp:TextBox ID="txtRoll" runat="server"></asp:TextBox>
        <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click1" />
     </div>  
        <br>
    <div style="text-align:center;color:red">
         <asp:label ID="lbl" runat="server"></asp:label>
   </div>
    <div style="padding-top:30px">
       <asp:GridView Width="100%" Height="25%" ID="grid1" runat="server"></asp:GridView>
        </div>
</asp:Content>