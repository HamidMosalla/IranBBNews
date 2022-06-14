using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Users_UserProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void UserProfileDataSource_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
        // یک رفرنس از یوزری که لاگین کرده ایجاد میکند
        MembershipUser currentUser = Membership.GetUser();

        // آیدی یوزری که در حال حاظر لاگین کرده را در میاورد
        Guid currentUserId = (Guid)currentUser.ProviderUserKey;

        // آیدی یوزری که در حال حاضر لاگین کرده را به پارامتری ات یوزر آیدی ارسال میکند
        e.Command.Parameters["@UserIDfk"].Value = currentUserId;

    }
    protected void UserProfile_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        SettingsUpdatedMessage.Visible = true;

    }
}