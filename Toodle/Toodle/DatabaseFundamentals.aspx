<%@ Page Title="" Language="C#" MasterPageFile="~/ToodleCourse.master" AutoEventWireup="true" CodeBehind="DatabaseFundamentals.aspx.cs" Inherits="Toodle.DatabaseFundamentals" %>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
    <div style="height: 200px;"></div>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Content for Database Fundamentals</h2>
    <h3>Understandign Core Database Concepts</h3>
         <p></p>
    <h3>Creating Database Objects</h3>
         <p></p>
    <h3>Manipulating Data</h3>
         <p></p>
    <h3>Understanding Data Storage</h3>
         <p></p>
    <h3>Administering a Database</h3>
         <p></p>

    <asp:Button ID="btnCourseContentComplete" runat="server" Text="To access Tutorials" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2>Tutorials</h2>
    <p>I have a few tutorials to insert here</p>
    <asp:Button ID="btnTutorialsComplete" runat="server" Text="To access Mock Exam" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <h2>Database Fundamentals Mock Exam</h2>
    <p>
            1) Which of the following is not a DDL statment
            <asp:RadioButtonList ID="rdMock1" runat="server">
                <asp:ListItem Value="1">CREATE</asp:ListItem>
                <asp:ListItem Value="2">MERGE</asp:ListItem>
                <asp:ListItem Value="3">ALTER</asp:ListItem>
                <asp:ListItem Value="4">DROP</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="rdMock1" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            2) Which of the following is not a constraint?
            <asp:RadioButtonList ID="rdMock2" runat="server">
                <asp:ListItem Value="1">Null</asp:ListItem>
                <asp:ListItem Value="2">Unique</asp:ListItem>
                <asp:ListItem Value="3">Check</asp:ListItem>
                <asp:ListItem Value="4">Primary</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="rdMock2" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
            </p>
        <p>
            3) What does SQL stand for?
            <asp:RadioButtonList ID="rdMock3" runat="server">
                <asp:ListItem Value="1">Structured Question Language</asp:ListItem>
                <asp:ListItem Value="2">Structured Query Language</asp:ListItem>
                <asp:ListItem Value="3">Strong Question Language</asp:ListItem>
                <asp:ListItem Value="4">Specific Query Language</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="rdMock3" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            4) Which of the following SQL statements is used to extract data from a database
            <asp:RadioButtonList ID="rdMock4" runat="server">
                <asp:ListItem Value="1">SELECT</asp:ListItem>
                <asp:ListItem Value="2">OPEN</asp:ListItem>
                <asp:ListItem Value="3">EXTRACT</asp:ListItem>
                <asp:ListItem Value="3">GET</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="rdMock4" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            5) Which of the following is not a data type
            <asp:RadioButtonList ID="rdMock5" runat="server">
                <asp:ListItem Value="1">Exact numerics</asp:ListItem>
                <asp:ListItem Value="2">Approximate numerics</asp:ListItem>
                <asp:ListItem Value="3">ANSI string</asp:ListItem>
                <asp:ListItem Value="4">Spatial</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="rdMock5" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            6) Which of the following statements does not accurately describe a view?
         <asp:RadioButtonList ID="rdMock6" runat="server">
                <asp:ListItem Value="1">A view is a virtual table.</asp:ListItem>
                <asp:ListItem Value="2">A view is meant to serve as a security mechanism.</asp:ListItem>
                <asp:ListItem Value="3">Views should not be used for granting access.</asp:ListItem>
                <asp:ListItem Value="4">A view simplifies query execution</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="rdMock6" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
    <p>
            7) Which statement is used to supress the '(1 row(s) affected)' after executing query statements?
            <asp:RadioButtonList ID="rdMock7" runat="server">
                <asp:ListItem Value="1">SET NO COUNT</asp:ListItem>
                <asp:ListItem Value="2">SET NOCOUNT ON</asp:ListItem>
                <asp:ListItem Value="3">SET NO COUNTING</asp:ListItem>
                <asp:ListItem Value="4">SET NO COUNTING ON</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="rdMock7" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            8) Which is not a reqular data type?
            <asp:RadioButtonList ID="rdMock8" runat="server">
                <asp:ListItem Value="1">CHAR</asp:ListItem>
                <asp:ListItem Value="2">NCAR</asp:ListItem>
                <asp:ListItem Value="3">TEXT</asp:ListItem>
                <asp:ListItem Value="4">VARCHAR</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="rdMock8" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
            </p>
        <p>
            9) Which of the following operators is not supported when combining results between SELECT statements?
            <asp:RadioButtonList ID="rdMock9" runat="server">
                <asp:ListItem Value="1">UNION</asp:ListItem>
                <asp:ListItem Value="2">EXCEPT</asp:ListItem>
                <asp:ListItem Value="3">INTERSECT</asp:ListItem>
                <asp:ListItem Value="4">AND</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="rdMock9" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            10) Which of the following range conditions would generate a syntax error?
            <asp:RadioButtonList ID="rdMock10" runat="server">
                <asp:ListItem Value="1">salary <= 50000 and salary >= 10000</asp:ListItem>
                <asp:ListItem Value="2">salary between (10000 and 50000) and (60000 and 90000)</asp:ListItem>
                <asp:ListItem Value="3">salary >= 10000 and salary <= 50000</asp:ListItem>
                <asp:ListItem Value="3">salary between 10000 and 50000</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="rdMock10" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            11) Which of the following is used to prevent accidental deletion of data in a table?
            <asp:RadioButtonList ID="rdMock11" runat="server">
                <asp:ListItem Value="1">Transactions</asp:ListItem>
                <asp:ListItem Value="2">Null values</asp:ListItem>
                <asp:ListItem Value="3">Inner joins</asp:ListItem>
                <asp:ListItem Value="3">Referential integrity</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="rdMock11" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            12) Using the ________ statement is the most efficient way to delete all rows from a table.
         <asp:RadioButtonList ID="rdMock12" runat="server">
                <asp:ListItem Value="1">DELETE</asp:ListItem>
                <asp:ListItem Value="2">TRUNCATE</asp:ListItem>
                <asp:ListItem Value="3">ALTER</asp:ListItem>
                 <asp:ListItem Value="3">UPDATE</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="rdMock12" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
            <asp:Button ID="btnMockExam1" runat="server" Text="Submit 1st Attempt" />
            <asp:Button ID="btnMockExam2" runat="server" Text="Submit 2nd Attempt" />
            <asp:Button ID="btnMockExam3" runat="server" Text="Submit 3rd Attempt" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    <h2>Progress Report</h2>
    <p>Content, content and morew content...</p>
    <p>Content, content and morew content...</p>
    <p>Content, content and morew content...</p>
    <p>Content, content and morew content...</p>
</asp:Content>
