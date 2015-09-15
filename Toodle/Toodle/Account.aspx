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


<br/><br/><br/><br/><br /><br />
    <div class="row">
	    <div class="col-md-3 col-md-offset-1">       
           <br /> 
            <img src="Images/studentInfoIcon.png" class="img-responsive accountImage" alt="student Info Icon"/>  
        </div>

         <div class="col-md-6">
            <br />
            <br />
            <br />
            <br />
            <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>&nbsp;&nbsp;
            <asp:Label ID="lblStudentID" class="studnetInfolbl" runat="server" Text="Student ID : "></asp:Label>
            <asp:Label ID="lblDBStudentID" class="studentInfoDBlbl" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <br />
            <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>&nbsp;&nbsp;
            <asp:Label ID="lblName" class="studnetInfolbl" runat="server" Text="Name : "></asp:Label>
            <asp:Label ID="lblDBName" class="studentInfoDBlbl" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <br />
            <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>&nbsp;&nbsp;
            <asp:Label ID="lblEmail" class="studnetInfolbl" runat="server" Text="Email : "></asp:Label>
            <asp:Label ID="lblDBEmail" class="studentInfoDBlbl" runat="server" Text=""></asp:Label>
        </div>
    </div>
<br />
<br />
<br />
    <div="row">
         <div class="col-md-6 col-md-offset-1">
            
            <table class="table table-hover" id="courseInformationTable" runat="server">
                <tr>
                    <th>CourseID</th>
                    <th>Start Date</th>
                    <th>End Date</th>
                    <th>Course Status</th>
                </tr>
           </table>
             
            <div id="noCourseEnrolled" runat="server">
                <br />
                <br />
                <br />
                <br />

                <h3><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>&nbsp;&nbsp;You have not enrolled any courses</h3>
            </div>
        </div>
        <div class="col-md-3">       
           <br />
            <img src="Images/courseListIcon.png" class="img-responsive accountImage" alt="course List Icon"/>
       
        </div>
    </div>

    <br />
<br />
<br />
    </div>
</asp:Content>
