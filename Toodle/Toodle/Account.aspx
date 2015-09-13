<%@ Page Title="" Language="C#" MasterPageFile="~/Toodle.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="Toodle.Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headMeta" runat="server">
    

    
    <link href="App_Themes/Main/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="App_Themes/Main/styles.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="headLinks" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Slider" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="mainContent" runat="server">


    
<div class="container-fluid">


<br/><br/><br/><br/>
    <div class="row">
	    <div class="col-md-3">       
           <br /> 
            <img src="Images/studentInfoIcon.png" class="img-responsive accountImage" alt="Cinque Terre"/>  
        </div>

         <div class="col-md-6">
            <br />
            <br />
            <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>&nbsp;&nbsp;
            <asp:Label ID="lblStudentID" class="label" runat="server" Text="Student ID : "></asp:Label>
            <asp:Label ID="lblDBStudentID" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>&nbsp;&nbsp;
            <asp:Label ID="lblName" runat="server" Text="Name : "></asp:Label>
            <asp:Label ID="lblDBName" runat="server" Text="name"></asp:Label>
            <br />
            <br />
            <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>&nbsp;&nbsp;
            <asp:Label ID="lblEmail" runat="server" Text="Email : "></asp:Label>
            <asp:Label ID="lblDBEmail" runat="server" Text="Email : "></asp:Label>
        </div>
    </div>
<br />
<br />
<br />
    <div="row">
         <div class="col-md-6">
            
            <table class="table table-hover">
                <tr>
                    <th>CourseID</th>
                    <th>Course Name</th>
                    <th>Start Date</th>
                    <th>End Date</th>
                    <th>Course Status</th>

                </tr>
           </table>
        </div>
        <div class="col-md-3">       
           <br /> 
            <img src="Images/studentInfoIcon.png" class="img-responsive accountImage" alt="Cinque Terre"/>
            
       
        </div>
    </div>
    </div>
</asp:Content>
