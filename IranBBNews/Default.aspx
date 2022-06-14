<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
صفحه ی اصلی - Iran BBNews
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">



<div id="Defleftside">


<div id="Ozviat"> 
        
        
         <asp:LoginView ID="LoginView2" runat="server"> 

                        <LoggedInTemplate>
                            <strong>
                            <asp:LoginName ID="LoginName1" runat="server" />
                            :خوش آمدید</strong>
                            <br />
                            <br />
                            <a href="Users/UserIndex.aspx"><span style="font-size: small"><strong>کنترل پنل کاربری</strong></span></a>
                            <br />
                            <a href="Admin/AdminIndex.aspx"><span style="font-size: small"><strong>ورود به بخش مدیریت</strong></span></a>
                            <br />
                            <a href="Admin/UserAdmin.aspx"><span style="font-size: small"><strong>مدیریت کاربران</strong></span></a>
                            <br />
                            <a href="Admin/EditNewsAdmin.aspx"><span style="font-size: small"><strong>مدیریت خبر</strong></span></a>
                            <br />
                            <a href="Admin/EditBlogPostAdmin.aspx"><span style="font-size: small"><strong>مدیریت وبلاگ</strong></span></a>
                            <br />
                            <a href="Admin/EditVideoAdmin.aspx"><span style="font-size: small"><strong>مدیریت ویدئو</strong></span></a>
                            <br />
                            <a href="Admin/EditPictureAdmin.aspx"><span style="font-size: small"><strong>مدیریت عکس</strong></span></a>
                        </LoggedInTemplate>
                        </asp:LoginView>

        
        <asp:LoginView ID="LoginView1" runat="server"> 

                        <LoggedInTemplate>
                            <strong>
                            <asp:LoginName ID="LoginName1" runat="server" />
                            :خوش آمدید</strong>
                            <br />
                            <br />
                            
                           <a href="Users/UserIndex.aspx"><span style="font-size: medium"><strong>کنترل پنل 
                            کاربری</strong></span></a>
                           <br />
                           <a href="Users/UserProfile.aspx"><span style="font-size: medium"><strong> 
                            ویرایش پروفایل</strong></span></a>
                           <br />
                            <a href="Users/BlogPostSend.aspx"><span style="font-size: medium"><strong>ارسال در 
                            بخش وبلاگ</strong></span></a>
                            <br />
                            <a href="Users/VideoSend.aspx"<span style="font-size: medium">ا<strong>رسال 
                            ویدئو</strong></span></a>
                            <br />
                            <a href="Users/PictureSend.aspx"><span style="font-size: medium">ا<strong>رسال عکس</strong></span></a>
                            <br />
                        </LoggedInTemplate>
                        <AnonymousTemplate>

                            <asp:Image ID="Image1"  runat="server" ImageUrl="~/Images/OzviatDarSite.png" />
    

    <span>
        <asp:ImageButton PostBackUrl="~/Users/CreatingUserAccounts.aspx"  ID="ImageButton1" runat="server" ImageUrl="~/Images/Register.png" />
        <asp:ImageButton PostBackUrl="~/Login.aspx"  ID="ImageButton2" runat="server" ImageUrl="~/Images/LoginDefault.png" />
    </span>
                        </AnonymousTemplate>
                    </asp:LoginView>
                    <br />
                    <br />
                    <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutAction="Redirect" LogoutPageUrl="~/Logout.aspx" Font-Size="Medium" LogoutText="خروج" Font-Bold="True" LoginText="" LogoutImageUrl="~/Images/LogoutDefalut.png" />
            
          
                    
                    <br /><br />

    
    </div>

<div id="AksRooz">

<br />
<br />   
     <asp:ListView ID="ListView4" runat="server" DataSourceID="SqlDataSource4" 
        DataKeyNames="PictureID">

        <EmptyDataTemplate>
            <span>اطلاعاتی برای نمایش وجود ندارد.</span>
        </EmptyDataTemplate>
       


        <ItemTemplate>
            <span style="">
    <asp:LinkButton ID="NewsTitleLabel" CssClass="NewsLink" Text='<%# Eval("PictureTitle") %>' CommandArgument='<%# Eval("PictureID") %>' onclick="Link_Click4"   oncommand="Link_Command4" runat="server" ForeColor="Black"></asp:LinkButton>
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

<div id="VideoRooz">

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

<div id="Khabarname">
<br />
<br />
<br />

<asp:HyperLink NavigateUrl="http://ymlp.com/xgjjhjuygmgj" ID="NewsLetter" runat="server" ForeColor="Black">عضویت در خبرنامه</asp:HyperLink>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 

</div>


</div>





<div id="Defrightside">

<div id="Jquery">

    <br />
    <br />
    <asp:ListView ID="ListView6" runat="server" DataSourceID="SqlDataSource6" 
        DataKeyNames="NewsID">

        <EmptyDataTemplate>
            <span>اطلاعاتی برای نمایش وجود ندارد.</span>
        </EmptyDataTemplate>
       


        <ItemTemplate>
            <span style="">
      
    <asp:LinkButton ID="NewsTitleLabel"  CssClass="khabarrooz" Text='<%# Eval("NewsTitle") %>' CommandArgument='<%# Eval("NewsID") %>' onclick="Link_Click"   oncommand="Link_Command" runat="server"></asp:LinkButton>
      <div id="khabarrooz2">
            <asp:Label ID="NewssummaryLable" runat="server" Text='<%# Eval("NewsSummary") %>'></asp:Label>
      </div>
            <asp:Image ID="NewsImage" Width="350px" Height="250px" ImageUrl='<%# Eval("NewsPicture") %>' runat="server" />
            </span>
        </ItemTemplate>


        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
           
        </LayoutTemplate>
       
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
        ConnectionString="<%$ ConnectionStrings:IranBBNewsConnectionString %>" 
        SelectCommand="SELECT TOP 1 [NewsTitle], [NewsSummary], [NewsPicture], [NewsID] FROM [News] ORDER BY [NewsID] DESC">
    </asp:SqlDataSource>

   </div>



<div id="NewsBlogcontainer">



<div id="LastNews">

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

<div id="BlogLastPost">

    
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




</div>


<div id="Montakhabsardabir">
    <br />
    <br />
    <br />
    <asp:ListView ID="ListView5" runat="server" DataSourceID="SqlDataSource5" >
       
        <EmptyDataTemplate>
            <span>اطلاعاتی برای نمایش وجود ندارد.</span>
        </EmptyDataTemplate>
       
        <ItemTemplate>
            <span style="">
            <asp:LinkButton ID="NewsTitleLabel" CssClass="NewsLink" PostBackUrl='<%# Eval("AdminSelectionLink") %>' Text='<%# Eval("AdminSelectionTitle") %>'   runat="server"></asp:LinkButton>
            <br />
            <asp:Label ID="NewsDateLabel" runat="server"  Text='<%# Eval("AdminSelectionWriter") %>'  ForeColor="#666666" Font-Size="Smaller" />:نوشته شده توسط
            <br />
            <br />
            </span>
        </ItemTemplate>


        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
           
        </LayoutTemplate>
       
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
        ConnectionString="<%$ ConnectionStrings:IranBBNewsConnectionString %>" 
        
        SelectCommand="SELECT TOP 4 [AdminSelectionTitle], [AdminSelectionLink], [AdminSelectionWriter] FROM [AdminSelection] ORDER BY [AdminSelectionID] DESC">
    </asp:SqlDataSource>
</div>














</div>
</asp:Content>

