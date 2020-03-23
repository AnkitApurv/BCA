<%@ Page Title="Landing Page" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="LandingPage.aspx.vb" Inherits="AMKBank.LandingPage" %>
<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <br />
    <a href="FundsTransfer.aspx">Funds Transfer</a>
</asp:Content>
