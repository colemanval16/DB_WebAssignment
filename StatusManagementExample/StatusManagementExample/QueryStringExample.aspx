<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QueryStringExample.aspx.cs" Inherits="StatusManagementExample.QueryStringExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:Label ID="lblName" runat="server" Text="Name : " Width="60px"></asp:Label>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblAge" runat="server" Text="Age : " Width="60px"></asp:Label>
        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    </div>
    </form>
</body>
</html>
