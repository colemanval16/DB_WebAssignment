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
	    <div class="col-md-3 col-md-offset-1">       
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
    <br /> <br /> <br /> <br /> <br /> 
        <div class="row">
            <div class="col-md-6 col-md-offset-1">
             <br /> <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CourseID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="CourseID" HeaderText="CourseID" ReadOnly="True" SortExpression="CourseID" />
                        <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
                        <asp:BoundField DataField="CourseDescription" HeaderText="CourseDescription" SortExpression="CourseDescription" />
                        <asp:BoundField DataField="CourseOptiumDuration" HeaderText="CourseOptiumDuration" SortExpression="CourseOptiumDuration" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ToodleDBConnectionString %>" SelectCommand="SELECT [CourseID], [CourseName], [CourseDescription], [CourseOptiumDuration] FROM [Course]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Course] WHERE [CourseID] = @original_CourseID AND [CourseName] = @original_CourseName AND (([CourseDescription] = @original_CourseDescription) OR ([CourseDescription] IS NULL AND @original_CourseDescription IS NULL)) AND [CourseOptiumDuration] = @original_CourseOptiumDuration" InsertCommand="INSERT INTO [Course] ([CourseID], [CourseName], [CourseDescription], [CourseOptiumDuration]) VALUES (@CourseID, @CourseName, @CourseDescription, @CourseOptiumDuration)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Course] SET [CourseName] = @CourseName, [CourseDescription] = @CourseDescription, [CourseOptiumDuration] = @CourseOptiumDuration WHERE [CourseID] = @original_CourseID AND [CourseName] = @original_CourseName AND (([CourseDescription] = @original_CourseDescription) OR ([CourseDescription] IS NULL AND @original_CourseDescription IS NULL)) AND [CourseOptiumDuration] = @original_CourseOptiumDuration">
                    <DeleteParameters>
                        <asp:Parameter Name="original_CourseID" Type="String" />
                        <asp:Parameter Name="original_CourseName" Type="String" />
                        <asp:Parameter Name="original_CourseDescription" Type="String" />
                        <asp:Parameter Name="original_CourseOptiumDuration" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CourseID" Type="String" />
                        <asp:Parameter Name="CourseName" Type="String" />
                        <asp:Parameter Name="CourseDescription" Type="String" />
                        <asp:Parameter Name="CourseOptiumDuration" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CourseName" Type="String" />
                        <asp:Parameter Name="CourseDescription" Type="String" />
                        <asp:Parameter Name="CourseOptiumDuration" Type="Int32" />
                        <asp:Parameter Name="original_CourseID" Type="String" />
                        <asp:Parameter Name="original_CourseName" Type="String" />
                        <asp:Parameter Name="original_CourseDescription" Type="String" />
                        <asp:Parameter Name="original_CourseOptiumDuration" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                </div>
	    <div class="col-md-3">       
           <br /> 
            <img src="Images/settingIcon.png" class="img-responsive accountImage" alt="student Info Icon"/>  
        </div>
    </div>
        <br/><br/><br/>
    </div>
</asp:Content>
