<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SessionExample.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2>Your Information</h2>
        <asp:Label ID="lblName" runat="server" Text="Name" Width="50"></asp:Label>
        <asp:TextBox ID="txtName" runat="server" Width="120"></asp:TextBox>
        <br />
        <asp:Label ID="lblAge" runat="server" Text="Age" Width="50"></asp:Label>
        <asp:TextBox ID="txtAge" runat="server" Width="120"></asp:TextBox>
        
        <br />
        <br />
        
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    </div>
    </form>
</body>
</html>
