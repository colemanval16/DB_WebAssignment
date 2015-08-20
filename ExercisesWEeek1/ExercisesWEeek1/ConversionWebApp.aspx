<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConversionWebApp.aspx.cs" Inherits="ExercisesWEeek1.TemperatureConvertor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="main">
        <h2>Teperature conversion tool:</h2>
        <asp:Label ID="lblFahrenheit" runat="server" Text="Fahrenheit:"></asp:Label>

        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" />

    </div>
    </form>
</body>
</html>
