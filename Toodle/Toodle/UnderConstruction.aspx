<%@ Page Title="" Language="C#" MasterPageFile="~/Toodle.Master" AutoEventWireup="true" CodeBehind="UnderConstruction.aspx.cs" Inherits="Toodle.UnderConstruction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Toodle: Page Under Construction - Coming soon
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Slider" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">
    <div>
        <h1>Page Under Construction</h1>
        <div style="margin-top:100px">
            <asp:Image ID="unCon" runat="server" ImageUrl="~/Images/underConstruction.jpg" AlternateText="Under Construcion Image"  />
        </div>
    </div>
</asp:Content>
