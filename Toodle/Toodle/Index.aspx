<%@ Page Title="" Language="C#" MasterPageFile="~/Toodle.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Toodle.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headMeta" runat="server">
    <title>Main Page</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="headLinks" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Slider" runat="server">
    
 <!-- =============  Carousel ============ -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel" style="margin-top:100px">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
          <li data-target="#myCarousel" data-slide-to="3"></li>
          <li data-target="#myCarousel" data-slide-to="4"></li>
          <li data-target="#myCarousel" data-slide-to="5"></li>
          <li data-target="#myCarousel" data-slide-to="6"></li>
          <li data-target="#myCarousel" data-slide-to="7"></li>
          <li data-target="#myCarousel" data-slide-to="8"></li>
          <li data-target="#myCarousel" data-slide-to="9"></li>
          <li data-target="#myCarousel" data-slide-to="10"></li>
          <li data-target="#myCarousel" data-slide-to="11"></li>
          <li data-target="#myCarousel" data-slide-to="12"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
            <asp:Image ID="slide1" class="first-slide" runat="server" ImageUrl="~/Images/slideMTA.jpg" AlternateText="First slide"  />
        </div>
        <div class="item">
            <asp:Image ID="slide2" class="second-slide" runat="server" ImageUrl="~/Images/slideMTA2.jpg" AlternateText="Second slide"  />
        </div>
        <div class="item">
          <img class="third-slide" src="~/Images/slide.jpg" alt="Third slide" />
             <asp:Image ID="Image3" class="third-slide" runat="server" ImageUrl="~/Images/slideprogramming1.gif" AlternateText="Third slide"  />
        </div>
        <div class="item">
            <asp:Image ID="Image4" class="fourth-slide" runat="server" ImageUrl="~/Images/slideprogramming2.jpg" AlternateText="Fourth slide"  />
        </div>
                <div class="item">
            <asp:Image ID="Image5" class="fifth-slide" runat="server" ImageUrl="~/Images/slideprogramming3.jpg" AlternateText="Fifth slide"  />
        </div>
                <div class="item">
            <asp:Image ID="Image6" class="sixth-slide" runat="server" ImageUrl="~/Images/slidewebdesign.jpg" AlternateText="Sixth slide"  />
        </div>
                <div class="item">
            <asp:Image ID="Image7" class="seventh-slide" runat="server" ImageUrl="~/Images/slidewebdesign2.jpg" AlternateText="Second slide"  />
        </div>
                <div class="item">
            <asp:Image ID="Image8" class="eight-slide" runat="server" ImageUrl="~/Images/slidedatabase.gif" AlternateText="Second slide"  />
        </div>
          <div class="item">
            <asp:Image ID="Image9" class="ninth-slide" runat="server" ImageUrl="~/Images/slidedatabase2.gif" AlternateText="Second slide"  />
        </div>
          <div class="item">
            <asp:Image ID="Image10" class="tenth-slide" runat="server" ImageUrl="~/Images/slideNetwork.jpg" AlternateText="Second slide"  />
        </div>
          <div class="item">
            <asp:Image ID="Image11" class="eleventh-slide" runat="server" ImageUrl="~/Images/slideNetwork2.jpg" AlternateText="Second slide"  />
        </div>
          <div class="item">
            <asp:Image ID="Image12" class="twelfth-slide" runat="server" ImageUrl="~/Images/sliderProjectMgmt.jpg" AlternateText="Second slide"  />
        </div>
          <div class="item">
            <asp:Image ID="Image13" class="thirteenth-slide" runat="server" ImageUrl="~/Images/sliderProjectMgmt2.jpg" AlternateText="Second slide"  />
        </div>


      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- closing myCarousel -->

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="mainContent" runat="server">
    
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
