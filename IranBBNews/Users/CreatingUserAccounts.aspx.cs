using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Users_CreatingUserAccounts : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CreateAccountButton_Click(object sender, EventArgs e)
    {
    }

    /*
    const string passwordQuestion = "What is your favorite color";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            SecurityQuestion.Text = passwordQuestion;

    }
    protected void CreateAccountButton_Click(object sender, EventArgs e)
    {
        MembershipCreateStatus createStatus;
        MembershipUser newUser = Membership.CreateUser(Username.Text, Password.Text, Email.Text, passwordQuestion, SecurityAnswer.Text, true, out createStatus);

        switch (createStatus)
        {
            case MembershipCreateStatus.Success:
                CreateAccountResults.Text = "نام کاربری با موفقیت ایجاد شد!";
                break;
            case MembershipCreateStatus.DuplicateUserName:
                CreateAccountResults.Text = "این نام کاربری در سیستم موجود میباشد، نام کاربری دیگری انتخاب کنید.";
                break;

            case MembershipCreateStatus.DuplicateEmail:
                CreateAccountResults.Text = "ایمیل وارد شده در سیستم موجود میباشد، لطفا ایمیل دیگری انتخاب کنید";
                break;
            case MembershipCreateStatus.InvalidEmail:
                CreateAccountResults.Text = "ایمیل وارد شده فاقد اعتبار است";
                break;
            case MembershipCreateStatus.InvalidAnswer:
                CreateAccountResults.Text = "سوال امنیتی وارد شده فاقد اعتبار است";
                break;
            case MembershipCreateStatus.InvalidPassword:
                CreateAccountResults.Text = "پسورد وارد شده فاقد اعتبار است، پسورد باید شامل هفت کراکتر همراه با حداقل یک کراکتر غیر عددی الفبایی باشد";

                break;
            default:
                CreateAccountResults.Text = "ایجاد نام کاربری جدید با خطایی شناخته نشده مواجه شد، نام کاربری ایجاد نشد";
                break;
        }

    }
     */
    protected void RegisterUser_CreatingUser(object sender, LoginCancelEventArgs e)
    {
        string trimmedUserName = RegisterUser.UserName.Trim();
        if (RegisterUser.UserName.Length != trimmedUserName.Length)
        {
            // پیغام خطا را نمایش میدهد.
            InvalidUserNameOrPasswordMessage.Text = "The username cannot contain leading or trailing spaces.";
            InvalidUserNameOrPasswordMessage.Visible = true;

            // پروسه ی ایجاد نام کاربری را متوقف میکند
            e.Cancel = true;
        }
        else
        {
            // اعهتبار پسورد بررسی میشود، اطمینان حاصل میکنیم که نام کاربری در پسورد وجود ندارد

            if (RegisterUser.Password.IndexOf(RegisterUser.UserName, StringComparison.OrdinalIgnoreCase) >= 0)
            {
                // پیغام خطا میدهد
                InvalidUserNameOrPasswordMessage.Text = "The username may not appear anywhere in the password.";
                InvalidUserNameOrPasswordMessage.Visible = true;
                // پروسه ی ایجاد نام کاربری را متوقف میکند
                e.Cancel = true;
            }
        }

    }
    protected void RegisterUser_CreatedUser(object sender, EventArgs e)
    {


        // یوزر آیدی کاربری که هم اکنون ثبت نام کرده را بیرون میکشد
     MembershipUser newUser = Membership.GetUser(RegisterUser.UserName);
     Guid newUserId = (Guid)newUser.ProviderUserKey;
 
     // یه رکورد جدید در تیبل یوزر پروفایلز ایجاد میکند
     string connectionString =
          ConfigurationManager.ConnectionStrings["IranBBNewsConnectionString"].ConnectionString;
     string insertSql = "INSERT INTO UserProfiles(UserIDfk, Name, LastName, Website, About) VALUES(@UserIDfk, @Name, @LastName, @Website, @About )";
     using (SqlConnection myConnection = new SqlConnection(connectionString))
     {
          myConnection.Open();
          SqlCommand myCommand = new SqlCommand(insertSql, myConnection);
          myCommand.Parameters.AddWithValue("@UserIDfk", newUserId);
          myCommand.Parameters.AddWithValue("@Name", DBNull.Value);
          myCommand.Parameters.AddWithValue("@LastName", DBNull.Value);
          myCommand.Parameters.AddWithValue("@Website", DBNull.Value);
          myCommand.Parameters.AddWithValue("@About", DBNull.Value);
          myCommand.ExecuteNonQuery();
          myConnection.Close();
     }




    }
    protected void RegisterUser_ActiveStepChanged(object sender, EventArgs e)
    {


        // آیا به مرحله ی پایانی رسیده ایم؟
     if (RegisterUser.ActiveStep.Title == "Complete")
     {
         WizardStep UserSettings = RegisterUser.FindControl("UserSettings") as WizardStep;

          // یک رفرنس از تکست باکس ایجاد میکند
         TextBox Name = UserSettings.FindControl("Name") as TextBox;
         TextBox LastName = UserSettings.FindControl("LastName") as TextBox;
         TextBox WebSite = UserSettings.FindControl("WebSite") as TextBox;
         TextBox About = UserSettings.FindControl("About") as TextBox;

          // رکورد جدول یوزرپروفایل همان یوزر را اپدیت میکند
          // یوزر آیدی یوزر تازه اد شده را بیرون میکشد
          MembershipUser newUser = Membership.GetUser(RegisterUser.UserName);
          Guid newUserId = (Guid)newUser.ProviderUserKey;
 
          // یک اد شده ی قبلی را در تیبل یوزرپروفایل اپدیت میکند
          string connectionString = ConfigurationManager.ConnectionStrings["IranBBNewsConnectionString"].ConnectionString;
          string updateSql = "UPDATE UserProfiles SET Name = @Name, LastName= @LastName, Website = @Website, About= @About WHERE UserIDfk = @UserIDfk";
          using (SqlConnection myConnection = new SqlConnection(connectionString))
          {
               myConnection.Open();
               SqlCommand myCommand = new SqlCommand(updateSql, myConnection);
               myCommand.Parameters.AddWithValue("@Name", Name.Text.Trim());
               myCommand.Parameters.AddWithValue("@LastName", LastName.Text.Trim());
               myCommand.Parameters.AddWithValue("@Website", WebSite.Text.Trim());
               myCommand.Parameters.AddWithValue("@About", About.Text.Trim());
               myCommand.Parameters.AddWithValue("@UserIDfk", newUserId);
               myCommand.ExecuteNonQuery();
               myConnection.Close();
          }
     }



    }
}