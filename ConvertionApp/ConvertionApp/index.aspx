<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ConvertionApp.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/Style.css" rel="stylesheet" type="text/css" />
</head>
<body>
   <form id="form1" runat="server">
    <div id="main" runat="server">
        <h2>Conversion Web Application</h2>       
        <asp:RadioButtonList ID="radioList" CssClass="radioList" runat="server">
            <asp:ListItem Value="temperature.aspx">Temperature Conversion </asp:ListItem>
            <asp:ListItem Value="distance.aspx">Distance and Length Convertor</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Button ID="btnEnter" runat="server" Text="Enter" CssClass="btnEnter" OnClick="btnEnter_Click"/>  
    </div> 
    </form>
</body>
</html>
