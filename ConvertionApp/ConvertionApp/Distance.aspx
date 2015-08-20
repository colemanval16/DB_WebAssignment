<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Distance.aspx.cs" Inherits="ConvertionApp.Distance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Distance and length convertor</title>
    <link href="Content/Style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="main" runat="server">
        <h2>Temperature Conversion</h2>
        <div id="convertionBox">
            <asp:Label ID="lblKillo" CssClass="lableStyle" runat="server" Text="Kilometres "></asp:Label>
            <asp:TextBox ID="txtKillo" CssClass="textStyle" runat="server"></asp:TextBox>
            <asp:Button ID="btnConvert1" runat="server" Text="Meters" OnClick="btnConvert1_Click" />
            <br />
            <asp:Label ID="lblCenti" CssClass="lableStyle" runat="server" Text="Centimetres "></asp:Label>
            <asp:TextBox ID="txtCenti" CssClass="textStyle" runat="server"></asp:TextBox>
            <asp:Button ID="btnConvert2" runat="server" Text="Millimetres" OnClick="btnConvert2_Click" />
            
        </div>
        <div id="resultBox" runat="server">
             <asp:Label ID="result" runat="server" Text=" "></asp:Label>

        </div>
        <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btnCSS" OnClick="btnClear_Click"/>
        <asp:Button ID="btnGoback" runat="server" Text="Go back" CssClass="btnCSS" OnClick="btnGoback_Click"/>
    </div>
    </form>
</body>
</html>
