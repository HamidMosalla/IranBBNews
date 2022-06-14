using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_EditNewsAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Link_Click(object sender, EventArgs e)
    {

    }
    protected void Link_Command(object sender, CommandEventArgs e)
    {
        Response.Redirect("~/NewsDetail.aspx?NewsID=" + e.CommandArgument.ToString());
    }
}