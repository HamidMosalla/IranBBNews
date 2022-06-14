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

public partial class Admin_NewsAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SubmitNews_Click(object sender, EventArgs e)
    {

        
        string connectionString = ConfigurationManager.ConnectionStrings["IranBBNewsConnectionString"].ConnectionString;
        string insertCommand = "INSERT INTO News(SubjectIDfk, NewsTitle, NewsSummary, NewsContent, NewsPicture) VALUES(@SubjectIDfk,@NewsTitle,@NewsSummary,@NewsContent,@NewsPicture)";

        using (SqlConnection myConnection = new SqlConnection(connectionString)) 
        {

            myConnection.Open();
            SqlCommand myCommand = new SqlCommand(insertCommand, myConnection);
            myCommand.Parameters.AddWithValue("@SubjectIDfk", NewsSubject.SelectedValue);
            myCommand.Parameters.AddWithValue("@NewsTitle", NewsPostTitle.Text.Trim());
            myCommand.Parameters.AddWithValue("@NewsSummary", NewsSummary.Text.Trim());
            myCommand.Parameters.AddWithValue("@NewsContent", HttpUtility.HtmlEncode(Editor1.Content));

            if (NewsPicture.HasFile)
            {
                string FileName = Path.GetFileName(NewsPicture.PostedFile.FileName);
                NewsPicture.SaveAs(Server.MapPath("../Images/NewsPicture/" + FileName));
                myCommand.Parameters.AddWithValue("@NewsPicture", "Images/NewsPicture/" + FileName);
            }
            else 
            {
                myCommand.Parameters.AddWithValue("@NewsPicture", DBNull.Value);
            }

            myCommand.ExecuteNonQuery();
            NewsPostMessage.Visible = true;
            myConnection.Close();

        }

    }
}