<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CookieExample3.aspx.cs" Inherits="StatusManagementExample.CookieExample3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body id="mainContent" runat="server">
    <form id="form1" runat="server">
    <div>
        <h3>Select your favourite background colour</h3>
        <asp:RadioButtonList ID="rblColor" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblColor_SelectedIndexChanged">
            <asp:ListItem>Red</asp:ListItem>
            <asp:ListItem>Yellow</asp:ListItem>
            <asp:ListItem>Green</asp:ListItem>
            <asp:ListItem>Blue</asp:ListItem>

        </asp:RadioButtonList>
    </div>
    </form>
</body>
</html>
