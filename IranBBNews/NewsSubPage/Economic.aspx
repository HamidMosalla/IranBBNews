<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Economic.aspx.cs" Inherits="NewsSubPage_Economic" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div id="subpage1">
    <span style="font-size: medium; color: #990000">خبرهای اقتصادی</span>
    <br />
    <br />
<div id="contentpost">
  
    <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2" 
        DataKeyNames="NewsID">

        <EmptyDataTemplate>
            <span>اطلاعاتی برای نمایش وجود ندارد.</span>
        </EmptyDataTemplate>
       


        <ItemTemplate>
            <span style="">
    <asp:LinkButton ID="NewsTitleLabel" Text='<%# Eval("NewsTitle") %>' CommandArgument='<%# Eval("NewsID") %>' onclick="Link_Click"   oncommand="Link_Command" runat="server"></asp:LinkButton>
            <br />
            <asp:Image ID="NewsImage" Width="70" Height="70" ImageUrl='<%# Eval("[NewsPicture]","../{0}") %>'  runat="server" />
            <br />
            <asp:Label ID="NewsDateLabel" runat="server" Text='<%# Eval("NewsDate") %>' ForeColor="Silver" Font-Size="Smaller" />
            <br />
            <asp:Label ID="NewsSummaryLabel" runat="server" Text='<%# Eval("NewsSummary") %>' />
                <br />
                <br />
            </span>
        </ItemTemplate>


        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
                <asp:DataPager ID="DataPager1" runat="server" PageSize="5">
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:IranBBNewsConnectionString %>" 
        
        SelectCommand="SELECT [NewsTitle], [NewsDate], [NewsSummary], [NewsID], [NewsPicture] FROM [News] WHERE ([SubjectIDfk] = @SubjectIDfk) ORDER BY [NewsDate] DESC">
        <SelectParameters>
            <asp:Parameter DefaultValue="8" Name="SubjectIDfk" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    

</div>

</div>
<hr />

<div id="subpage2">
 <span style="font-size: medium; color: #990000">آخرین عکس های اقتصادی</span>
    <br />
    <br />
    <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource1" 
        DataKeyNames="PictureID">

        <EmptyDataTemplate>
            <span>اطلاعاتی برای نمایش وجود ندارد.</span>
        </EmptyDataTemplate>
       


        <ItemTemplate>
            <span style="">
    <asp:LinkButton ID="PictureTitleLabel" Text='<%# Eval("PictureTitle") %>' CommandArgument='<%# Eval("PictureID") %>' onclick="Link_Click2"   oncommand="Link_Command2" runat="server"></asp:LinkButton>
            <br />
            <asp:Image ID="PictureImage" Width="70" Height="70" ImageUrl='<%# Eval("[PictureUrl]","../{0}") %>'  runat="server" />
            <br />
            <asp:Label ID="PictureDateLabel" runat="server" Text='<%# Eval("PictureDate") %>' ForeColor="Silver" Font-Size="Smaller" />
            <br />
            </span>
        </ItemTemplate>


        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
                <asp:DataPager ID="DataPager1" runat="server" PageSize="5">
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
        
        
        SelectCommand="SELECT [PictureID], [SubjectIDfk], [PictureTitle], [PictureDate], [PictureURL], [PictureVisible] FROM [Picture] WHERE (([SubjectIDfk] = @SubjectIDfk) AND ([PictureVisible] = @PictureVisible)) ORDER BY [PictureDate] DESC">
        <SelectParameters>
            <asp:Parameter DefaultValue="8" Name="SubjectIDfk" Type="Int32" />
            <asp:Parameter DefaultValue="True" Name="PictureVisible" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
    

</div>
<hr />


<div id="subpage3">
    
     <span style="font-size: medium; color: #990000">آخرین مطالب اقتصادی بلاگستان</span>
    <br />
    <br />
  
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource3" 
        DataKeyNames="BlogPostID">

        <EmptyDataTemplate>
            <span>اطلاعاتی برای نمایش وجود ندارد.</span>
        </EmptyDataTemplate>
       


        <ItemTemplate>
            <span style="">
    <asp:LinkButton ID="BlogPostTitleLabel" Text='<%# Eval("BlogPostTitle") %>' CommandArgument='<%# Eval("BlogPostID") %>' onclick="Link_Click3"   oncommand="Link_Command3" runat="server"></asp:LinkButton>
            <br />
            <asp:Image ID="BlogPostImage" Width="70" Height="70" ImageUrl='<%# Eval("[BlogPostPicture]","../{0}") %>'  runat="server" />
            <br />
            <asp:Label ID="BlogPostDateLabel" runat="server" Text='<%# Eval("BlogPostDate") %>' ForeColor="Silver" Font-Size="Smaller" />
            <br />
            <asp:Label ID="BlogPostSummaryLabel" runat="server" Text='<%# Eval("BlogPostSummary") %>' />
                <br />
                <br />
            </span>
        </ItemTemplate>


        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
                <asp:DataPager ID="DataPager1" runat="server" PageSize="5">
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:IranBBNewsConnectionString %>" 
        
        
         SelectCommand="SELECT [BlogPostID], [SubjectIDfk], [BlogPostTitle], [BlogPostDate], [BlogPostSummary], [BlogPostPicture], [BlogPostVisible] FROM [BlogPost] WHERE (([SubjectIDfk] = @SubjectIDfk) AND ([BlogPostVisible] = @BlogPostVisible)) ORDER BY [BlogPostDate] DESC">
        <SelectParameters>
            <asp:Parameter DefaultValue="8" Name="SubjectIDfk" Type="Int32" />
            <asp:Parameter DefaultValue="True" Name="BlogPostVisible" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
    
</div>

<hr />
    

<div id="subpage4">


<span style="font-size: medium; color: #990000">آخرین ویدئوهای اقتصادی</span>
    <br />
    <br />

    <asp:ListView ID="ListView4" runat="server" DataSourceID="SqlDataSource4" 
        DataKeyNames="VideoID">

        <EmptyDataTemplate>
            <span>اطلاعاتی برای نمایش وجود ندارد.</span>
        </EmptyDataTemplate>
       


        <ItemTemplate>
            <span style="">
    <asp:LinkButton ID="VideoTitleLabel" Text='<%# Eval("VideoTitle") %>' CommandArgument='<%# Eval("VideoID") %>' onclick="Link_Click4"   oncommand="Link_Command4" runat="server"></asp:LinkButton>
            <br />
            <asp:Image ID="VideoImage" Width="70" Height="70" ImageUrl="~/Images/Video.png"  runat="server" />
            <br />
            <asp:Label ID="VideoDateLabel" runat="server" Text='<%# Eval("VideoDate") %>' ForeColor="Silver" Font-Size="Smaller" />
            <br />
            <br />
            </span>
        </ItemTemplate>


        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
                <asp:DataPager ID="DataPager1" runat="server" PageSize="5">
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

    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:IranBBNewsConnectionString %>" 
        
        
        SelectCommand="SELECT [VideoID], [SubjectIDfk], [VideoTitle], [VideoDate], [VideoVisible] FROM [Video] WHERE (([SubjectIDfk] = @SubjectIDfk) AND ([VideoVisible] = @VideoVisible)) ORDER BY [VideoDate] DESC">
        <SelectParameters>
            <asp:Parameter DefaultValue="8" Name="SubjectIDfk" Type="Int32" />
            <asp:Parameter DefaultValue="True" Name="VideoVisible" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
    

</div>

</asp:Content>

