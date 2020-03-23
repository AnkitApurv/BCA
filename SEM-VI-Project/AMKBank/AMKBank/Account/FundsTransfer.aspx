<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="FundsTransfer.aspx.vb" Inherits="AMKBank.FundsTransfer" %>
<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!--Account holders and send money to other accounts-->
    Customer ID<asp:TextBox ID="txtAccountNo" runat="server"></asp:TextBox><br />
    <asp:Label ID="lblAmount" runat="server" Text="Amount"></asp:Label>
    <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox><br />
    <asp:Label ID="lbltype" runat="server" Text="Transaction type"></asp:Label>
    <asp:TextBox ID="txttype" runat="server"></asp:TextBox><br />
    <asp:Button ID="btnTransfer" runat="server" Text="Transfer" />
    <asp:Label ID="lblStatus" runat="server" />
</asp:Content>
