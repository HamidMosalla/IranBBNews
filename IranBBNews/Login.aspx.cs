using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Request.IsAuthenticated && !string.IsNullOrEmpty(Request.QueryString["ReturnUrl"]))
                // یوزر مورد نظر آنآترایز هست و به پیج مورد نظر ریدایرکت میشه
                Response.Redirect("~/UnauthorizedAccess.aspx");
        }

    }
    protected void myLogin_LoginError(object sender, EventArgs e)
    {
        MembershipUser usrInfo = Membership.GetUser(myLogin.UserName);
        if (usrInfo != null)
        {
            // آیا یوزر قفل شده؟
            if (usrInfo.IsLockedOut)
            {
                myLogin.FailureText = "اکانت شما به خاطر اشتباه وارد شدن بیش از حد اطلاعات برای ورود قفل شده است، لطفا برای باز کردن آن با آدمین تماس بگیرید یا پانزده دقیقه صبر کنید و دوباره تلاش کنید.";
            }
        }
    }
}