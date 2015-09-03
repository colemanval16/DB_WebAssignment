<%@ Page Title="Contact" Theme="Main" Language="C#" MasterPageFile="~/Toodle.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Toodle.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="Contact Details for Toodle"/>
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">


           <!-- PLACEHOLDER FOR THE SLIDESHOW -->
	<div style="height: 200px; margin-bottom:40px"></div>
        <div class="container marketing">

            <div class="row">
                <div id="contactHeader">
                    <h1>Contact DBS</h1>  
                    <p>Please feel free to contact with any queries.</p>   
                </div>
                <div class="col-md-3">
                      <img class="img-circle" src="Images/email5.png" alt="Email image" height="100" width="100" />
                      <h3 style="color: #8cf26d;">Email Us:</h3>
                      <p>info@toodle.com</p>
                </div>
                <div class="col-md-3">
                      <img class="img-circle" src="Images/telephone5.png" alt="Telephone image" height="100" width="100" />
                      <h3 style="color: #f26d7d;">Phone Us:</h3>
                      <p>+ 353 1 417 7500</p>
                </div>
                <div class="col-md-3">
                    <img class="img-circle" src="Images/contract11.png" alt="Contract image" height="100" width="100" />
                    <h3>Message Us:</h3>
                    <p>Send us a message below.</p>
                </div>
                <div class="col-md-3">
                    <img class="img-circle" src="Images/contract11.png" alt="Contract image" height="100" width="100" />
                    <h3>Pop into us:</h3>
                    <p>See map below:</p>
                </div>
              </div>

    
            <div class="row">
                <div class="col-md-6">
                    <h3>Please fill out</h3>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    <asp:Label ID="lblFName" runat="server" Text="First Name:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="FirstNameValidator" runat="server" ControlToValidate="txtFName" Display="Dynamic" ErrorMessage="**Required**" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegFirstNameValidator" runat="server" ControlToValidate="txtFName" Display="Dynamic" ErrorMessage="**Invalid**" ForeColor="Red" ValidationExpression="[A-Za-z]+"></asp:RegularExpressionValidator>
                    <br />
                    <br />
                    <asp:Label ID="lblLName" runat="server" Text="Last Name:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="LastNameValidator" runat="server" ControlToValidate="txtLName" Display="Dynamic" ErrorMessage="**Required**" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegLastNameValidator" runat="server" ControlToValidate="txtLName" Display="Dynamic" ErrorMessage="**Invalid**" ForeColor="Red" ValidationExpression="[A-Za-z]+"></asp:RegularExpressionValidator>
                    <br />
                    <br />
                    <asp:Label ID="lblStudentNo" runat="server" Text="Student Number:"></asp:Label> 
                    <br />
                    <asp:TextBox ID="txtStudentNo" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="StudentNoValidator" runat="server" ControlToValidate="txtStudentNo" Display="Dynamic" ErrorMessage="**Required**" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegStudentNoValidator" runat="server" ControlToValidate="txtStudentNo" Display="Dynamic" ErrorMessage="**Invalid**" ForeColor="Red" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
                    <br />
                    <br />
                    <asp:Label ID="lblEmail" runat="server" Text="Email Address:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EmailValidator" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="**Required**" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegEmailValidator" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="**Invalid**" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                    <br />
                    <asp:Label ID="lblMsg" runat="server" Text="Message:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtMsg" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="MessageValidator" runat="server" ControlToValidate="txtMsg" Display="Dynamic" ErrorMessage="**Required**" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegMessageValidator" runat="server" ControlToValidate="txtMsg" Display="Dynamic" ErrorMessage="**Invalid**" ForeColor="Red" ValidationExpression="[A-Za-z0-9\s\,\.]+"></asp:RegularExpressionValidator>
                    <br />
                    <br />    
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                </div>

                <div class="col-md-6">
                    Going to put map here
                </div>
            </div>
</div>
</asp:Content>
