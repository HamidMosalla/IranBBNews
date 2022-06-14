<%@ Page Title="" Debug="true" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="UserProfileDetail.aspx.cs" Inherits="UserProfileDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">


<div id="leftside">

<div id="leftside1">

<br />
<br />
    
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" 
        DataKeyNames="NewsID">

        <EmptyDataTemplate>
            <span>اطلاعاتی برای نمایش وجود ندارد.</span>
        </EmptyDataTemplate>
       


        <ItemTemplate>
            <span style="">
    <asp:LinkButton ID="NewsTitleLabel" CssClass="NewsLink" Text='<%# Eval("NewsTitle") %>' CommandArgument='<%# Eval("NewsID") %>' onclick="Link_Click"   oncommand="Link_Command" runat="server"></asp:LinkButton>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:IranBBNewsConnectionString %>" 
        SelectCommand="SELECT TOP 8 [NewsTitle], [NewsDate], [NewsID] FROM [News] ORDER BY [NewsID] DESC">
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
    <asp:LinkButton ID="NewsTitleLabel" CssClass="NewsLink" Text='<%# Eval("BlogPostTitle") %>' CommandArgument='<%# Eval("BlogPostID") %>' onclick="Link_Click2"   oncommand="Link_Command2" runat="server"></asp:LinkButton>
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


<div id="leftside4">

<br />
<br />
    
    
    <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource3" 
        DataKeyNames="VideoID">

        <EmptyDataTemplate>
            <span>اطلاعاتی برای نمایش وجود ندارد.</span>
        </EmptyDataTemplate>
       


        <ItemTemplate>
            <span style="">
    <asp:LinkButton ID="NewsTitleLabel" CssClass="NewsLink" Text='<%# Eval("VideoTitle") %>' CommandArgument='<%# Eval("VideoID") %>' onclick="Link_Click3"   oncommand="Link_Command3" runat="server"></asp:LinkButton>
            <br />
            <asp:Label ID="NewsDateLabel" runat="server" Text='<%# Eval("VideoDate") %>' ForeColor="Silver" Font-Size="Smaller" />
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
        SelectCommand="SELECT TOP 8 [VideoTitle], [VideoDate], [VideoID] FROM [Video] ORDER BY [VideoID] DESC">
    </asp:SqlDataSource>
    

</div>




</div>






<div id="rightside">

<br />
<br />
<br />

 <div id="contentpost">

    &nbsp <strong><span style="font-size: medium; color: #CC0000">نام:&nbsp</span></strong>&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp<asp:Label ID="ProfileName" runat="server" Text="Label"></asp:Label>
<br />
<br />
<br />
 &nbsp<strong><span style="font-size: medium; color: #CC0000"> نام خانوادگی:</span></strong>&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Label ID="ProfileLastName" runat="server" Text="Label"></asp:Label>
 <br />
<br />
<br />
     &nbsp; <strong><span style="font-size: medium; color: #CC0000">&nbsp;آواتار:</span></strong>&nbsp;&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp&nbsp <asp:Image ID="ProfileAvatar" runat="server" />
 <br />
<br />
<br />
     &nbsp; &nbsp;<strong><span style="font-size: medium; color: #CC0000">درباره:</span></strong>&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp&nbsp&nbsp&nbsp<asp:Label ID="ProfileAbout" runat="server" Text="Label"></asp:Label>
 <br />
<br />
<br />
     &nbsp;&nbsp&nbsp;<strong><span style="font-size: medium; color: #CC0000">وبسایت:</span></strong>&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp&nbsp&nbsp<asp:Label ID="ProfileWebSite" runat="server" Text="Label"></asp:Label>
 <br />
<br />
<br />
&nbsp &nbsp&nbsp<strong><span style="font-size: medium; color: #CC0000">ایمیل:</span></strong>&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp&nbsp&nbsp <asp:Label ID="ProfileEmail" runat="server" Text="Label"></asp:Label>
 <br />
<br />
<br />
&nbsp &nbsp&nbsp<strong><span style="font-size: medium; color: #CC0000">مسنجر:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     </span></strong>&nbsp&nbsp&nbsp&nbsp <asp:Label ID="ProfileMessenger" runat="server" Text="Label"></asp:Label>


   </div>


   <br />
   <br />
   <br />


</div>
</asp:Content>

