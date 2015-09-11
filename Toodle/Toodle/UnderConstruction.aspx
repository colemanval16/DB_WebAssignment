<%@ Page Title="" Language="C#" MasterPageFile="~/Toodle.Master" AutoEventWireup="true" CodeBehind="UnderConstruction.aspx.cs" Inherits="Toodle.UnderConstruction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headMeta" runat="server">
    <title>Toodle - Page Coming soon</title>
    <meta name="description" content="Toodle page under construction, coming soon" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="headLinks" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Slider" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="mainContent" runat="server">
        <div>
        <h1>Page Under Construction</h1>
        <div style="margin-top:100px" class="posCenter">
            <asp:Image ID="unCon" runat="server" ImageUrl="~/Images/underConstruction2.jpg" AlternateText="Under Construcion Image"  />
        </div>
    </div>
</asp:Content>
