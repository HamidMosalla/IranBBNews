using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // آیا بازدید کننده ادمین است؟
        string userName = User.Identity.Name;
        if (string.Compare(userName, "Admin", true) == 0)
        {
            // یوزر مورد نظر ادمینه، اطلاعات لاگین ویور رو نمایش بده
            LoginView1.Visible = false;
            LoginView2.Visible = true;
        }

        else
        {
            // یوزر مورد نظر ادمین نیست، لاگین ویو مخصوص یوزر معمولی نشون بده
            LoginView1.Visible = true;
            LoginView2.Visible = false;
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