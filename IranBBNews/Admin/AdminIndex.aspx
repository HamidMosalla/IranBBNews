<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true"
    CodeFile="AdminIndex.aspx.cs" Inherits="Admin_AdminIndex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">

    <div id="adminmenu">
        <div id="adminlist">
            <ul>
                <li><a href="AdminIndex.aspx" title="مدیریت صفحه ی اصلی"><span>مدیریت صفحه ی اصلی</span></a></li>
                <li><a href="NewsAdmin.aspx" title="مدیریت اخبار"><span>ارسال اخبار</span></a></li>
                <li><a href="EditNewsAdmin.aspx" title="مدیریت اخبار"><span>مدیریت اخبار</span></a></li>
                <li><a href="PictureAdmin.aspx" title="مدیریت عکس ها"><span>ارسال عکس ها</span></a></li>
                <li><a href="EditPictureAdmin.aspx" title="مدیریت عکس ها"><span>مدیریت عکس ها</span></a></li>
                <li><a href="VideoAdmin.aspx" title="مدیریت ویدئوها"><span>ارسال ویدئوها</span></a></li>
                <li><a href="EditVideoAdmin.aspx" title="مدیریت ویدئوها"><span>مدیریت ویدئوها</span></a></li>
                <li><a href="BlogPostAdmin.aspx" title="مدیریت وبلاگ"><span>ارسال وبلاگ</span></a></li>
                <li><a href="EditBlogPostAdmin.aspx" title="مدیریت وبلاگ"><span>مدیریت وبلاگ</span></a></li>
                <li><a href="UserAdmin.aspx" title="مدیریت اعضا"><span>مدیریت اعضا</span></a></li>
            </ul>
        </div>
    </div>



    <div id="AdminContent">
      <br />
   <br />
      <br />
   <br />
        <asp:Label ID="NewsPostMessage" runat="server" 
            Text="مطالب منتخب با موفقیت ثبت شد." ForeColor="#FF3300" Visible="False"></asp:Label>
      <br />
   <br />
      <br />
   <br />
        <span style="font-size: medium; color: #FF3300">منتخب سردبیر</span>
   <br />
   <br />
        <asp:TextBox ID="AdminSelectionTitle" Width="200px" runat="server"></asp:TextBox>&nbsp;&nbsp; :عنوان
           <br />
   <br />
        <asp:TextBox ID="AdminSelectionLink" Width="200px" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp; :لینک
           <br />
   <br />
        <asp:TextBox ID="AdminSelectionWriter" Width="200px" runat="server"></asp:TextBox>:نویسنده
                     <br />
   <br />
        <asp:Button ID="SubmitAdminSelection"  runat="server" Text="ثبت مطلب" 
            onclick="SubmitAdminSelection_Click" />


        <br />
        <br />
        <br />
        <br />
        <br />



    
    </div>


</asp:Content>
