<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="Users_UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div id="adminmenu">
        <div id="adminlist">
            <ul>
                <li><a href="UserIndex.aspx" title="کنترل پنل کاربری"><span>کنترل پنل کاربری</span></a></li>
                <li><a href="BlogPostSend.aspx" title="ارسال در وبلاگ"><span>ارسال در وبلاگ</span></a></li>
                <li><a href="PictureSend.aspx" title="ارسال عکس ها"><span>ارسال عکس ها</span></a></li>
                <li><a href="VideoSend.aspx" title="ارسال ویدئوها"><span>ارسال ویدئوها</span></a></li>
                <li><a href="UserProfile.aspx" title="ویرایش پروفایل"><span>ویرایش پروفایل</span></a></li>
            </ul>
        </div>
    </div>



    <div id="AdminContent">

      <div id="UserProfileDetailsView"> 

        <asp:DetailsView ID="UserProfile" runat="server" AutoGenerateRows="False" 
              DataKeyNames="UserIDfk" DataSourceID="UserProfileDataSource" 
              DefaultMode="Edit" onitemupdated="UserProfile_ItemUpdated" 
              CellPadding="10" ForeColor="#333333" GridLines="None" Height="321px" 
              Width="264px"  >
            
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            
            <Fields>
                <asp:TemplateField HeaderText="نام" SortExpression="Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
             <asp:BoundField DataField="LastName" HeaderText="نام خانوادگی" SortExpression="LastName" />
             <asp:BoundField DataField="Email" HeaderText="ایمیل" SortExpression="Email" />
             <asp:BoundField DataField="Avatar" HeaderText="آواتار" SortExpression="Avatar" />
                <asp:TemplateField HeaderText="درباره ی من" SortExpression="About">
                    <EditItemTemplate>
                        <asp:TextBox Width="300px" Height="200px" TextMode="MultiLine" ID="TextBox2" runat="server" Text='<%# Bind("About") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("About") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("About") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
             <asp:BoundField DataField="Messenger" HeaderText="مسنجر" SortExpression="Messenger" />
             <asp:BoundField DataField="WebSite" HeaderText="وب سایت" SortExpression="WebSite" /> 
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="ذخیره تغییرات"></asp:LinkButton>

                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                            CommandName="Cancel" PostBackUrl="~/Users/UserIndex.aspx" Text="صرف نظر"></asp:LinkButton>

                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="Edit"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>

            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />

        </asp:DetailsView>

        <br />
        <br />

        <asp:Label ID="SettingsUpdatedMessage" runat="server"
     Text="تغییرات با موفقیت ذخیره شد."
     EnableViewState="false"
     Visible="false"></asp:Label>



        </div>

        <asp:SqlDataSource ID="UserProfileDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:IranBBNewsConnectionString %>" 
            onselecting="UserProfileDataSource_Selecting" 
            
            
            SelectCommand="SELECT [Messenger], [Email], [WebSite], [About], [Avatar], [LastName], [Name], [UserIDfk] FROM [UserProfiles] WHERE ([UserIDfk] = @UserIDfk)" UpdateCommand="UPDATE UserProfiles SET
      Messenger = @Messenger ,
      Email = @Email ,
      WebSite = @WebSite ,
      About = @About ,
      Avatar = @Avatar ,
      LastName = @LastName ,
      Name = @Name
 WHERE  UserIDfk = @UserIDfk">
            <SelectParameters>
                <asp:Parameter Name="UserIDfk" Type="Object" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Messenger" />
                <asp:Parameter Name="Email" />
                <asp:Parameter Name="WebSite" />
                <asp:Parameter Name="About" />
                <asp:Parameter Name="Avatar" />
                <asp:Parameter Name="LastName" />
                <asp:Parameter Name="Name" />
                <asp:Parameter Name="UserIDfk" />
            </UpdateParameters>
        </asp:SqlDataSource>


    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    
    </div>
</asp:Content>

