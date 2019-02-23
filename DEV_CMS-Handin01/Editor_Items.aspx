<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editor_Items.aspx.cs" Inherits="DEV_CMS_Handin01.Editor_Items" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administration - Editor: Items</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label ID="LabelHeading" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Administration"></asp:Label>
            <br />
            <asp:Label ID="LabelTitel" runat="server" Font-Italic="True" Font-Size="Large" Text="Editor page: Items"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="LabelSubheading1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Edit or Delete a Item:"></asp:Label>
            <asp:GridView ID="GridViewItems" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ItemID" DataSourceID="SqlDataSource1" Width="600px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ItemID" HeaderText="ItemID" InsertVisible="False" ReadOnly="True" SortExpression="ItemID" />
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                    <asp:BoundField DataField="Headline" HeaderText="Headline" SortExpression="Headline" />
                    <asp:BoundField DataField="Picture" HeaderText="Picture" SortExpression="Picture" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CMSDBConnectionString %>" DeleteCommand="DELETE FROM [Items] WHERE [ItemID] = @original_ItemID AND [Category] = @original_Category AND [Headline] = @original_Headline AND [Picture] = @original_Picture AND [Description] = @original_Description" InsertCommand="INSERT INTO [Items] ([Category], [Headline], [Picture], [Description]) VALUES (@Category, @Headline, @Picture, @Description)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Items]" UpdateCommand="UPDATE [Items] SET [Category] = @Category, [Headline] = @Headline, [Picture] = @Picture, [Description] = @Description WHERE [ItemID] = @original_ItemID AND [Category] = @original_Category AND [Headline] = @original_Headline AND [Picture] = @original_Picture AND [Description] = @original_Description">
                <DeleteParameters>
                    <asp:Parameter Name="original_ItemID" Type="Int32" />
                    <asp:Parameter Name="original_Category" Type="String" />
                    <asp:Parameter Name="original_Headline" Type="String" />
                    <asp:Parameter Name="original_Picture" Type="String" />
                    <asp:Parameter Name="original_Description" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Category" Type="String" />
                    <asp:Parameter Name="Headline" Type="String" />
                    <asp:Parameter Name="Picture" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Category" Type="String" />
                    <asp:Parameter Name="Headline" Type="String" />
                    <asp:Parameter Name="Picture" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="original_ItemID" Type="Int32" />
                    <asp:Parameter Name="original_Category" Type="String" />
                    <asp:Parameter Name="original_Headline" Type="String" />
                    <asp:Parameter Name="original_Picture" Type="String" />
                    <asp:Parameter Name="original_Description" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="LabelSubheading2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Create a new Item:"></asp:Label>
            <asp:DetailsView ID="DetailsViewItems" runat="server" AutoGenerateRows="False" DataKeyNames="ItemID" DataSourceID="SqlDataSource2" DefaultMode="Insert" EmptyDataText="No selection is made" Height="50px" OnItemInserted="DetailsViewItems_ItemInserted" Width="350px">
                <Fields>
                    <asp:BoundField DataField="ItemID" HeaderText="ItemID" InsertVisible="False" ReadOnly="True" SortExpression="ItemID" />
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                    <asp:BoundField DataField="Headline" HeaderText="Headline" SortExpression="Headline" />
                    <asp:BoundField DataField="Picture" HeaderText="Picture" SortExpression="Picture" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CMSDBConnectionString %>" DeleteCommand="DELETE FROM [Items] WHERE [ItemID] = @original_ItemID AND [Category] = @original_Category AND [Headline] = @original_Headline AND [Picture] = @original_Picture AND [Description] = @original_Description" InsertCommand="INSERT INTO [Items] ([Category], [Headline], [Picture], [Description]) VALUES (@Category, @Headline, @Picture, @Description)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Items] WHERE ([ItemID] = @ItemID)" UpdateCommand="UPDATE [Items] SET [Category] = @Category, [Headline] = @Headline, [Picture] = @Picture, [Description] = @Description WHERE [ItemID] = @original_ItemID AND [Category] = @original_Category AND [Headline] = @original_Headline AND [Picture] = @original_Picture AND [Description] = @original_Description">
                <DeleteParameters>
                    <asp:Parameter Name="original_ItemID" Type="Int32" />
                    <asp:Parameter Name="original_Category" Type="String" />
                    <asp:Parameter Name="original_Headline" Type="String" />
                    <asp:Parameter Name="original_Picture" Type="String" />
                    <asp:Parameter Name="original_Description" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Category" Type="String" />
                    <asp:Parameter Name="Headline" Type="String" />
                    <asp:Parameter Name="Picture" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridViewItems" Name="ItemID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Category" Type="String" />
                    <asp:Parameter Name="Headline" Type="String" />
                    <asp:Parameter Name="Picture" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="original_ItemID" Type="Int32" />
                    <asp:Parameter Name="original_Category" Type="String" />
                    <asp:Parameter Name="original_Headline" Type="String" />
                    <asp:Parameter Name="original_Picture" Type="String" />
                    <asp:Parameter Name="original_Description" Type="String" />
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
&nbsp;&nbsp;&nbsp;
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
