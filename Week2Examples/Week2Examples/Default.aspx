<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Week2Examples.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h2>This is first page</h2>
        <br />
        <asp:TextBox ID="txtText" runat="server" ></asp:TextBox>

        <br />
        <br />

        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SecondPage.aspx">Click to go to Second Page</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="http://www.dbs.ie">Dublin Business School</asp:HyperLink>

        <br />
        <br />

        <asp:Button ID="btnSubmit" runat="server" Text="Submit to second page" OnClick="btnSubmit_Click" />
        <br />
        <br />
        <asp:Button ID="btnDBS" runat="server" Text="Dublin Business School" OnClick="btnDBS_Click" />

        <br />
        <br />

        <asp:Button ID="btnServer" runat="server" Text="Use Server.Trnasfer " OnClick="btnServer_Click" />
        <br />
        <br />
        <asp:Button ID="btnCross" runat="server" Text="Cross Page Posting" PostBackUrl="~/SecondPage.aspx"/>
    </div>
    </form>
</body>
</html>
