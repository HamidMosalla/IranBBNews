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
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class NewsDetail : System.Web.UI.Page
{
    public int NewsID;
    public int NewsRatingValue;
    TextBox CommentWeb, CommentT;
    protected void Page_Load(object sender, EventArgs e)
    {

        NewsID = int.Parse(Request.QueryString["NewsID"]);


        string connectionStringRating = ConfigurationManager.ConnectionStrings["IranBBNewsConnectionString"].ConnectionString;
        string selectCommandRating = "SELECT NewsRating FROM News WHERE NewsID=" + NewsID;
        using (SqlConnection myConnectionRating = new SqlConnection(connectionStringRating))
        {
            myConnectionRating.Open();
            SqlCommand myCommandRating = new SqlCommand(selectCommandRating, myConnectionRating);
            SqlDataAdapter sqlDaRating = new SqlDataAdapter(myCommandRating);
            DataTable dtRating = new DataTable();
            sqlDaRating.Fill(dtRating);
            if (dtRating.Rows[0]["NewsRating"] == DBNull.Value)
            {
                NewsRatingValue = 0;
            }
            else
            {
                NewsRatingValue = Convert.ToInt32(dtRating.Rows[0]["NewsRating"]);
            }
            myConnectionRating.Close();
            RatingResult.Text = NewsRatingValue.ToString();

            if(NewsRatingValue>0)
            { RatingResult.ForeColor = System.Drawing.Color.Green; }

            else if (NewsRatingValue < 0)
            { RatingResult.ForeColor = System.Drawing.Color.Red; }
                
            
            




            string connectionString = ConfigurationManager.ConnectionStrings["IranBBNewsConnectionString"].ConnectionString;
            string selectCommand = "SELECT SubjectIDfk, NewsTitle, NewsDate, NewsSummary, NewsContent, NewsPicture FROM News WHERE NewsID=" + NewsID;

            using (SqlConnection myConnection = new SqlConnection(connectionString))
            {

                myConnection.Open();
                SqlCommand myCommand = new SqlCommand(selectCommand, myConnection);
                SqlDataAdapter sqlDa = new SqlDataAdapter(myCommand);
                DataTable dt = new DataTable();
                sqlDa.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    NewsDetailHeader.InnerText = dt.Rows[0]["NewsTitle"].ToString();
                    NewsDetailDate.InnerText = dt.Rows[0]["NewsDate"].ToString();
                    NewsDetailPicture.ImageUrl = dt.Rows[0]["NewsPicture"].ToString();
                    NewsDetailSummary.InnerText = dt.Rows[0]["NewsSummary"].ToString();
                    //NewsDetailContent.Text = dt.Rows[0]["NewsContent"].ToString();
                    NewsDetailContent.InnerHtml = HttpUtility.HtmlDecode(dt.Rows[0]["NewsContent"].ToString());
                    int Subject;
                    Subject = int.Parse(dt.Rows[0]["SubjectIDfk"].ToString());

                    switch (Subject)
                    {
                        case 1:
                            NewsDetailSubject.Text = "سیاسی";
                            NewsDetailSubject.PostBackUrl = "NewsSubPage/Politic.aspx";
                            break;
                        case 2:
                            NewsDetailSubject.Text = "اجتماعی";
                            NewsDetailSubject.PostBackUrl = "NewsSubPage/Social.aspx";
                            break;
                        case 3:
                            NewsDetailSubject.Text = "فرهنگی";
                            NewsDetailSubject.PostBackUrl = "NewsSubPage/Cultural.aspx";
                            break;
                        case 4:
                            NewsDetailSubject.Text = "هنری";
                            NewsDetailSubject.PostBackUrl = "NewsSubPage/Art.aspx";
                            break;
                        case 5:
                            NewsDetailSubject.Text = "ورزشی";
                            NewsDetailSubject.PostBackUrl = "NewsSubPage/Sport.aspx";
                            break;
                        case 6:
                            NewsDetailSubject.Text = "بین المللی";
                            NewsDetailSubject.PostBackUrl = "NewsSubPage/International.aspx";
                            break;
                        case 7:
                            NewsDetailSubject.Text = "زنان";
                            NewsDetailSubject.PostBackUrl = "NewsSubPage/Women.aspx";
                            break;
                        case 8:
                            NewsDetailSubject.Text = "اقتصادی";
                            NewsDetailSubject.PostBackUrl = "NewsSubPage/Economic.aspx";
                            break;
                        case 9:
                            NewsDetailSubject.Text = "طنز";
                            NewsDetailSubject.PostBackUrl = "NewsSubPage/Satire.aspx";
                            break;
                        default:
                            NewsDetailSubject.Text = "مشخص نشده";
                            break;

                    }

                }
                myConnection.Close();


                ContentPlaceHolder Placeholder = (ContentPlaceHolder)Master.FindControl("MainContent");
                if (Placeholder != null)
                {
                    //لاگین ویو را در کانتنت پلیس هولدر مورد نظر پیدا میکند    

                    LoginView lv = (LoginView)Placeholder.FindControl("LoginView1");

                    if (lv != null)
                    {
                        //Find LoginName control with in AnonymousTemplate of LoginView control

                        //Note that in order to find the control in LoggedIn template developer 

                        //should have been authenticated ELSE it fails
                        CommentWeb = (TextBox)lv.FindControl("CommentWebsite");
                        CommentT = (TextBox)lv.FindControl("CommentText");

                    }
                }
            }
        }
    }
    protected void SubmitComment_Click(object sender, EventArgs e)
    {

        if (!Page.IsValid)
          return;
 
     // یوزری که هم اکنون به سایت لاگین کرده را شناسایی و یک رفرنس درست میکند
     MembershipUser currentUser = Membership.GetUser();
     Guid currentUserId = (Guid)currentUser.ProviderUserKey;
 
     // یک رکورد از کامنت مورد نظر در جدول کامنت وارد میکند
     string connectionString =
          ConfigurationManager.ConnectionStrings["IranBBNewsConnectionString"].ConnectionString;
     string insertCommand = "INSERT INTO Comment(UserIDfk, NBPVID, CommentType, CommentName, CommentEmail, CommentWebsite, CommentText) VALUES(@UserIDfk,@NBPVID, @CommentType, @CommentName, @CommentEmail, @CommentWebsite, @CommentText)";
     using (SqlConnection myConnection = new SqlConnection(connectionString))
     {
          myConnection.Open();
          SqlCommand myCommand = new SqlCommand(insertCommand, myConnection);
          myCommand.Parameters.AddWithValue("@UserIDfk", currentUserId);
          myCommand.Parameters.AddWithValue("@NBPVID", NewsID);
          myCommand.Parameters.AddWithValue("@CommentType", 0);
          myCommand.Parameters.AddWithValue("@CommentName", currentUser.UserName);
          myCommand.Parameters.AddWithValue("@CommentEmail", currentUser.Email);
          myCommand.Parameters.AddWithValue("@CommentWebsite", CommentWeb.Text.Trim());
          myCommand.Parameters.AddWithValue("@CommentText", CommentT.Text);
          myCommand.ExecuteNonQuery();
          myConnection.Close();
     }
 
     //تکست باکس حای ایمیل و نظر کاربر از مکحتوایی که وارد کرده خالی میشود این این امر بعد از ارسال به دیتابیس اتفاق میوفتد
     CommentWeb.Text = string.Empty;
     CommentT.Text = string.Empty;
     //بعد از فشردن دکمه لیست ویوو دوباره به دیتابیس بایند میشود و کامنت تازه ثبت شده نمایش داده میشود   
     CommentList.DataBind();   
    }


    protected void Link_Click(object sender, EventArgs e)
    {

    }
    protected void Link_Command(object sender, CommandEventArgs e)
    {
        Response.Redirect("~/NewsDetail.aspx?NewsID=" + e.CommandArgument.ToString());
    }
    protected void Link_Click2(object sender, EventArgs e)
    {

    }
    protected void Link_Command2(object sender, CommandEventArgs e)
    {
        Response.Redirect("~/BlogPostDetail.aspx?BlogPostID=" + e.CommandArgument.ToString());
    }
    protected void Link_Click3(object sender, EventArgs e)
    {

    }
    protected void Link_Command3(object sender, CommandEventArgs e)
    {
        Response.Redirect("~/VideoDetail.aspx?VideoID=" + e.CommandArgument.ToString());
    }
    protected void Link_Click4(object sender, EventArgs e)
    {

    }
    protected void Link_Command4(object sender, CommandEventArgs e)
    {
        Response.Redirect("~/PictureDetail.aspx?PictureID=" + e.CommandArgument.ToString());
    }
    protected void ThumbsUp_Click(object sender, ImageClickEventArgs e)
    {

        string connectionString = ConfigurationManager.ConnectionStrings["IranBBNewsConnectionString"].ConnectionString;
        string updateSql2 = "UPDATE News SET NewsRating = @NewsRating WHERE NewsID=" + NewsID;
        using (SqlConnection myConnection = new SqlConnection(connectionString))
        {
            myConnection.Open();
            SqlCommand myCommand = new SqlCommand(updateSql2, myConnection);
            NewsRatingValue = NewsRatingValue + 1;
            myCommand.Parameters.AddWithValue("@NewsRating", NewsRatingValue);
            myCommand.ExecuteNonQuery();
            myConnection.Close();

        }

    }
    protected void ThumbsDown_Click(object sender, ImageClickEventArgs e)
    {


        string connectionString = ConfigurationManager.ConnectionStrings["IranBBNewsConnectionString"].ConnectionString;
        string updateSql2 = "UPDATE News SET NewsRating = @NewsRating WHERE NewsID=" + NewsID;
        using (SqlConnection myConnection = new SqlConnection(connectionString))
        {
            myConnection.Open();
            SqlCommand myCommand = new SqlCommand(updateSql2, myConnection);
            NewsRatingValue = NewsRatingValue - 1;
            myCommand.Parameters.AddWithValue("@NewsRating", NewsRatingValue);
            myCommand.ExecuteNonQuery();
            myConnection.Close();

        }



    }
}