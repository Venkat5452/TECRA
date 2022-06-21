<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher_CSBS.Master" AutoEventWireup="true" CodeBehind="ViewMarks_CSBS.aspx.cs" Inherits="STUDENT.ViewMarks_CSBS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="display:flex;flex-wrap:nowrap;justify-content:space-between">
          <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<lottie-player src="https://assets4.lottiefiles.com/packages/lf20_qh9ueu4r.json"  background="transparent"  speed="1"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>
           <h1 style="text-align:center;color:black">CURRENT MARKS DATA:</h1>
            <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<lottie-player src="https://assets4.lottiefiles.com/packages/lf20_qh9ueu4r.json"  background="transparent"  speed="1"  style="width: 300px; height: 300px;"  loop  autoplay></lottie-player>
            </div>
    <asp:GridView Width="100%" RowStyle-Height="50px" ID="GridView1" GridLines="Both" runat="server" BorderColor="Green"></asp:GridView>
</asp:Content>