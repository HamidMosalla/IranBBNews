<%@ Page Title="" Debug="true" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="UserAdmin.aspx.cs" Inherits="Admin_UserAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
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

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="ActUser" ErrorMessage="وارد کردن نام یوزر الزامی است" 
            ForeColor="#FF3300"></asp:RequiredFieldValidator>

        <asp:TextBox Width="200px" ID="ActUser" runat="server"></asp:TextBox> &nbsp&nbsp&nbsp&nbsp
        <asp:Button ID="SeachUser" runat="server" Text="جستجوی یوزر" onclick="SeachUser_Click" />&nbsp&nbsp&nbsp&nbsp
            
        <br />
        <br />
        <br />
        <br />
        <asp:TextBox Width="200px" ID="Email" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>:&nbsp;&nbsp;ایمیل</strong>&nbsp;&nbsp; &nbsp;&nbsp;
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<strong>آنلاین بودن:</strong> &nbsp;&nbsp;
        <asp:Label ID="IsOnline" runat="server" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <br />
        <br />
        <br />
        <asp:CheckBox ID="IsLockedOut" runat="server" />
        &nbsp;<strong>:قفل بودن یوزر</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <asp:CheckBox ID="Approved" runat="server" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>:اخراج کاربر</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <asp:Label ID="LastLoginDate" runat="server" ></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;&nbsp;:آخرین 
        تاریخ ورود</strong>&nbsp; &nbsp;&nbsp;
        <br />
        <br />
        <br />
        <asp:Label ID="CreateDate" runat="server"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong>&nbsp;:تاریخ عضویت</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <br />
        <br />
        <br />
        <asp:Button ID="SubmitUserChange" runat="server" Text="ذخیره ی تغییرات" 
            onclick="SubmitUserChange_Click" />&nbsp&nbsp&nbsp&nbsp
        <br />
        <br />
        <br />

    
    </div>

</asp:Content>

