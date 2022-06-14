<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="VideoDetail.aspx.cs" Inherits="VideoDetail" %>

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



<div id="contentpost">

<h2 style=" font-size:large; border-bottom:2px solid #CCC" id="NewsDetailHeader" runat="server"></h2>
<br />
<p id="NewsDetailDate" style="color:#73A" runat="server"></p> <strong>دسته بندی:&nbsp</strong><asp:LinkButton ID="NewsDetailSubject" runat="server"></asp:LinkButton>
<br />
  <span style="color: #6600FF"><strong>نوشته شده توسط: </strong></span><asp:LinkButton ID="P2" onclick="Link_Click8"   oncommand="Link_Command8" runat="server"></asp:LinkButton>
<br />
<hr />
<br />
<br />

    <asp:HyperLink ID="VideoHyperLink3" runat="server">دانلود ویدئو</asp:HyperLink>

 <br />
  <br />
   
  <hr />
    <b>امتیاز بدهید!&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</b> <asp:ImageButton ID="ThumbsDown" runat="server" 
        ImageUrl="~/Images/thumbs_down.png" onclick="ThumbsDown_Click" /> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <asp:ImageButton ID="ThumbsUp" runat="server" ImageUrl="~/Images/thumbs_up.png" 
        onclick="ThumbsUp_Click" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <asp:Label ID="RatingResult" runat="server" Text="Label"></asp:Label>
        
  <br />
  <br />

  
</div>



<div id="Comment" style=" direction:rtl">
    <asp:ListView ID="CommentList" runat="server" 
        DataSourceID="NewsCommentsDataSource">
       
        
        <EmptyDataTemplate>
            <span>نظری برای نمایش وجود ندارد.</span>
        </EmptyDataTemplate>

        <ItemTemplate>
        <span style="">
        نوشته شده توسط:            <asp:Label ID="CommentNameLabel" runat="server" 
                Text='<%# Eval("CommentName") %>' />
                در:
            <asp:Label ID="CommentDateLabel" runat="server" 
                Text='<%# Eval("CommentDate") %>' />
            <br />
            <br />
            <asp:Label ID="CommentTextLabel" runat="server" Text='<%# Eval("CommentText") %>' />
            <br />
            <br />
            <br />
        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# Eval("CommentWebsite") %>' runat="server">وبسایت</asp:HyperLink>  &nbsp;&nbsp;&nbsp; <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# Eval("CommentEmail") %>' runat="server">ایمیل</asp:HyperLink>
            
             
           
            <br />
            </span>
            <hr />
        </ItemTemplate>
        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                            ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        <asp:NumericPagerField />
                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                            ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
      
    </asp:ListView>
   
    <asp:SqlDataSource ID="NewsCommentsDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:IranBBNewsConnectionString %>" 
        SelectCommand="SELECT [CommentDate], [CommentEmail], [CommentName], [CommentWebsite], [CommentText] FROM [Comment] WHERE (([NBPVID] = @NBPVID) AND ([CommentType] = @CommentType)) ORDER BY [CommentDate] DESC">
        <SelectParameters>
            <asp:QueryStringParameter Name="NBPVID" QueryStringField="VideoID" 
                Type="Int32" />
            <asp:Parameter DefaultValue="3" Name="CommentType" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
   
</div>


<div id="CommentPost" style=" direction:rtl">
    <asp:LoginView ID="LoginView1" runat="server">
     <LoggedInTemplate>
     <p>نظر خود را برای ما ارسال کنید</p>
     <br />
   <b>وبسایت:&nbsp; </b> &nbsp;<asp:TextBox ID="CommentWebsite" Width="200px" runat="server"></asp:TextBox>
    &nbsp;<br />
    <br />
    <asp:TextBox ID="CommentText" Height="200px" Width="500px" TextMode="MultiLine" runat="server"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="CommentTextRequiredFieldValidator" 
        runat="server" ErrorMessage="لطفا نظر خود را وارد کنید." 
        ControlToValidate="CommentText" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    <br />
    <br />
    <br />
    <asp:Button ID="SubmitComment" runat="server" Text="ارسال نظر" 
        onclick="SubmitComment_Click" />


     </LoggedInTemplate>


     <AnonymousTemplate>


     <div style=" border:solid">
     <p>برای ارسال نظر خود باید به سیستم وارد شوید.</p>
     <br />
     <br />
     <a href="Login.aspx">ورود</a>
     <br />
     <br />
     <a href="Users/CreatingUserAccounts.aspx">عضویت</a>
     </div>

     </AnonymousTemplate>


    </asp:LoginView>



   


</div>



   
</div>


</asp:Content>

