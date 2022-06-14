<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="VideoSend.aspx.cs" Inherits="Users_VideoSend" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div id="adminmenu">
        <div id="adminlist">
            <ul>
                <li><a href="UserIndex.aspx" title="کنترل پنل کاربری"><span>کنترل پنل کاربری</span></a></li>
                <li><a href="BlogPostSend.aspx" title="ارسال در وبلاگ"><span>ارسال در وبلاگ</span></a></li>
                <li><a href="PictureSend.aspx" title="ارسال عکس ها"><span>ارسال عکس ها</span></a></li>
                <li><a href="VideoSend.aspx" title="ارسال ویدئوها"><span>ارسال ویدئوها</span></a></li>
                <li><a href="UserProfile.aspx" title="ویرایش پروفایل"><span>ویرایش پروفایل</span></a></li>
            </ul>
        </div>
    </div>



    <div id="AdminContent">
    
   <div id="NewsPost">
    <br />
    <asp:Label ID="NewsPostMessage" runat="server"
     Text="ویدئو با موفقیت ارسال شد."
     EnableViewState="False"
     Visible="False" ForeColor="#FF3300"></asp:Label>
    <br />
    <br />
        <asp:DropDownList ID="NewsSubject" runat="server">
            <asp:ListItem Value="1">سیاسی</asp:ListItem>
            <asp:ListItem Value="2">اجتماعی</asp:ListItem>
            <asp:ListItem Value="3">فرهنگی</asp:ListItem>
            <asp:ListItem Value="4">هنری</asp:ListItem>
            <asp:ListItem Value="5">ورزشی</asp:ListItem>
            <asp:ListItem Value="6">بین المللی</asp:ListItem>
            <asp:ListItem Value="7">زنان</asp:ListItem>
            <asp:ListItem Value="8">اقتصادی</asp:ListItem>
            <asp:ListItem Value="9">طنز</asp:ListItem>

        </asp:DropDownList>
       
        
        <br />
        <br />

       <p> عنوان ویدئو: <asp:TextBox Width="400px" ID="NewsPostTitle" runat="server"></asp:TextBox> 
           <asp:RequiredFieldValidator ID="NewsPostTitleRequiredFieldValidator" runat="server" 
               ControlToValidate="NewsPostTitle" ErrorMessage="پر کردن عنوان ویدئو الزامی است." 
               ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </p>

        <br />
        <br />

        <asp:FileUpload ID="NewsVideo" runat="server" />

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="انتخاب ویدئو الزامی است." ForeColor="#FF3300" 
            ControlToValidate="NewsVideo"></asp:RequiredFieldValidator>

        <br />
        <br />

        <asp:Button ID="SubmitNews" runat="server" Text="ارسال ویدئو" Height="28px"  
            Width="99px" onclick="SubmitNews_Click" />

   </div>
    
    </div>
</asp:Content>

