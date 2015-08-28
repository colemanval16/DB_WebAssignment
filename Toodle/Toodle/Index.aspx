<%@ Page Theme="Main" Title="Main" Language="C#" MasterPageFile="~/Toodle.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Toodle.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="description" content="Main course categories for Toodle"/>
    <meta name="author" content="Junga Ji Kavanagh, Artur Turczyn & Valerie Coleman"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
       <!-- PLACEHOLDER FOR THE SLIDESHOW -->
	<div style="height: 400px;"></div>

	
	<!-- short entries with the links to the courses -->
    <div class="container">
		<div class="row">
			<div class="col-md-4 col-sm-6 posCenter">
				<img class="img-circle" src="images/mtaLogo.png" alt="MTA Logo">
				<h1 style="color: #8CF26D;">MTA</h1>
				<p>Microsoft Technology Associate (MTA) is a set of entry-level 
				   IT certification exams offered by Microsoft. Exams are available 
				   in three different tracks: IT infrastructure, database, and development.</p>
				<p>
					<a class="btn btn-default" href="#" role="button" style="border-color: #8CF26D;">View details »</a>
				</p>
			</div>
			
			<div class="col-md-4 col-sm-6 posCenter">
				<img class="img-circle" src="images/programmingLogo.png" alt="Programming Logo">
				<h1 style="color: #F26D7D;">Programming</h1>
				<p>Series of video tutorials, code samples and exercises
				   taht allows you to understand and master various concepts
				   of Object Oriented Programming in C sharp and Java.</p>
				<p>
					<a class="btn btn-default" href="#" role="button" style="border-color: #F26D7D;">View details »</a>
				</p>
			</div>
			
			<div class="col-md-4 col-sm-6 posCenter">
				<img class="img-circle" src="images/webDesignLogo.png" alt="Web Design Logo">
				<h1 style="color: #6DB5F2;">Web Design</h1>
				<p>Series of video tutorials, code samples and exercises
				   taht allows you to understand and master various concepts
				   of Object Oriented Programming in C sharp and Java.</p>
				<p>
					<a class="btn btn-default" href="#" role="button" style="border-color: #6DB5F2;">View details »</a>
				</p>
			</div>
			</div>
			<div class="row">
			<div class="col-md-4 col-sm-6 posCenter">
				<img class="img-circle" src="images/dbLogo.png" alt="Database Logo">
				<h2 style="color: #F2C16D;">Database</h2>
				<p>Microsoft Technology Associate (MTA) is a set of entry-level 
				   IT certification exams offered by Microsoft. Exams are available 
				   in three different tracks: IT infrastructure, database, and development.</p>
				<p>
					<a class="btn btn-default" href="#" role="button" style="border-color: #F2C16D;">View details »</a>
				</p>
			</div>
			<div class="col-md-4 col-sm-6 posCenter">
				<img class="img-circle" src="images/networksLogo.png" alt="Networks Logo">
				<h2 style="color: #F2DE6D;">Networks</h2>
				<p>Series of video tutorials, code samples and exercises
				   taht allows you to understand and master various concepts
				   of Object Oriented Programming in C sharp and Java.</p>
				<p>
					<a class="btn btn-default" href="#" role="button" style="border-color: #F2DE6D;">View details »</a>
				</p>
			</div>
			<div class="col-md-4 col-sm-6 posCenter">
				<img class="img-circle" src="images/projectManagementLogo.png" alt="Project Management Logo">
				<h2 style="color: #B56DF2;">Project Management</h2>
				<p>Series of video tutorials, code samples and exercises
				  taht allows you to understand and master various concepts
				  of Object Oriented Programming in C sharp and Java.</p>
				<p>
					<a class="btn btn-default" href="#" role="button" style="border-color: #B56DF2;">View details »</a>
				</p>
			</div>
		</div><!-- END OF ROW -->


            <!-- WILL BE FOOTER -->


		</div><!-- END OF CONTAINER -->

</asp:Content>
