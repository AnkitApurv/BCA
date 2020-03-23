<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="DepositsWithdrawals.aspx.vb" Inherits="AMKBank.DepositsWithdrawals" %>
<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!--Account holders can deposit and withdraw money-->
    <style>
        body { font-family: sans-serif; }
        table { border-spacing: 15px; } /* cellspacing */
        th, td { padding: 15px; /*text-align: center;*/ vertical-align: middle;} /* cellpadding *//*center cell content*/
    </style>
    <h2><%: Title %>.</h2>
    <h3>Deposits</h3>
    <table>
        <tr>
            <td><asp:Label ID="lblDeposits" runat="server" Text="Deposite Amount" /></td>
            <td><asp:TextBox ID="Deposits" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2"><asp:Button ID="btnDeposits" runat="server" Text="Deposits" CssClass="btn btn-default" /></td>
        </tr>
    </table>
    <br />
    <h3>Withdrawal</h3>
    <table>
        <tr>
            <td><asp:Label ID="lblWithdrawal" runat="server" Text="Withdrawal Amount"/></td>
            <td><asp:TextBox ID="Withdrawal" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2"><asp:Button ID="btnWithdrawal" runat="server" Text="Withdrawal" CssClass="btn btn-default" /></td>
        </tr>
    </table>
    <br />
    <asp:Label ID="lblStatus" runat="server" CssClass="text-danger" />
</asp:Content>
