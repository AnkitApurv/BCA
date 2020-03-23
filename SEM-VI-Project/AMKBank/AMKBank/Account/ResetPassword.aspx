<%@ Page Title="Reset Password" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.vb" Inherits="AMKBank.ResetPassword" Async="true" %>
<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <style>
        body { font-family: sans-serif; }
        table { border-spacing: 15px; } /* cellspacing */
        th, td { padding: 15px; /*text-align: center;*/ vertical-align: middle;} /* cellpadding *//*center cell content*/
    </style>
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <asp:Table runat="server" ID="formIsLogIn" Visible="false">
        <asp:TableRow>
            <asp:TableCell>
                <label>Current Password</label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox runat="server" ID="txtCurrentPasswd" CssClass="form-control" TextMode="Password" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <label>New Password</label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox runat="server" ID="txtNewPasswd" CssClass="form-control" AutoPostBack="true" TextMode="Password" OnTextChanged="txtNewPasswd_TextChanged" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <label>Retype New Password</label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox runat="server" ID="txtReNewPasswd" CssClass="form-control" TextMode="Password" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2">
                <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="progress">
                            <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="<%=scoreval%>" aria-valuemin="1" aria-valuemax="4"></div>
                        </div>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="txtNewPasswd" EventName="TextChanged" />
                    </Triggers>
                </asp:UpdatePanel>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>


    <asp:Table runat="server" ID="formIsNotLogIn" Visible="false">
        <asp:TableRow>
            <asp:TableCell>
                <label>User ID</label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox runat="server" ID="txtUserID" CssClass="form-control" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <label>Phone</label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox runat="server" ID="txtPhone" CssClass="form-control" TextMode="Phone" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <label>Email</label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" TextMode="Email" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <label>D.O.B.</label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox runat="server" ID="txtDOB" CssClass="form-control" TextMode="Date" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <label>New Password</label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox runat="server" ID="txtNewPasswd1" CssClass="form-control" AutoPostBack="true" TextMode="Password" OnTextChanged="txtNewPasswd1_TextChanged" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <label>Retype New Password</label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox runat="server" ID="txtReNewPasswd1" CssClass="form-control" TextMode="Password" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="progress">
                            <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="<%=scoreval%>" aria-valuemin="1" aria-valuemax="4"></div>
                        </div>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="txtNewPasswd1" EventName="TextChanged" />
                    </Triggers>
                </asp:UpdatePanel>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>

    <table>
        <tr>
            <td colspan="2"><asp:Button runat="server" ID="btnReset" Text="Reset" CssClass="btn btn-default" /></td>
        </tr>
    </table>
</asp:Content>
