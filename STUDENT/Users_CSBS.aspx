<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher_CSBS.Master" AutoEventWireup="true" CodeBehind="Users_CSBS.aspx.cs" Inherits="STUDENT.Users_CSBS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="display:flex;flex-wrap:nowrap;justify-content:space-between">
          <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<lottie-player src="https://assets4.lottiefiles.com/packages/lf20_3rqwsqnj.json"  background="transparent"  speed="1"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>
          <h1 style="color:black;text-align:center">CURRENT USERS DETAILS:</h1>
          <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<lottie-player src="https://assets4.lottiefiles.com/packages/lf20_3rqwsqnj.json"  background="transparent"  speed="1"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>
            </div>
    <asp:GridView Width="100%" RowStyle-Height="50px" ID="GridView1" GridLines="Both" runat="server" BorderColor="Green"></asp:GridView>
</asp:Content>
