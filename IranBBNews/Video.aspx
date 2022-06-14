<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Video.aspx.cs" Inherits="Video" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">


<div id="leftside">

<div id="leftside1">

 <br />
 <br />
    
    <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource3" 
        DataKeyNames="NewsID">

        <EmptyDataTemplate>
            <span>اطلاعاتی برای نمایش وجود ندارد.</span>
        </EmptyDataTemplate>
       


        <ItemTemplate>
            <span style="">
    <asp:LinkButton ID="NewsTitleLabel" CssClass="NewsLink" Text='<%# Eval("NewsTitle") %>' CommandArgument='<%# Eval("NewsID") %>' onclick="Link_Click2"   oncommand="Link_Command2" runat="server"></asp:LinkButton>
            <br />
            <asp:Label ID="NewsDateLabel" runat="server" Text='<%# Eval("NewsDate") %>' ForeColor="Silver" Font-Size="Smaller" />
            <br />
            </span>
        </ItemTemplate>


        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
           
        </LayoutTemplate>
       
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:IranBBNewsConnectionString %>" 
        SelectCommand="SELECT TOP 8 [NewsTitle], [NewsDate], [NewsID] FROM [News] ORDER BY [NewsID] DESC">
    </asp:SqlDataSource>


    </div>


<div id="leftside3">





  <br />
 <br />
    


     <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2" 
        DataKeyNames="BlogPostID">

        <EmptyDataTemplate>
            <span>اطلاعاتی برای نمایش وجود ندارد.</span>
        </EmptyDataTemplate>
       


        <ItemTemplate>
            <span style="">
    <asp:LinkButton ID="NewsTitleLabel" CssClass="NewsLink" Text='<%# Eval("BlogPostTitle") %>' CommandArgument='<%# Eval("BlogPostID") %>' onclick="Link_Click3"   oncommand="Link_Command3" runat="server"></asp:LinkButton>
            <br />
            <asp:Label ID="NewsDateLabel" runat="server" Text='<%# Eval("BlogPostDate") %>' ForeColor="Silver" Font-Size="Smaller" />
            <br />
            </span>
        </ItemTemplate>


        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
           
        </LayoutTemplate>
       
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:IranBBNewsConnectionString %>" 
        SelectCommand="SELECT TOP 8 [BlogPostTitle], [BlogPostDate], [BlogPostID] FROM [BlogPost] ORDER BY [BlogPostID] DESC">
    </asp:SqlDataSource>



  </div>


<div id="leftside2">

  <br />
 <br />
    
    
     <asp:ListView ID="ListView4" runat="server" DataSourceID="SqlDataSource4" 
        DataKeyNames="PictureID">

        <EmptyDataTemplate>
            <span>اطلاعاتی برای نمایش وجود ندارد.</span>
        </EmptyDataTemplate>
       


        <ItemTemplate>
            <span style="">
    <asp:LinkButton ID="NewsTitleLabel" CssClass="NewsLink" Text='<%# Eval("PictureTitle") %>' CommandArgument='<%# Eval("PictureID") %>' onclick="Link_Click4"   oncommand="Link_Command4" runat="server"></asp:LinkButton>
            <br />
            <asp:Label ID="NewsDateLabel" runat="server" Text='<%# Eval("PictureDate") %>' ForeColor="Silver" Font-Size="Smaller" />
            <br />
            </span>
        </ItemTemplate>


        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
           
        </LayoutTemplate>
       
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:IranBBNewsConnectionString %>" 
        SelectCommand="SELECT TOP 8 [PictureTitle], [PictureDate], [PictureID] FROM [Picture] ORDER BY [PictureID] DESC">
    </asp:SqlDataSource>




</div>




</div>






<div id="rightside">



<div id="contentpost">


<asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" 
        DataKeyNames="VideoID">

        <EmptyDataTemplate>
            <span>اطلاعاتی برای نمایش وجود ندارد.</span>
        </EmptyDataTemplate>
       


        <ItemTemplate>
            <span style="">
    <asp:LinkButton ID="NewsTitleLabel" Text='<%# Eval("VideoTitle") %>' CommandArgument='<%# Eval("VideoID") %>' onclick="Link_Click"   oncommand="Link_Command" runat="server"></asp:LinkButton>
            <br />
            <asp:Image ID="NewsImage" Width="160" Height="160" runat="server" ImageUrl="~/Images/Video.png" />
            <br />
            <asp:Label ID="NewsDateLabel" runat="server" Text='<%# Eval("VideoDate") %>' ForeColor="Silver" Font-Size="Smaller" />
                <br />
                <br />
            </span>
        </ItemTemplate>


        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
                <asp:DataPager ID="DataPager1" runat="server" PageSize="6">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                            ShowNextPageButton="False" ShowPreviousPageButton="False" FirstPageText="اولین" LastPageText="آخرین" NextPageText="بعدی" PreviousPageText="قبلی" />
                        <asp:NumericPagerField />
                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                            ShowNextPageButton="False" ShowPreviousPageButton="False" FirstPageText="اولین" LastPageText="آخرین" NextPageText="بعدی" PreviousPageText="قبلی" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
       
    </asp:ListView>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:IranBBNewsConnectionString %>" 
        
        
        SelectCommand="SELECT [VideoID], [SubjectIDfk], [UserIDfk], [VideoTitle], [VideoDate], [VideoURL], [VideoVisible] FROM [Video] WHERE ([VideoVisible] = @VideoVisible) ORDER BY [VideoDate] DESC">
        <SelectParameters>
            <asp:Parameter DefaultValue="True" Name="VideoVisible" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>

</div>

   
</div>








</asp:Content>

