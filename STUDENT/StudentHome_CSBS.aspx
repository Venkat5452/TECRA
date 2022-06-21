<%@ Page Title="" Language="C#" MasterPageFile="~/Student_CSBS.Master" AutoEventWireup="true" CodeBehind="StudentHome_CSBS.aspx.cs" Inherits="STUDENT.StudentHome_CSBS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div style="display:flex;flex-wrap:nowrap;justify-content:space-between">
           <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<lottie-player src="https://assets8.lottiefiles.com/packages/lf20_qq7lkxtl.json"  background="transparent"  speed="1"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>
       <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<lottie-player src="https://assets8.lottiefiles.com/packages/lf20_jsqgln1f.json"  background="transparent"  speed="1"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>    
       <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<lottie-player src="https://assets6.lottiefiles.com/packages/lf20_gneejfiq.json"  background="transparent"  speed="1"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>
            </div>
    <p style="color:red;font-size:25px;text-align:center">CURRENT LIBRARY BOOKS:</p>
    <asp:GridView Width="100%" RowStyle-Height="50px" ID="GridView1" GridLines="Both" runat="server" BorderColor="Green"></asp:GridView>
</asp:Content>
