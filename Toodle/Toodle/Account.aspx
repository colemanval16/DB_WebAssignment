<%@ Page Title="" Language="C#" MasterPageFile="~/Toodle.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="Toodle.Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headMeta" runat="server">
    <meta name="description" content="Toodle - account login message page" />
    <title>Toodle - Administrator page</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="headLinks" runat="server">
    <link href="App_Themes/Main/styles.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Slider" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="mainContent" runat="server">
    <div id="imageDiv" runat="server">
         <asp:Image ID="lockImg" runat="server" ImageUrl="~/Images/lock.png" AlternateText="lock"  />
        <h1>Please login</h1>
    </div>

    <div id="ifLogIn" runat="server">
       <div ></div>
    </div>
    
</asp:Content>
