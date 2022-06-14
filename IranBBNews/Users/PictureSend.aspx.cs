using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;

public partial class Users_PictureSend : System.Web.UI.Page
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
        string insertCommand = "INSERT INTO Picture(UserIDfk, SubjectIDfk, PictureTitle, PictureUrl, PictureVisible) VALUES(@UserIDfk, @SubjectIDfk, @PictureTitle, @PictureUrl, @PictureVisible)";

        using (SqlConnection myConnection = new SqlConnection(connectionString))
        {

            myConnection.Open();
            SqlCommand myCommand = new SqlCommand(insertCommand, myConnection);
            myCommand.Parameters.AddWithValue("@UserIDfk", currentUserId);
            myCommand.Parameters.AddWithValue("@SubjectIDfk", NewsSubject.SelectedValue);
            myCommand.Parameters.AddWithValue("@PictureTitle", NewsPostTitle.Text.Trim());
            string FileName = Path.GetFileName(NewsPicture.PostedFile.FileName);
            NewsPicture.SaveAs(Server.MapPath("../Images/Picture/" + FileName));
            myCommand.Parameters.AddWithValue("@PictureUrl", "Images/Picture/" + FileName);
            myCommand.Parameters.AddWithValue("@PictureVisible", 0);

            myCommand.ExecuteNonQuery();
            NewsPostMessage.Visible = true;
            myConnection.Close();

        }
    }
}