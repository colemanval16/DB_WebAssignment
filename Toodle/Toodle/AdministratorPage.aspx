<%@ Page Title="" Language="C#" MasterPageFile="~/Toodle.Master" AutoEventWireup="true" CodeBehind="AdministratorPage.aspx.cs" Inherits="Toodle.AdministratorPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headMeta" runat="server">
    <meta name="description" content="Toodle - Administrators page. Showing course details and statistics" />
    <title>Toodle - Account login page</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="headLinks" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Slider" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="mainContent" runat="server">
<div class="container">


<br/><br/><br/><br/><br /><br />
    <div class="row">
	    <div class="col-md-3">       
           <br /> 
            <img src="Images/courseStatusIcon.png" class="img-responsive accountImage" alt="student Info Icon"/>  
        </div>
         <div class="col-md-6">
             <br /> 

             <h4>Course Enrolment Status</h4>
             <asp:Label ID="lblCourse" runat="server" Text="Please select course"></asp:Label>
             <asp:DropDownList ID="ddlCourse" runat="server">
                 <asp:ListItem Value="MTA01">MTA- Database</asp:ListItem>
                 <asp:ListItem Enabled="False">MTA - Window Operating System</asp:ListItem>
             </asp:DropDownList>
             <asp:Button ID="btnShow" class="btn btn-info text-center" runat="server" Text="SHOW" OnClick="btnShow_Click" />
            <table class="table table-hover" id="courseStatusTable" runat="server" visible="False">
                <tr>
                    <th>Date</th>
                    <th>Number of Student</th>
                </tr>
           </table>
        </div>
    </div>
        <div class="col-md-6">
             <br /> 

             <h4>Course Enrolment Status</h4>
             <asp:Label ID="Label1" runat="server" Text="Please select course"></asp:Label>
             <asp:DropDownList ID="DropDownList1" runat="server">
                 <asp:ListItem Value="MTA01">MTA- Database</asp:ListItem>
                 <asp:ListItem Enabled="False">MTA - Window Operating System</asp:ListItem>
             </asp:DropDownList>
             <asp:Button ID="Button1" class="btn btn-info text-center" runat="server" Text="SHOW" OnClick="btnShow_Click" />
            <table class="table table-hover" id="Table1" runat="server" visible="False">
                <tr>
                    <th>Date</th>
                    <th>Number of Student</th>
                </tr>
           </table>
        </div>

        <div class="row">
	    <div class="col-md-3">       
           <br /> 
            <img src="Images/settingIcon.png" class="img-responsive accountImage" alt="student Info Icon"/>  
        </div>
    </div>
    </div>
</asp:Content>
