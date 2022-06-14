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

public partial class Admin_UserAdmin : System.Web.UI.Page
{
    public MembershipUser SearchedUser;
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }


    protected void  SeachUser_Click(object sender, EventArgs e)
        {
                    MembershipUser SearchedUser = Membership.GetUser(ActUser.Text);
                    Email.Text = SearchedUser.Email;
                    if (SearchedUser.IsOnline == true)
                    {
                        IsOnline.Text = "آنلاین است";
                        IsOnline.ForeColor = System.Drawing.Color.Green;
                    }
                    else 
                    {
                        IsOnline.Text = "آفلاین است";
                        IsOnline.ForeColor = System.Drawing.Color.Red;
                    }
                    
                    IsLockedOut.Checked = SearchedUser.IsLockedOut;
                    LastLoginDate.Text = SearchedUser.LastLoginDate.ToString();
                    CreateDate.Text = SearchedUser.CreationDate.ToString();

            }



    protected void SubmitUserChange_Click(object sender, EventArgs e)
    {

        MembershipUser SearchedUser = Membership.GetUser(ActUser.Text);
        SearchedUser.Email = Email.Text;
        Membership.UpdateUser(SearchedUser);

        if(IsLockedOut.Checked==false)
        {
            SearchedUser.UnlockUser();
        }



        if(Approved.Checked==false)
        {
            SearchedUser.IsApproved = true;
            Membership.UpdateUser(SearchedUser);

        }

        else if (Approved.Checked == true)
        {
            SearchedUser.IsApproved = false;
            Membership.UpdateUser(SearchedUser);
        }

    }
}
