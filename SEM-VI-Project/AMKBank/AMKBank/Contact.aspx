<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.vb" Inherits="AMKBank.Contact" %>
<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <p>Our contacts.</p>

    <address>
        One Dalal Street<br />
        Dalal Street, Mumbai 98052-6399<br />
        <abbr title="Phone">P:</abbr>
        +91 900 900 9009
    </address>

    <address>
        <strong>Support:</strong><a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Greviance Redressal:</strong><a href="mailto:Greviance.Redressal@example.com">Greviance.Redressal@example.com</a>
    </address>
</asp:Content>
