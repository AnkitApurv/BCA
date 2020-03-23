<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="TransactionSuccess.aspx.vb" Inherits="AMKBank.TransactionSuccess" %>
<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body { font-family: sans-serif; }
        table { border-spacing: 15px; } /* cellspacing */
        th, td { padding: 15px; /*text-align: center;*/ vertical-align: middle;} /* cellpadding *//*center cell content*/
    </style>
    <table>
                    <tr>
                        <td class="auto-style2">Transaction ID&nbsp;&nbsp;: </td>
                        <td class="auto-style1"><asp:Label ID="TransactionID" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Transaction Time&nbsp;&nbsp;: </td>
                        <td class="auto-style1"><asp:Label ID="transTime" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Debit Account&nbsp;&nbsp;: </td>
                        <td class="auto-style1"><asp:Label ID="debitAccount" runat="server" />
                        </td>
                    </tr> 
                                        <tr>
                        <td class="auto-style2">Credit Account &nbsp;&nbsp;: </td>
                        <td class="auto-style1"><asp:Label ID="CreditAccount" runat="server" />
                        </td>
                    </tr>
        <tr>
                                <td class="auto-style2">Transfer Type&nbsp;&nbsp;: </td>
                                <td class="auto-style1"><asp:Label ID="TransType" runat="server" />
                                </td>
                            </tr>       
                            <tr>
                                <td class="auto-style2">Transferred Amount&nbsp;&nbsp;: </td>
                                <td class="auto-style1"><asp:Label ID="transAmt" runat="server" />
                                </td>
                            </tr>
        <tr>
            <td colspan="2"><asp:LinkButton ID="lnkReturn" runat="server"><a href="LandingPage.aspx">Return to Landing Page</a></asp:LinkButton></td>
        </tr>
                    </table>
    <asp:Label ID="lblstatus" runat="server" />
</asp:Content>
