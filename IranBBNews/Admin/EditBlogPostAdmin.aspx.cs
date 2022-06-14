using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_EditBlogPostAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Link_Click(object sender, EventArgs e)
    {

    }
    protected void Link_Command(object sender, CommandEventArgs e)
    {
        Response.Redirect("~/BlogPostDetail.aspx?BlogPostID=" + e.CommandArgument.ToString());
    }
}