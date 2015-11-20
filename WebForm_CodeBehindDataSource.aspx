<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm_CodeBehindDataSource.aspx.cs" Inherits="WebAppWalkthrough.WebForm_CodeBehind" %>

<asp:Content ContentPlaceHolderID="HeadContent" runat="server" >
</asp:Content>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <tr>
            <td>Search Key</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" /></td>
        </tr>
    </table>

	<asp:GridView ID="ContactsGridView" AutoGenerateColumns="false" runat="server">
		<Columns>
			<asp:TemplateField HeaderText="First Name">
				<ItemTemplate>
					<asp:Label Text='<%# Eval("Name")%>' runat="server" />
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField HeaderText="Last Name">
				<ItemTemplate>
					<asp:Label Text='<%# Eval("new_Borrower") %>' runat="server" />
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField HeaderText="City">
				<ItemTemplate>
					<asp:Label Text='<%# Eval("new_ApprovalLevel") %>' runat="server" />
				</ItemTemplate>
			</asp:TemplateField>
		</Columns>
	</asp:GridView>
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
</asp:Content>
