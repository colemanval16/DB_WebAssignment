<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Exercise1.aspx.cs" Inherits="ExercisesWEeek1.Exercise1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="main" runat="server">
        <h2>Your Information</h2>
        <asp:Label ID="lblFirst" runat="server" Text="First Name:"></asp:Label>
        <asp:TextBox ID="txtFirst" runat="server"></asp:TextBox>
        <br/>
        <asp:Label ID="lblLast" runat="server" Text="Last Name:"></asp:Label>
        <asp:TextBox ID="txtLast" runat="server"></asp:TextBox>
        <br/>
        <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <br/>
        <asp:Label ID="lblPhone" runat="server" Text="Phone:"></asp:Label>
        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
        <br/>
        <asp:Label ID="lblAddress" runat="server" Text="Address:"></asp:Label>
        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblHobbies" runat="server" Text="Hobbies:"></asp:Label>
        <br />
        <asp:CheckBoxList ID="chkLstHobbies" runat="server">
            <asp:ListItem>Reading</asp:ListItem>
            <asp:ListItem>Listening Music</asp:ListItem>
            <asp:ListItem>Swimming</asp:ListItem>
            <asp:ListItem>Horse Riding</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    </div>
        
    </form>
</body>
</html>
