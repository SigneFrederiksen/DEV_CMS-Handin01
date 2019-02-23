<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editor.aspx.cs" Inherits="DEV_CMS_Handin01.Editor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administration - Editor</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label ID="LabelHeading" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Administration"></asp:Label>
            <br />
            <asp:Label ID="LabelTitel" runat="server" Font-Italic="True" Font-Size="Large" Text="Editor page: Selection for Template"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="LabelSubheading1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Select those Items you wanna publish on the Template"></asp:Label>
            <br />
            &nbsp;<br />
            <asp:Label ID="LabelSubheading2" runat="server" Text="Overview over the present Selections:" Font-Bold="True" Font-Size="Medium"></asp:Label>
            <asp:DetailsView ID="DetailsViewSelections" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="SelectionID" DataSourceID="SqlDataSource1" Width="600px">
                <Fields>
                    <asp:BoundField DataField="SelectionID" HeaderText="SelectionID" InsertVisible="False" ReadOnly="True" SortExpression="SelectionID" />
                    <asp:BoundField DataField="MainItem" HeaderText="MainItem" SortExpression="MainItem" />
                    <asp:BoundField DataField="SecondItem" HeaderText="SecondItem" SortExpression="SecondItem" />
                    <asp:BoundField DataField="ThirdItem" HeaderText="ThirdItem" SortExpression="ThirdItem" />
                    <asp:BoundField DataField="JokeItem" HeaderText="JokeItem" SortExpression="JokeItem" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CMSDBConnectionString %>" DeleteCommand="DELETE FROM [Selection] WHERE [SelectionID] = @original_SelectionID AND [MainItem] = @original_MainItem AND [SecondItem] = @original_SecondItem AND [ThirdItem] = @original_ThirdItem AND [JokeItem] = @original_JokeItem" InsertCommand="INSERT INTO [Selection] ([MainItem], [SecondItem], [ThirdItem], [JokeItem]) VALUES (@MainItem, @SecondItem, @ThirdItem, @JokeItem)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Selection]" UpdateCommand="UPDATE [Selection] SET [MainItem] = @MainItem, [SecondItem] = @SecondItem, [ThirdItem] = @ThirdItem, [JokeItem] = @JokeItem WHERE [SelectionID] = @original_SelectionID AND [MainItem] = @original_MainItem AND [SecondItem] = @original_SecondItem AND [ThirdItem] = @original_ThirdItem AND [JokeItem] = @original_JokeItem">
                <DeleteParameters>
                    <asp:Parameter Name="original_SelectionID" Type="Int32" />
                    <asp:Parameter Name="original_MainItem" Type="Int32" />
                    <asp:Parameter Name="original_SecondItem" Type="Int32" />
                    <asp:Parameter Name="original_ThirdItem" Type="Int32" />
                    <asp:Parameter Name="original_JokeItem" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MainItem" Type="Int32" />
                    <asp:Parameter Name="SecondItem" Type="Int32" />
                    <asp:Parameter Name="ThirdItem" Type="Int32" />
                    <asp:Parameter Name="JokeItem" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MainItem" Type="Int32" />
                    <asp:Parameter Name="SecondItem" Type="Int32" />
                    <asp:Parameter Name="ThirdItem" Type="Int32" />
                    <asp:Parameter Name="JokeItem" Type="Int32" />
                    <asp:Parameter Name="original_SelectionID" Type="Int32" />
                    <asp:Parameter Name="original_MainItem" Type="Int32" />
                    <asp:Parameter Name="original_SecondItem" Type="Int32" />
                    <asp:Parameter Name="original_ThirdItem" Type="Int32" />
                    <asp:Parameter Name="original_JokeItem" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="LabelSubheading3" runat="server" Text="Choose a Main Item:" Font-Bold="True" Font-Size="Medium"></asp:Label>
            <br />
            <asp:Label ID="LabelSmalltitel1" runat="server" Font-Italic="True" Font-Size="Small" Text="// The Main Item is unique and will be a Highlighted Item"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownListMainItem" runat="server" datasourceid="SqlDataSource2" DataTextField="Headline" DataValueField="ItemID" Width="214px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CMSDBConnectionString %>" DeleteCommand="DELETE FROM [Items] WHERE [ItemID] = @original_ItemID AND [Category] = @original_Category AND [Headline] = @original_Headline AND [Picture] = @original_Picture AND [Description] = @original_Description" InsertCommand="INSERT INTO [Items] ([Category], [Headline], [Picture], [Description]) VALUES (@Category, @Headline, @Picture, @Description)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Items]" UpdateCommand="UPDATE [Items] SET [Category] = @Category, [Headline] = @Headline, [Picture] = @Picture, [Description] = @Description WHERE [ItemID] = @original_ItemID AND [Category] = @original_Category AND [Headline] = @original_Headline AND [Picture] = @original_Picture AND [Description] = @original_Description">
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
&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="LabelSubheading4" runat="server" Text="Choose a Second Item:" Font-Bold="True" Font-Size="Medium"></asp:Label>
            <br />
            <asp:Label ID="LabelSmalltitel2" runat="server" Font-Italic="True" Font-Size="Small" Text="// The Second Item is an Additional Item"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownListSecondItem" runat="server" datasourceid="SqlDataSource2" DataTextField="Headline" DataValueField="ItemID" Width="214px">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="LabelSubheading5" runat="server" Text="Choose a Third Item:" Font-Bold="True" Font-Size="Medium"></asp:Label>
            <br />
            <asp:Label ID="LabelSmalltitel3" runat="server" Font-Italic="True" Font-Size="Small" Text="// The Third Item is an Additional Item"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownListThirdItem" runat="server" datasourceid="SqlDataSource2" DataTextField="Headline" DataValueField="ItemID" Width="214px">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="LabelSubheading6" runat="server" Text="Choose a Joke Item:" Font-Bold="True" Font-Size="Medium"></asp:Label>
            <br />
            <asp:Label ID="LabelSmalltitel4" runat="server" Font-Italic="True" Font-Size="Small" Text="// This is a Joke Item"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownListJokes" runat="server" DataSourceID="SqlDataSource3" DataTextField="Headline" DataValueField="JokeID" Width="214px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CMSDBConnectionString %>" DeleteCommand="DELETE FROM [Jokes] WHERE [JokeID] = @original_JokeID AND [Headline] = @original_Headline AND [Picture] = @original_Picture" InsertCommand="INSERT INTO [Jokes] ([Headline], [Picture]) VALUES (@Headline, @Picture)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Jokes]" UpdateCommand="UPDATE [Jokes] SET [Headline] = @Headline, [Picture] = @Picture WHERE [JokeID] = @original_JokeID AND [Headline] = @original_Headline AND [Picture] = @original_Picture">
                <DeleteParameters>
                    <asp:Parameter Name="original_JokeID" Type="Int32" />
                    <asp:Parameter Name="original_Headline" Type="String" />
                    <asp:Parameter Name="original_Picture" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Headline" Type="String" />
                    <asp:Parameter Name="Picture" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Headline" Type="String" />
                    <asp:Parameter Name="Picture" Type="String" />
                    <asp:Parameter Name="original_JokeID" Type="Int32" />
                    <asp:Parameter Name="original_Headline" Type="String" />
                    <asp:Parameter Name="original_Picture" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <asp:Button ID="ButtonSelection" runat="server" Font-Bold="True" OnClick="ButtonSelection_Click" Text="Choose a new Selection" />
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
