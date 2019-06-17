<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Events-overzicht.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menuPH" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="sidebarPH" Runat="Server">
    <h3 style="text-align:center;">Evenement zoeken</h3>
    <p style="text-align:center;">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</p>
    <p style="text-align:center;">
        <asp:Calendar ID="Calendar1" runat="server" Width="160px"></asp:Calendar>
</p>
    <p style="text-align:center;">
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource_events" DataTextField="Genre" DataValueField="Genre">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource_events" runat="server" ConnectionString="<%$ ConnectionStrings:EvenementenDBConnectionString %>" SelectCommand="SELECT [Genre] FROM [Muziekgenres]"></asp:SqlDataSource>
</p>
<p style="text-align:center;">
    <asp:Button ID="Btn_zoeken" runat="server" Text="zoeken" />
</p>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="contentPH" Runat="Server">
    <h1 style="text-align:center;">Evenementen</h1>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
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
</asp:Content>


