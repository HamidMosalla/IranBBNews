using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Admin_AdminIndex : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SubmitAdminSelection_Click(object sender, EventArgs e)
    {

        string connectionString = ConfigurationManager.ConnectionStrings["IranBBNewsConnectionString"].ConnectionString;
        string insertCommand = "INSERT INTO AdminSelection(AdminSelectionTitle, AdminSelectionLink, AdminSelectionWriter) VALUES(@AdminSelectionTitle, @AdminSelectionLink, @AdminSelectionWriter)";

        using (SqlConnection myConnection = new SqlConnection(connectionString))
        {

            myConnection.Open();
            SqlCommand myCommand = new SqlCommand(insertCommand, myConnection);
            myCommand.Parameters.AddWithValue("@AdminSelectionTitle", AdminSelectionTitle.Text.Trim());
            myCommand.Parameters.AddWithValue("@AdminSelectionLink", AdminSelectionLink.Text.Trim());
            myCommand.Parameters.AddWithValue("@AdminSelectionWriter", AdminSelectionWriter.Text.Trim());
            myCommand.ExecuteNonQuery();
            NewsPostMessage.Visible = true;
            myConnection.Close();

        }
      }

    }
