<%@ Page Title="" Language="C#" MasterPageFile="~/Toodle.Master" AutoEventWireup="true" CodeBehind="ITnews.aspx.cs" Inherits="Toodle.ITnews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headMeta" runat="server">
    <title>Toodle - IT News from BBC</title>
    <meta name="description" content="Top Technology News from BBC" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="headLinks" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Slider" runat="server">
          <!-- PLACEHOLDER FOR THE SLIDESHOW -->
	<div style="height: 100px; margin-bottom:40px"></div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="mainContent" runat="server">
        <div id="news">
   	<div class="row">
	<div class="col-md-5 col-md-offset-1">
       <h2 class="text-center">Top Tech News from BBC</h2>
         <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="http://feeds.bbci.co.uk/news/technology/rss.xml" XPath="rss/channel/item[position()<=10]"></asp:XmlDataSource>
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="XmlDataSource1" ForeColor="#333333">
            
            <%--Gets or sets the template for the items in the DataList control.Can be used with other data controls such as GridView, etc.--%>
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#E3EAEB" />
            <ItemTemplate>
              
                <%--<%#  %> expression syntax, as used in standard ASP.NET data binding such as Gridview, DataList, etc.--%>
               <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#XPath("link") %>'> <h3> <%#XPath("title") %></h3></asp:HyperLink><br />   
                  
                 <%#XPath("pubDate") %><br />
                <%#XPath("description") %><br />

            </ItemTemplate>
            <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
    </div>
    <div class="col-md-5">
        <h2 class="text-center"><span class="glyphicon glyphicon-bookmark" aria-hidden="true"></span>&nbsp;&nbsp;Save for later</h2>
       
            <table class="table table-hover" id="courseInformationTable" runat="server">
                <tr>
                    <th>Title</th>                  
                    <td><asp:TextBox ID="txtTitle" runat="server" Width="200px" ControlToValidate="txtTitle"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="titleRequired" runat="server" ControlToValidate="txtTitle" 
                            Display="Dynamic" ErrorMessage="**Required**" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>                  
                </tr>
                <tr>
                    <th>URL</th>   
                     <td><asp:TextBox ID="txtURL" runat="server" Width="200px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="urlRequired" runat="server" ControlToValidate="txtURL" 
                            Display="Dynamic" ErrorMessage="**Required**" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>          
    
                </tr>
                <tr>
                     <th>Description</th>
                     <td><asp:TextBox ID="txtDes" runat="server" Width="200px" Height="81px"></asp:TextBox></td>   
                </tr>  
                     
           </table>
        <div class="text-center">
            <asp:Button ID="btnSave" class="btn btn-primary" runat="server" Text="SAVE" OnClick="btnSave_Click" />  
        </div>
    </div>
</div>


        </div>
</asp:Content>
