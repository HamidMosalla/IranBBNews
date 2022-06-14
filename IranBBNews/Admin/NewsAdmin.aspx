<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="NewsAdmin.aspx.cs" Inherits="Admin_NewsAdmin" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor" TagPrefix="HTMLEditor" %>
    
    
    

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



    <div id="NewsPost">
    <br />
    <asp:Label ID="NewsPostMessage" runat="server"
     Text="خبر با موفقیت ارسال شد."
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

       <p> عنوان خبر: <asp:TextBox Width="400px" ID="NewsPostTitle" runat="server"></asp:TextBox> 
           <asp:RequiredFieldValidator ID="NewsPostTitleRequiredFieldValidator" runat="server" 
               ControlToValidate="NewsPostTitle" ErrorMessage="پر کردن عنوان خبر الزامی است." 
               ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </p>


        <br />
        <br />
         <p> خلاصه ی خبر:</p>
         <br />
       <asp:TextBox ID="NewsSummary" Width="350px" Height="100px" TextMode="MultiLine" 
            runat="server" EnableTheming="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="NewsSummaryRequiredFieldValidator" 
            runat="server" ErrorMessage="پر کردن خلاصه ی خبر الزامی است." 
            ControlToValidate="NewsSummary" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <br />
        <br />

        <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>

        <HTMLEditor:Editor Height="370px"  ID="Editor1" runat="server" />
        </div>
        <asp:RequiredFieldValidator ID="Editor1RequiredFieldValidator" runat="server" 
            ErrorMessage="پر کردن محتوای خبر الزامی است." ControlToValidate="Editor1" 
            ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:FileUpload ID="NewsPicture" runat="server" />

        <br />
        <br />

        <asp:Button ID="SubmitNews" runat="server" Text="ارسال خبر" Height="28px"  
            Width="99px" onclick="SubmitNews_Click" />

   </div>

    </div>

</asp:Content>

