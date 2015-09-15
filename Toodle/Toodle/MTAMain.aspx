<%@ Page Title="" Language="C#" MasterPageFile="~/Toodle.Master" AutoEventWireup="true" CodeBehind="MTAMain.aspx.cs" Inherits="Toodle.MTAMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headMeta" runat="server">
    <meta name="description" content="List of all MTA courses available on Toodle. Here you can sign up for a course and start it." />
    <title>Toodle - MTA courses available</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="headLinks" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="/App_Themes/Main/script.js"></script> 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Slider" runat="server">
          <!-- PLACEHOLDER FOR THE SLIDESHOW -->
	<div style="height: 100px; margin-bottom:40px"></div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="mainContent" runat="server">
    <div class="row">
        <div class="col-md-offset-1 col-md-2 col-sm-12 posCenter">
            <img class="img-circle" src="images/mtaLogo.png" alt="MTA Logo" height="100" width="100">
        </div>
        <div class="col-md-9 col-sm-12">
            <h1>Microsoft Technology Associate (MTA) Courses</h1>
        </div>
    </div>
    <div id="mtaMainContent">   
        <h2>IT Infrastructure Track</h2>
        <article>
            <div class="title">
                <h3>Windows Operating System Fundamentals<span class="arrows">&raquo;</span></h3>
                <asp:Button ID="btnAddWinOpFund" runat="server" Text="Add Course" />
                <asp:Button ID="btnStartWinOpFundCourse" runat="server" Text="Start Course" />
            </div>    
            <div class="courseDescription">      
                <p>Topics covered on this course: Operating System Configurations, Installing and Upgrading Client Systems, Managing Applications, Managing Files and Folders, Managing Devices, and Operating System Maintenance. </p> 
            </div> 
        </article><article> 
            <div class="title">              
                 <h3>Windows Server Administration Fundamentals<span class="arrows">&raquo;</span></h3>
                 <asp:Button ID="btnAddWinSerAdminFund" runat="server" Text="Add Course" />
                 <asp:Button ID="brnStartAddWinSerAdminFund" runat="server" Text="Start Course" />
            </div>
            <div class="courseDescription">
                <p>Topics covered on this course: Server Installation, Server Roles, Active Directory, Storage, Server Performance Management, and Server Maintenance. </p>
            </div>
        </article><article>
            <div class="title">                          
                 <h3>Networking Fundamentals<span class="arrows">&raquo;</span></h3>
                 <asp:Button ID="btnAddNetworkFund" runat="server" Text="Add Course" />
                 <asp:Button ID="btnStartAddNetworkFund" runat="server" Text="Start Course" />
            </div>
            <div class="courseDescription">  
                <p>Topics covered on this course: Network Infrastructures, Network Hardware, and Protocols and Services. </p>
            </div>
        </article><article>
            <div class="title">
                 <h3>Security Fundamentals<span class="arrows">&raquo;</span></h3>
                <asp:Button ID="btnAddSecurityFund" runat="server" Text="Add Course" />
                <asp:Button ID="btnStartSecurityFund" runat="server" Text="Start Course" />
            </div>
            <div class="courseDescription">
                <p>Topics covered on this course: Security Layers, Operating System Security, Network Security, Security Software. </p>
            </div>
        </article><article>
            <div class="title">            
                <h3>Mobility and Device Fundamentals<span class="arrows">&raquo;</span></h3>
                <asp:Button ID="btnAddMobnDevFund" runat="server" Text="Add Course" />
                <asp:Button ID="btnStartMobnDevFund" runat="server" Text="Start Course" />   
            </div>
            <div class="courseDescription">        
             <p>Topics covered on this course: Device configurations, data access and management, device security, cloud services and enterprise mobility </p>
             </div>
        </article><article>
            <div class="title">              
                <h3>Cloud Fundamentals<span class="arrows">&raquo;</span></h3>
                <asp:Button ID="btnAddCloudFund" runat="server" Text="Add Course" />
                <asp:Button ID="btnStartCloudFund" runat="server" Text="Start Course" />
            </div>
            <div class="courseDescription"> 
                <p>Topics covered on this course: Understand the cloud, Enable Microsoft cloud services, Administer Office 365 and Microsoft Intune, Use and Configure Microsoft cloud services, Support cloud users. </p>
            </div>    
        </article>       
        <h2>Database Track</h2>
        <article>
            <div class="title">              
                <h3>Database Fundamentals<span class="arrows">&raquo;</span></h3>
                <asp:Button ID="btnAddDBFund" runat="server" Text="Add Course" OnClick="btnAddDBFund_Click" />
                <asp:Button ID="btnStartDBFund" runat="server" Text="Start Course" Visible="False" OnClick="btnStartDBFund_Click1" />
           </div>
            <div class="courseDescription">  
                <p>Topics covered on this course: Core Database Concepts, Creating Database Objects, Manipulating Data, Data Storage, and Administering a Database. </p>
            </div>  
        </article>  
        <h2>Developer Track</h2>
        <article>
            <div class="title">           
                <h3>Software Development Fundamentals<span class="arrows">&raquo;</span></h3>
                <asp:Button ID="btnAddSWDevFund" runat="server" Text="Add Course" />
                <asp:Button ID="btnStartSWDevFund" runat="server" Text="Start Course" />
            </div>
            <div class="courseDescription">      
                 <p>Topics covered on this course:  Core Programming, Object-Oriented Programming, General Software Development, Web Applications, Desktop Applications, and Databases. </p>
            </div>
        </article><article>
            <div class="title">              
               <h3>Web Development Fundamentals<span class="arrows">&raquo;</span></h3>
                  <asp:Button ID="btnAddWebFund" runat="server" Text="Add Course" />
                  <asp:Button ID="btnStartWebFund" runat="server" Text="Start Course" />
            </div>
            <div class="courseDescription">
                <p>Topics covered on this course: Programming Web Applications, Working with Data and Services, Troubleshooting and Debugging Web Applications, Working with Client-Side Scripting, and Configuring and Deploying Web Applications. </p>
            </div>
        </article><article>
            <div class="title">                          
                <h3>.NET Fundamentals<span class="arrows">&raquo;</span></h3>
                <asp:Button ID="btnAddNetFund" runat="server" Text="Add Course" />
                <asp:Button ID="btnStartNetFund" runat="server" Text="Start Course" />
            </div>
            <div class="courseDescription">
                <p>Topics covered on this course: .NET Framework Concepts, Namespaces and Classes in the .NET Framework, .NET Code Compilation, I/O Classes in the .NET Framework, Security, .NET Languages, and Memory Management. </p>
            </div>
        </article><article>
            <div class="title">                 
                <h3>Gaming Development Fundamentals<span class="arrows">&raquo;</span></h3>
                 <asp:Button ID="btnAddGameFund" runat="server" Text="Add Course" />
                 <asp:Button ID="btnStartGameFund" runat="server" Text="Start Course" />
            </div>
            <div class="courseDescription">
                 <p>Topics covered on this course: Game Design, Hardware, Graphics, and Animation. </p>
            </div>
        </article><article>
            <div class="title">               
                <h3>HTML5 App Development Fundamentals<span class="arrows">&raquo;</span></h3>
                 <asp:Button ID="btnAddAppDevFund" runat="server" Text="Add Course" />
                 <asp:Button ID="btnStartAppDevFund" runat="server" Text="Start Course" />
            </div>
            <div class="courseDescription">
                 <p>Topics covered on this course: Manage the Application Life Cycle, Build the User Interface by Using HTML5, Format the User Interface by Using CSS, Code by Using JavaScript.</p>
            </div>
        </article><article>
            <div class="title">            
                <h3>Software Testing Fundamentals<span class="arrows">&raquo;</span></h3>
                <asp:Button ID="btnAddTestFund" runat="server" Text="Add Course" />
                <asp:Button ID="btnStartTestFund" runat="server" Text="Start Course" />
            </div>
            <div class="courseDescription">
                <p>Topics covered on this course: Testing Fundamentals, Testing Methodologies, Creating Software Tests, Managing Software Test Projects, Working with Bugs, Automating Software Tests. </p>
            </div>  
        </article>
        <div style="clear: both;"></div>
        </div>
        <script src="/App_Themes/Main/js/accordion.js"></script>
</asp:Content>