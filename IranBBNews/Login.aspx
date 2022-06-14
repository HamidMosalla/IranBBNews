<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<div id="Userlogin">

        <asp:Login ID="myLogin" runat="server" 
            CreateUserText="نام کاربری ندارید؟ یک نام کاربری جدید ایجاد کنید!"
            CreateUserUrl="~/Users/CreatingUserAccounts.aspx"
            LoginButtonText="ورود" 
            PasswordLabelText="کلمه ی عبور:" 
            RememberMeText="مرا به خاطر داشته باش." TitleText="ورود به سایت" 
            UserNameLabelText="نام کاربری:" onloginerror="myLogin_LoginError">

        </asp:Login>

    </div>

</asp:Content>

