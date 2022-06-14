<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="EditBlogPostAdmin.aspx.cs" Inherits="Admin_EditBlogPostAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<div id="adminmenu">
        <div id="adminlist">
            <ul>
                <li><a href="AdminIndex.aspx" title="مدیریت صفحه ی اصلی"><span>مدیریت صفحه ی اصلی</span></a></li>
                <li><a href="NewsAdmin.aspx" title="مدیریت اخبار"><span>ارسال اخبار</span></a></li>
                <li><a href="EditNewsAdmin.aspx" title="مدیریت اخبار"><span>مدیریت اخبار</span></a></li>
                <li><a href="PictureAdmin.aspx" title="مدیریت عکس ها"><span>ارسال عکس ها</span></a></li>
                <li><a href="EditPictureAdmin.aspx" title="مدیریت عکس ها"><span>مدیریت عکس ها</span></a></li>
                <li><a href="VideoAdmin.aspx" title="مدیریت ویدئوها"><span>ارسال ویدئوها</span></a></li>
                <li><a href="EditVideoAdmin.aspx" title="مدیریت ویدئوها"><span>مدیریت ویدئوها</span></a></li>
                <li><a href="BlogPostAdmin.aspx" title="مدیریت وبلاگ"><span>ارسال وبلاگ</span></a></li>
                <li><a href="EditBlogPostAdmin.aspx" title="مدیریت وبلاگ"><span>مدیریت وبلاگ</span></a></li>
                <li><a href="UserAdmin.aspx" title="مدیریت اعضا"><span>مدیریت اعضا</span></a></li>
            </ul>
        </div>
    </div>



    <div id="AdminContent">
    
        
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="BlogPostID" 
            DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                            Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="BlogPostIDLabel" runat="server" 
                            Text='<%# Eval("BlogPostID") %>' />
                    </td>
                    <td>
 <asp:LinkButton ID="NewsTitleLabel" Text='<%# Eval("BlogPostTitle") %>' CommandArgument='<%# Eval("BlogPostID") %>' onclick="Link_Click"   oncommand="Link_Command" runat="server"></asp:LinkButton>
                    </td>
                    <td>
                        <asp:Label ID="BlogPostDateLabel" runat="server" 
                            Text='<%# Eval("BlogPostDate") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="BlogPostVisibleCheckBox" runat="server" 
                            Checked='<%# Eval("BlogPostVisible") %>' Enabled="false" />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                            Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                            Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="BlogPostIDLabel1" runat="server" 
                            Text='<%# Eval("BlogPostID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="BlogPostTitleTextBox" runat="server" 
                            Text='<%# Bind("BlogPostTitle") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="BlogPostDateTextBox" runat="server" 
                            Text='<%# Bind("BlogPostDate") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="BlogPostVisibleCheckBox" runat="server" 
                            Checked='<%# Bind("BlogPostVisible") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" 
                    style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>
                            No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                            Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                            Text="Clear" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:TextBox ID="BlogPostTitleTextBox" runat="server" 
                            Text='<%# Bind("BlogPostTitle") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="BlogPostDateTextBox" runat="server" 
                            Text='<%# Bind("BlogPostDate") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="BlogPostVisibleCheckBox" runat="server" 
                            Checked='<%# Bind("BlogPostVisible") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                            Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="BlogPostIDLabel" runat="server" 
                            Text='<%# Eval("BlogPostID") %>' />
                    </td>
                    <td>
                      <asp:LinkButton ID="NewsTitleLabel" Text='<%# Eval("BlogPostTitle") %>' CommandArgument='<%# Eval("BlogPostID") %>' onclick="Link_Click"   oncommand="Link_Command" runat="server"></asp:LinkButton>
                    </td>
                    <td>
                        <asp:Label ID="BlogPostDateLabel" runat="server" 
                            Text='<%# Eval("BlogPostDate") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="BlogPostVisibleCheckBox" runat="server" 
                            Checked='<%# Eval("BlogPostVisible") %>' Enabled="false" />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table ID="itemPlaceholderContainer" runat="server" border="1" 
                                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server">
                                    </th>
                                    <th runat="server">
                                        شماره ی پست</th>
                                    <th runat="server">
                                        عنوان پست</th>
                                    <th runat="server">
                                        تاریخ ارسال</th>
                                    <th runat="server">
                                        تایید پست</th>
                                </tr>
                                <tr ID="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" 
                            style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                        ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                                        ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                            Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="BlogPostIDLabel" runat="server" 
                            Text='<%# Eval("BlogPostID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="BlogPostTitleLabel" runat="server" 
                            Text='<%# Eval("BlogPostTitle") %>' />
                    </td>
                    <td>
                        <asp:Label ID="BlogPostDateLabel" runat="server" 
                            Text='<%# Eval("BlogPostDate") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="BlogPostVisibleCheckBox" runat="server" 
                            Checked='<%# Eval("BlogPostVisible") %>' Enabled="false" />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>


    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:IranBBNewsConnectionString %>" 
            DeleteCommand="DELETE FROM [BlogPost] WHERE [BlogPostID] = @BlogPostID" 
            InsertCommand="INSERT INTO [BlogPost] ([BlogPostTitle], [BlogPostDate], [BlogPostVisible]) VALUES (@BlogPostTitle, @BlogPostDate, @BlogPostVisible)" 
            SelectCommand="SELECT [BlogPostID], [BlogPostTitle], [BlogPostDate], [BlogPostVisible] FROM [BlogPost] ORDER BY [BlogPostDate] DESC" 
            UpdateCommand="UPDATE [BlogPost] SET [BlogPostTitle] = @BlogPostTitle, [BlogPostDate] = @BlogPostDate, [BlogPostVisible] = @BlogPostVisible WHERE [BlogPostID] = @BlogPostID">
            <DeleteParameters>
                <asp:Parameter Name="BlogPostID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BlogPostTitle" Type="String" />
                <asp:Parameter DbType="DateTime2" Name="BlogPostDate" />
                <asp:Parameter Name="BlogPostVisible" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="BlogPostTitle" Type="String" />
                <asp:Parameter DbType="DateTime2" Name="BlogPostDate" />
                <asp:Parameter Name="BlogPostVisible" Type="Boolean" />
                <asp:Parameter Name="BlogPostID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>


        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

    
    </div>


</asp:Content>

