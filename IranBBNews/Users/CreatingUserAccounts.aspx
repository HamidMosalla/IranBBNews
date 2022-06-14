<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="CreatingUserAccounts.aspx.cs" Inherits="Users_CreatingUserAccounts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">


    <div id="UserReg">

    <asp:CreateUserWizard ID="RegisterUser" runat="server" 
            ContinueDestinationPageUrl="~/Login.aspx" 
            oncreatinguser="RegisterUser_CreatingUser" AnswerLabelText="جواب امنیتی:" 
            ConfirmPasswordLabelText="تکرار کلمه ی عبور:" 
            CreateUserButtonText="ایجاد نام کاربری:" EmailLabelText="ایمیل:" 
            PasswordLabelText="کلمه ی عبور:" QuestionLabelText="سوال امنیتی:" 
            UserNameLabelText="نام کاربری:" 
            onactivestepchanged="RegisterUser_ActiveStepChanged" 
            oncreateduser="RegisterUser_CreatedUser" 
            AnswerRequiredErrorMessage="وارد کردن سوال امنیتی الزامی است." 
            CompleteSuccessText="نام کاربری با موفقیت ایجاد شد." 
            ConfirmPasswordCompareErrorMessage="پسورد و تایید پسورد باید با هم همخوانی داشته باشند." 
            ConfirmPasswordRequiredErrorMessage="وارد کردن تایید پسورد الزامی است." 
            DuplicateEmailErrorMessage="ایمیلی که وارد کردید قبلا مورد استفاده قرار گرفته، لطفا ایمیل دیگری وارد کنید." 
            DuplicateUserNameErrorMessage="این نام کاربری قبلا انتخاب شده، لطفا ناک کاربری دیگری انتخاب کنید." 
            EmailRegularExpressionErrorMessage="این ایمیل قبلا انتخاب شده، لطفا ایمیل دیگری انتخاب کنید." 
            EmailRequiredErrorMessage="وارد کردن ایمیل الزامی است." 
            InvalidAnswerErrorMessage="لطفا جواب امنیتی دیگری انتخاب کنید." 
            InvalidEmailErrorMessage="لطفا ایمیلی معتبر وارد کنید." 
            InvalidQuestionErrorMessage="لطفا سوال امنیتی دیگری وارد کنید." 
            PasswordRegularExpressionErrorMessage="لطفا پسورد دیگری انتخاب کنید." 
            PasswordRequiredErrorMessage="وارد کردن پسورد الزامی است." 
            QuestionRequiredErrorMessage="وارد کردن سوال امنیتی الزامی است." 
            UnknownErrorMessage="نام کاربری شما با موفقیت ایجاد نشد، لطفا دوباره تلاش کنید." 
            UserNameRequiredErrorMessage="وارد کردن نام کاربری الزامی است." >
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                <ContentTemplate>
                    <table>
                        <tr>
                            <td align="center" colspan="2">
                                برای بهره بردن از امکانات سایت لطفا ثبت نام کنید.</td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">نام کاربری:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                    ControlToValidate="UserName" ErrorMessage="وارد کردن نام کاربری الزامی است." 
                                    ToolTip="وارد کردن نام کاربری الزامی است." ValidationGroup="RegisterUser">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">کلمه ی عبور:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                    ControlToValidate="Password" ErrorMessage="وارد کردن پسورد الزامی است." 
                                    ToolTip="وارد کردن پسورد الزامی است." ValidationGroup="RegisterUser">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                                    AssociatedControlID="ConfirmPassword">تکرار کلمه ی عبور:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                                    ControlToValidate="ConfirmPassword" 
                                    ErrorMessage="وارد کردن تایید پسورد الزامی است." 
                                    ToolTip="وارد کردن تایید پسورد الزامی است." ValidationGroup="RegisterUser">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">ایمیل:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" 
                                    ControlToValidate="Email" ErrorMessage="وارد کردن ایمیل الزامی است." 
                                    ToolTip="وارد کردن ایمیل الزامی است." ValidationGroup="RegisterUser">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">سوال امنیتی:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" 
                                    ControlToValidate="Question" ErrorMessage="ارد کردن سوال امنیتی الزامی است." 
                                    ToolTip="ارد کردن سوال امنیتی الزامی است." ValidationGroup="RegisterUser">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">جواب امنیتی:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" 
                                    ControlToValidate="Answer" ErrorMessage="وارد کردن سوال امنیتی الزامی است." 
                                    ToolTip="وارد کردن سوال امنیتی الزامی است." ValidationGroup="RegisterUser">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                    ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                    Display="Dynamic" 
                                    ErrorMessage="پسورد و تایید پسورد باید با هم همخوانی داشته باشند." 
                                    ValidationGroup="RegisterUser"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color:Red;">
                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CreateUserWizardStep>
            <asp:WizardStep ID="UserSettings" runat="server" StepType="Step" Title="Your Settings">
               <br />
                <p>
                    <b>نام:</b><br />
                    <asp:TextBox ID="Name" Columns="40" runat="server"></asp:TextBox>
               </p>
               <br />
               <br />
               <br />
               <br />
               <p>
                    <b>نام خانوادگی:</b><br />
                    <asp:TextBox ID="LastName" Columns="40" runat="server"></asp:TextBox>
               </p>
               <br />
               <br />
               <br />
               <br />
               <p>
                    <b>وبسایت:</b><br />
                    <asp:TextBox ID="WebSite" Columns="40" runat="server"></asp:TextBox>
               </p>
                <br />
               <br />
               <br />
               <br />
               <p>
                    <b>درباره:</b><br />
                    <asp:TextBox ID="About" TextMode="MultiLine" Width="95%" Rows="5" runat="server"></asp:TextBox>
                         
               </p>
               <br />
               <br />
               <br />
               <br />
               <br />
               <br />

            </asp:WizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                <ContentTemplate>
                    <table>
                        <tr>
                            <td align="center">
                                Complete</td>
                        </tr>
                        <tr>
                            <td>
                                نام کاربری با موفقیت ایجاد شد.</td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" 
                                    CommandName="Continue" Text="Continue" ValidationGroup="RegisterUser" />
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
        <br />
        <asp:Label ID="InvalidUserNameOrPasswordMessage" ForeColor="red" runat="server" EnableViewState="false" Visible="false"></asp:Label>
    </div>




    
    <!--

<h3>عضویت</h3>
<br />
<br />

<p> <asp:TextBox ID="Username" runat="server"></asp:TextBox> :نام کاربری  </p> 
    <br />
    <br />

    <p> <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox> :کلمه ی عبور  </p> 
    <br />
    <br />

    <p> <asp:TextBox ID="Email" runat="server"></asp:TextBox> :ایمیل  </p> 
    <br />
    <br />

    <p> 
        <asp:Label ID="SecurityQuestion" runat="server"></asp:Label> :سوال امنیتی  </p> 
    <br />
    <br />

    <p> <asp:TextBox ID="SecurityAnswer" runat="server"></asp:TextBox> :جواب سوال امنیتی  </p> 
    <br />
    <br />

    <asp:Button ID="CreateAccountButton" runat="server" Text="ایجاد نام کاربری" 
        onclick="CreateAccountButton_Click" /> 
    <br />
    <br />

   
        <asp:Label ForeColor="red" ID="CreateAccountResults" runat="server"></asp:Label> 
    <br />
    <br />

    -->
</asp:Content>

