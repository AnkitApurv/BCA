<%@ Page Title="Registration Successful!" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="RegisterSuccess.aspx.vb" Inherits="AMKBank.RegisterSuccess" %>
<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body { font-family:sans-serif; }
        table { border-spacing: 15px; } /* cellspacing */
        th, td { padding: 15px; } /* cellpadding */
    </style>
    <h2><%: Title %>.</h2>
    <asp:Label ID="lblGreet" runat="server" Text="You registered in successfully" />
    <!--Password will be generated here-->
    <table>
        <tr>
            <td><asp:Label ID="lblUserID" runat="server" Text="User ID : "></asp:Label></td>
            <td><asp:Label ID="lblUserIDshow" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblPasswd" runat="server" Text="Password"></asp:Label></td>
            <td><asp:TextBox ID="txtPasswd" runat="server" OnTextChanged="txtPasswd_TextChanged" AutoPostBack="true" TextMode="Password" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblRePasswd" runat="server" Text="Retype Password"></asp:Label></td>
            <td><asp:TextBox ID="txtRePasswd" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:UpdatePanel ID="ajaxupdpanelscore" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <!--<meter id="mtrPwdStrength" min="1" max="4" value="<%=scoreval%>"></meter>-->
                        <div class="progress">
                            <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="<%=scoreval%>" aria-valuemin="1" aria-valuemax="4"></div>
                        </div>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="txtPasswd" EventName="TextChanged" />
                    </Triggers>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td colspan="2"><asp:Button ID="btnFinishRegister" runat="server" Text="Set Password!" CssClass="btn btn-default" /></td>
        </tr>
        <tr>
            <td colspan="2"><asp:Label ID="lblStatus" runat="server" Visible="false" CssClass="text-danger"></asp:Label></td>
        </tr>
    </table>
</asp:Content>
