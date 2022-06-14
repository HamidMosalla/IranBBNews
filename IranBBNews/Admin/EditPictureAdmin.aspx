<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="EditPictureAdmin.aspx.cs" Inherits="Admin_EditPictureAdmin" %>

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
        
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="PictureID" 
            DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                            Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="PictureIDLabel" runat="server" Text='<%# Eval("PictureID") %>' />
                    </td>
                    <td>
<asp:LinkButton ID="NewsTitleLabel" Text='<%# Eval("PictureTitle") %>' CommandArgument='<%# Eval("PictureID") %>' onclick="Link_Click"   oncommand="Link_Command" runat="server"></asp:LinkButton>
                    </td>
                    <td>
                        <asp:Label ID="PictureDateLabel" runat="server" 
                            Text='<%# Eval("PictureDate") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="PictureVisibleCheckBox" runat="server" 
                            Checked='<%# Eval("PictureVisible") %>' Enabled="false" />
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
                        <asp:Label ID="PictureIDLabel1" runat="server" 
                            Text='<%# Eval("PictureID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PictureTitleTextBox" runat="server" 
                            Text='<%# Bind("PictureTitle") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PictureDateTextBox" runat="server" 
                            Text='<%# Bind("PictureDate") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="PictureVisibleCheckBox" runat="server" 
                            Checked='<%# Bind("PictureVisible") %>' />
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
                        <asp:TextBox ID="PictureTitleTextBox" runat="server" 
                            Text='<%# Bind("PictureTitle") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PictureDateTextBox" runat="server" 
                            Text='<%# Bind("PictureDate") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="PictureVisibleCheckBox" runat="server" 
                            Checked='<%# Bind("PictureVisible") %>' />
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
                        <asp:Label ID="PictureIDLabel" runat="server" Text='<%# Eval("PictureID") %>' />
                    </td>
                    <td>
                            <asp:LinkButton ID="NewsTitleLabel" Text='<%# Eval("PictureTitle") %>' CommandArgument='<%# Eval("PictureID") %>' onclick="Link_Click"   oncommand="Link_Command" runat="server"></asp:LinkButton>
                    </td>
                    <td>
                        <asp:Label ID="PictureDateLabel" runat="server" 
                            Text='<%# Eval("PictureDate") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="PictureVisibleCheckBox" runat="server" 
                            Checked='<%# Eval("PictureVisible") %>' Enabled="false" />
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
                                        شماره ی عکس</th>
                                    <th runat="server">
                                        عنوان عکس</th>
                                    <th runat="server">
                                        تاریخ ارسال</th>
                                    <th runat="server">
                                        تایید عکس ارسالی</th>
                                </tr>
                                <tr ID="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" 
                            style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
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
                        <asp:Label ID="PictureIDLabel" runat="server" Text='<%# Eval("PictureID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PictureTitleLabel" runat="server" 
                            Text='<%# Eval("PictureTitle") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PictureDateLabel" runat="server" 
                            Text='<%# Eval("PictureDate") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="PictureVisibleCheckBox" runat="server" 
                            Checked='<%# Eval("PictureVisible") %>' Enabled="false" />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:IranBBNewsConnectionString %>" 
            DeleteCommand="DELETE FROM [Picture] WHERE [PictureID] = @PictureID" 
            InsertCommand="INSERT INTO [Picture] ([PictureTitle], [PictureDate], [PictureVisible]) VALUES (@PictureTitle, @PictureDate, @PictureVisible)" 
            SelectCommand="SELECT [PictureID], [PictureTitle], [PictureDate], [PictureVisible] FROM [Picture] ORDER BY [PictureDate] DESC" 
            UpdateCommand="UPDATE [Picture] SET [PictureTitle] = @PictureTitle, [PictureDate] = @PictureDate, [PictureVisible] = @PictureVisible WHERE [PictureID] = @PictureID">
            <DeleteParameters>
                <asp:Parameter Name="PictureID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PictureTitle" Type="String" />
                <asp:Parameter DbType="DateTime2" Name="PictureDate" />
                <asp:Parameter Name="PictureVisible" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PictureTitle" Type="String" />
                <asp:Parameter DbType="DateTime2" Name="PictureDate" />
                <asp:Parameter Name="PictureVisible" Type="Boolean" />
                <asp:Parameter Name="PictureID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

            <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    
    </div>



</asp:Content>

