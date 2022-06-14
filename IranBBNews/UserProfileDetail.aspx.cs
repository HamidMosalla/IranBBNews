using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class UserProfileDetail : System.Web.UI.Page
{
    public string UserNamepage;
    public MembershipUser muUserName;
    protected void Page_Load(object sender, EventArgs e)
    {
        UserNamepage = Request.QueryString["UserName"];


        MembershipUser muUserName = Membership.GetUser(UserNamepage);
        string connectionString = ConfigurationManager.ConnectionStrings["IranBBNewsConnectionString"].ConnectionString;
        string selectCommand = "SELECT Name, LastName, Avatar, About, WebSite, Email, Messenger FROM UserProfiles WHERE UserIDfk='" + muUserName.ProviderUserKey + "'";
        using (SqlConnection myConnection = new SqlConnection(connectionString))
        {

            myConnection.Open();
            SqlCommand myCommand = new SqlCommand(selectCommand, myConnection);
            SqlDataAdapter sqlDa = new SqlDataAdapter(myCommand);
            DataTable dt = new DataTable();
            sqlDa.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                ProfileName.Text = dt.Rows[0]["Name"].ToString();
                ProfileLastName.Text = dt.Rows[0]["LastName"].ToString();
                ProfileAvatar.ImageUrl = dt.Rows[0]["Avatar"].ToString();
                ProfileAbout.Text = dt.Rows[0]["About"].ToString();
                ProfileWebSite.Text = dt.Rows[0]["WebSite"].ToString();
                ProfileEmail.Text = dt.Rows[0]["Email"].ToString();
                ProfileMessenger.Text = dt.Rows[0]["Messenger"].ToString();
            }
            myConnection.Close();

        }
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
}