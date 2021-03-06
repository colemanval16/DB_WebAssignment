﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Toodle.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Toodle.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headMeta" runat="server">
    <meta name="description" content="Contact Details for Toodle"/>
    <title>Toodle - Contact Page</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="headLinks" runat="server">
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true"></script>
<script src="script.js" type="text/javascript" ></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Slider" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="mainContent" runat="server">
    <div id="contactsContainer">
            <div class="row" style="margin-bottom:40px">
                <div class="posCenter" style="margin-bottom:80px">
                    <h1 style="font-weight:bold; font-size:60px">Contact DBS</h1>  
                    <p><strong><em>Please feel free to contact with any queries.</em></strong></p>   
                </div>
                <div class="col-md-3 col-sm-6 posCenter">
                      <img src="Images/envelope54.png" alt="Email image" height="80" width="80" />
                      <h3 >Email Us:</h3>
                      <p><a href="mailto:info@toodle.com">Email Us</a></p>
                </div>
                <div class="col-md-3 col-sm-6 posCenter">
                      <img src="Images/call56.png" alt="Telephone image" height="80" width="80" />
                      <h3 >Phone Us:</h3>
                      <p>+ 353 1 417 7500</p>
                </div>
                <div class="col-md-3 col-sm-6 posCenter">
                    <img  src="Images/message31.png" alt="Contract image" height="80" width="80" />
                    <h3 >Message Us:</h3>
                    <p>Send us a message below.</p>
                </div>
                <div class="col-md-3 col-sm-6 posCenter">
                    <img class="img-circle" src="Images/location67.png" alt="Contract image" height="80" width="80" />
                    <h3 >Pop into us:</h3>
                    <p>See map below:</p>
                </div>
            </div> <%----- end div row contact icons -----%>
            <hr />           
            <div class="row">
            <%-------------------- CONTACT FORM ----------------------%>
            <div id="contactForm" class="col-md-5 col-sm-12"> 
                <h3 class="posCenter">Contact Us:</h3>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>    
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>         
                        <%--<asp:ValidationSummary ID="ValidationSummary1" runat="server" />--%>
                    <asp:Label ID="lblFName" runat="server" Text="First Name:"></asp:Label>
                    <br />
                        <asp:TextBox ID="txtFName" runat="server" Width="180px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="FirstNameValidator" runat="server" ControlToValidate="txtFName" 
                            Display="Dynamic" ErrorMessage="**Required**" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegFirstNameValidator" runat="server" ControlToValidate="txtFName" 
                            Display="Dynamic" ErrorMessage="**Invalid**" ForeColor="Red" 
                            ValidationExpression="[A-Za-z]+"></asp:RegularExpressionValidator>
                    <br />
                    <br />
                    <asp:Label ID="lblLName" runat="server" Text="Last Name:"></asp:Label>
                    <br />
                        <asp:TextBox ID="txtLName" runat="server" Width="180px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="LastNameValidator" runat="server" ControlToValidate="txtLName" 
                            Display="Dynamic" ErrorMessage="**Required**" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegLastNameValidator" runat="server" ControlToValidate="txtLName" 
                            Display="Dynamic" ErrorMessage="**Invalid**" ForeColor="Red" 
                            ValidationExpression="[A-Za-z]+"></asp:RegularExpressionValidator>
                    <br />
                    <br />
                    <asp:Label ID="lblStudentNo" runat="server" Text="Student Number:"></asp:Label> 
                    <br />
                        <asp:TextBox ID="txtStudentNo" runat="server"  Width="180px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="StudentNoValidator" runat="server" ControlToValidate="txtStudentNo" 
                            Display="Dynamic" ErrorMessage="**Required**" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegStudentNoValidator" runat="server" 
                            ControlToValidate="txtStudentNo" Display="Dynamic" ErrorMessage="**Invalid**" ForeColor="Red" 
                            ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
                    <br />
                    <br />
                    <asp:Label ID="lblEmail" runat="server" Text="Email Address:"></asp:Label>
                    <br />
                        <asp:TextBox ID="txtEmail" runat="server"  Width="180px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="EmailValidator" runat="server" ControlToValidate="txtEmail" 
                            Display="Dynamic" ErrorMessage="**Required**" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegEmailValidator" runat="server" ControlToValidate="txtEmail" 
                            Display="Dynamic" ErrorMessage="**Invalid**" ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                    <br />
                    <asp:Label ID="lblMsg" runat="server" Text="Message:"></asp:Label>
                    <br />
                        <asp:TextBox ID="txtMsg" runat="server" Width="180px" Height="120" placeholder="your message..."></asp:TextBox>
                        <asp:RequiredFieldValidator ID="MessageValidator" runat="server" ControlToValidate="txtMsg" 
                            Display="Dynamic" ErrorMessage="**Required**" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegMessageValidator" runat="server" ControlToValidate="txtMsg" 
                            Display="Dynamic" ErrorMessage="**Invalid**" ForeColor="Red" 
                            ValidationExpression="[A-Za-z0-9\s\,\.]+"></asp:RegularExpressionValidator>
                    <br />
                    <br />    
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="SendMail" />
                    <br />
                    <br />
                        <asp:Label ID="lblDisplayMessage" runat="server" Text=""></asp:Label>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btnSubmit"/>              
                    </Triggers>
                </asp:UpdatePanel> 
            <%-------------------- END CONTACT FORM ----------------------%>
            </div> <%----- end div columns for form -----%>
                   
            <div id="mapContainer" class="col-md-7 col-sm-12 posCenter">                  
                        <h3 style="color: #B56DF2">Come find us here:</h3>
                <iframe id="locationmap" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2382.1526270866298!2d-6.265523199999999!3d53.34052399999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48670e9de863ce97%3A0xd5fd5a41e4548a27!2sDublin+Business+School!5e0!3m2!1sen!2suk!4v1441829434319"></iframe>
            </div> <%----- end div columns for map -----%>
        </div> <%----- end div row contact+map -----%>
    </div> <%----- end div container -----%>
</asp:Content>
