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

public partial class Admin_BlogPostAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SubmitNews_Click(object sender, EventArgs e)
    {
        // یوزری که هم اکنون به سایت لاگین کرده را شناسایی و یک رفرنس درست میکند
        MembershipUser currentUser = Membership.GetUser();
        Guid currentUserId = (Guid)currentUser.ProviderUserKey;

        string connectionString = ConfigurationManager.ConnectionStrings["IranBBNewsConnectionString"].ConnectionString;
        string insertCommand = "INSERT INTO BlogPost(UserIDfk, SubjectIDfk, BlogPostTitle, BlogPostSummary, BlogPostContent, BlogPostPicture, BlogPostVisible) VALUES(@UserIDfk, @SubjectIDfk, @BlogPostTitle, @BlogPostSummary, @BlogPostContent, @BlogPostPicture, @BlogPostVisible)";

        using (SqlConnection myConnection = new SqlConnection(connectionString))
        {

            myConnection.Open();
            SqlCommand myCommand = new SqlCommand(insertCommand, myConnection);
            myCommand.Parameters.AddWithValue("@UserIDfk", currentUserId);
            myCommand.Parameters.AddWithValue("@SubjectIDfk", NewsSubject.SelectedValue);
            myCommand.Parameters.AddWithValue("@BlogPostTitle", NewsPostTitle.Text.Trim());
            myCommand.Parameters.AddWithValue("@BlogPostSummary", NewsSummary.Text.Trim());
            myCommand.Parameters.AddWithValue("@BlogPostContent", HttpUtility.HtmlEncode(Editor1.Content));
            myCommand.Parameters.AddWithValue("@BlogPostVisible", 1);

            if (NewsPicture.HasFile)
            {
                string FileName = Path.GetFileName(NewsPicture.PostedFile.FileName);
                NewsPicture.SaveAs(Server.MapPath("../Images/NewsPicture/" + FileName));
                myCommand.Parameters.AddWithValue("@BlogPostPicture", "Images/NewsPicture/" + FileName);
            }
            else
            {
                myCommand.Parameters.AddWithValue("@BlogPostPicture", DBNull.Value);
            }

            myCommand.ExecuteNonQuery();
            NewsPostMessage.Visible = true;
            myConnection.Close();

        }
    }
}