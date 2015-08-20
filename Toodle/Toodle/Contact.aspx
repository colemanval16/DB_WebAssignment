<%@ Page Title="Contact" Theme="Main" Language="C#" MasterPageFile="~/Toodle.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Toodle.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="Contact Details for Toodle"/>
    <meta name="author" content="Junga Ji Kavanagh, Artur Turczyn & Valerie Coleman"/>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <div class="container marketing">
        <div class="row">
            <div class="col-lg-4">
              <img class="img-circle" src="Images/email5.png" alt="Email image" height="140" width="140" />
              <h1 style="color: #8cf26d;">Email Us:</h1>
              <p>info@toodle.com</p>
            </div><!-- /.col-lg-4 -->
            <div class="col-lg-4">
              <img class="img-circle" src="Images/telephone5.png" alt="Telephone image" height="140" width="140" />
              <h1 style="color: #f26d7d;">Phone Us:</h1>
              <p>+ 353 1 342 0000</p>
            </div><!-- /.col-lg-4 -->
            <div class="col-lg-4">
              <img class="img-circle" src="Images/contract11.png" alt="Contract image" height="140" width="140" />
              <h1>Message Us:</h1>
              <p>Send us a message below.</p>
            </div><!-- /.col-lg-4 -->
          </div><!-- /.row -->

    </div>
</asp:Content>
