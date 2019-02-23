<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editor_Company.aspx.cs" Inherits="DEV_CMS_Handin01.Editor_Company" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administration - Editor: Company</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label ID="LabelHeading" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Administration"></asp:Label>
            <br />
            <asp:Label ID="LabelTitel" runat="server" Font-Italic="True" Font-Size="Large" Text="Editor page: Company"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="LabelSubheading1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Edit or Delete a Company:"></asp:Label>
            <asp:GridView ID="GridViewCompany" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CompanyID" DataSourceID="SqlDataSource1" Width="600px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="CompanyID" HeaderText="CompanyID" InsertVisible="False" ReadOnly="True" SortExpression="CompanyID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Logo" HeaderText="Logo" SortExpression="Logo" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CMSDBConnectionString %>" DeleteCommand="DELETE FROM [Company] WHERE [CompanyID] = @original_CompanyID AND [Name] = @original_Name AND [Logo] = @original_Logo" InsertCommand="INSERT INTO [Company] ([Name], [Logo]) VALUES (@Name, @Logo)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Company]" UpdateCommand="UPDATE [Company] SET [Name] = @Name, [Logo] = @Logo WHERE [CompanyID] = @original_CompanyID AND [Name] = @original_Name AND [Logo] = @original_Logo">
                <DeleteParameters>
                    <asp:Parameter Name="original_CompanyID" Type="Int32" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Logo" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Logo" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Logo" Type="String" />
                    <asp:Parameter Name="original_CompanyID" Type="Int32" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Logo" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="LabelSubheading3" runat="server" Font-Bold="True" Font-Size="Medium" Text="Upload image to folder:"></asp:Label>
            <br />
            <asp:FileUpload ID="FileUploadImage" runat="server" />
            <br />
            <br />
            <asp:Button ID="ButtonImage" runat="server" OnClick="ButtonImage_Click" Text="Upload Image to folder" />
            <br />
            <br />
            <br />
            <asp:Label ID="LabelMessages" runat="server" Font-Bold="True" Text="No messages"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="LabelSubheading7" runat="server" Text="Create, Update or Delete a Item, Joke or a Company:" Font-Bold="True" Font-Size="Medium"></asp:Label>
            <br />
            <br />
            <asp:Button ID="ButtonItems" runat="server" Font-Bold="True" Text="Items" PostBackUrl="~/Editor_Items.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonJokes" runat="server" Font-Bold="True" Text="Jokes" PostBackUrl="~/Editor_Jokes.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonCompanies" runat="server" Font-Bold="True" Text="Company" PostBackUrl="~/Editor_Company.aspx" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonContentSelection" runat="server" Font-Bold="True" PostBackUrl="~/Editor.aspx" Text="Selections" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonFrontend" runat="server" Font-Bold="True" ForeColor="#009933" PostBackUrl="~/Index.aspx" Text="View Frontend" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
