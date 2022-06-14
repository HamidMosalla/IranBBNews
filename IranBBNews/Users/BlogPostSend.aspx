<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="BlogPostSend.aspx.cs" Inherits="Users_BlogPostSend" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor" TagPrefix="HTMLEditor" %>

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
     Text="پست با موفقیت ارسال شد."
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

       <p> عنوان پست: <asp:TextBox Width="400px" ID="NewsPostTitle" runat="server"></asp:TextBox> 
           <asp:RequiredFieldValidator ID="NewsPostTitleRequiredFieldValidator" runat="server" 
               ControlToValidate="NewsPostTitle" ErrorMessage="پر کردن عنوان پست الزامی است." 
               ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </p>


        <br />
        <br />
         <p> خلاصه ی پست:</p>
         <br />
       <asp:TextBox ID="NewsSummary" Width="350px" Height="100px" TextMode="MultiLine" 
            runat="server" EnableTheming="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="NewsSummaryRequiredFieldValidator" 
            runat="server" ErrorMessage="پر کردن خلاصه ی پست الزامی است." 
            ControlToValidate="NewsSummary" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <br />
        <br />

        <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>

        <HTMLEditor:Editor Height="370px"  ID="Editor1" runat="server" />
        </div>
        <asp:RequiredFieldValidator ID="Editor1RequiredFieldValidator" runat="server" 
            ErrorMessage="پر کردن محتوای پست الزامی است." ControlToValidate="Editor1" 
            ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:FileUpload ID="NewsPicture" runat="server" />

        <br />
        <br />

        <asp:Button ID="SubmitNews" runat="server" Text="ارسال پست" Height="28px"  
            Width="99px" onclick="SubmitNews_Click" />

   </div>
    </div>
</asp:Content>

