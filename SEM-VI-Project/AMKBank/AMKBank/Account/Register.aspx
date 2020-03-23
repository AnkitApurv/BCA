<%@ Page Title="Register" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Register.aspx.vb" Inherits="AMKBank.Register" %>
<%@ MasterType VirtualPath="~/Site.Master" %>
<%@ Import Namespace="AMKBank" %>
<%@ Import Namespace="Microsoft.AspNet.Identity" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body { font-family: sans-serif; }
        table { border-spacing: 15px; } /* cellspacing */
        th, td { padding: 15px; /*text-align: center;*/ vertical-align: middle;} /* cellpadding *//*center cell content*/
    </style>
    <h2><%: Title %>.</h2>
    <table>
            <tr>
                <td>First Name</td>
                <td class="auto-style1"><asp:TextBox ID="txtfname" runat="server" CssClass="form-control"></asp:TextBox></td>             
                <td>Marital Status</td>
                <td><asp:RadioButtonList  id="Marital" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem value="Single" Text="Single" />
                    <asp:ListItem value="Married" Text="Married" />
                    <asp:ListItem value="Divorcee" Text="Divorcee" />
                </asp:RadioButtonList></td>
            </tr>
            <tr>
                <td>Middle Name</td>
                <td><asp:TextBox ID="txtmname" runat="server" CssClass="form-control"></asp:TextBox></td>
                <td>Occupation</td>
                <td><asp:DropDownList ID="ddloccupation" runat="server" Height="30px" Width="131px" CssClass="form-control">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Teacher</asp:ListItem>
                    <asp:ListItem>Doctor</asp:ListItem>
                    <asp:ListItem>Police</asp:ListItem>
                    <asp:ListItem>Army Officer</asp:ListItem>
                    <asp:ListItem>Govt. Employee</asp:ListItem>
                    <asp:ListItem>Lawyer</asp:ListItem>
                    <asp:ListItem>Manager</asp:ListItem>
                </asp:DropDownList></td>

                
            </tr>
            <tr><td>Last Name</td> 
                <td><asp:TextBox ID="txtlname" runat="server" CssClass="form-control"></asp:TextBox></td>
                <td>Qualification</td>
                <td><asp:DropDownList ID="ddlqualification" runat="server" Height="30px" Width="131px" CssClass="form-control">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>10th</asp:ListItem>
                    <asp:ListItem>12th</asp:ListItem>
                    <asp:ListItem>Graduate</asp:ListItem>
                    <asp:ListItem>Post Graduate</asp:ListItem>
                    <asp:ListItem>Masters</asp:ListItem>
                    <asp:ListItem>PhD</asp:ListItem>
                    <asp:ListItem>M.phil</asp:ListItem>
                </asp:DropDownList></td>

            </tr>
            <tr><td>Annual Income</td>
                <td><asp:TextBox ID="txtincome" runat="server" CssClass="form-control"></asp:TextBox></td>
                <td>Mother&#39;s Maiden Name</td>
                <td><asp:TextBox ID="txtmaiden" runat="server" CssClass="form-control"></asp:TextBox></td>
                
            </tr>
            <tr>
            <td>Father&#39;s Name</td>
                <td><asp:TextBox ID="txtfather" runat="server" CssClass="form-control"></asp:TextBox></td>
                <td>Gender</td>
                <td>
                <asp:RadioButtonList  id="GenderSelect" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem value="Male" Text="Male" />
                    <asp:ListItem value="Female" Text="Female" />
                    <asp:ListItem value="Others" Text="Others" />
                </asp:RadioButtonList></td>
                

            </tr>
            <tr><td>Mobile</td>
                <td><asp:TextBox ID="txtmobile" runat="server" CssClass="form-control"></asp:TextBox></td>
                <td>Account Type</td><td>
                <asp:DropDownList ID="ddlacctype" runat="server" Height="30px" Width="131px" CssClass="form-control">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Saving</asp:ListItem>
                <asp:ListItem>Current</asp:ListItem>
                <asp:ListItem>Reccuring</asp:ListItem>
                <asp:ListItem>Fixed deposit</asp:ListItem>
                </asp:DropDownList></td>

            </tr>
            <tr><td>Email</td>
                <td><asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox></td>
                <td>Opening Amount</td>
                <td><asp:TextBox ID="txtamount" runat="server" CssClass="form-control"></asp:TextBox></td>
            </tr>
            <tr><td>DOB</td>
                <td><asp:TextBox ID="txtdob" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox></td>
                <td>Id Proof</td>
                <td><asp:DropDownList ID="ddlidproof" runat="server" Height="30px" Width="131px" CssClass="form-control">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Pan Card</asp:ListItem>
                    <asp:ListItem>Aadhar Card</asp:ListItem>
                    <asp:ListItem>Passport</asp:ListItem>
                    <asp:ListItem>Voter&#39;s Id Card</asp:ListItem>
                </asp:DropDownList></td>
           
            </tr>
            <tr><td>Address</td>
                <td><asp:TextBox ID="txtaddress" runat="server" CssClass="form-control"></asp:TextBox></td>
                <td>Enter Id No</td>
                <td><asp:TextBox ID="txtidno" runat="server" CssClass="form-control"></asp:TextBox></td>
            </tr>
            <tr><td>State</td>
                <td><asp:DropDownList ID="ddlstate" runat="server" Height="30px" Width="150px" CssClass="form-control">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Andhra Pradesh</asp:ListItem>
                        <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                        <asp:ListItem>Assam</asp:ListItem>
                        <asp:ListItem>Bihar</asp:ListItem>
                        <asp:ListItem>Chhattisgarh</asp:ListItem>
                        <asp:ListItem>Goa</asp:ListItem>
                        <asp:ListItem>Gujarat</asp:ListItem>
                        <asp:ListItem>Haryana</asp:ListItem>
                        <asp:ListItem>Himachal Pradesh</asp:ListItem>
                        <asp:ListItem>Jammu &amp; Kashmir</asp:ListItem>
                        <asp:ListItem>Jharkhand</asp:ListItem>
                        <asp:ListItem>Karnataka</asp:ListItem>
                        <asp:ListItem>Kerala</asp:ListItem>
                        <asp:ListItem>Madhya Pradesh</asp:ListItem>
                        <asp:ListItem>Maharashtra</asp:ListItem>
                        <asp:ListItem>Manipur</asp:ListItem>
                        <asp:ListItem>Meghalaya</asp:ListItem>
                        <asp:ListItem>Mizoram</asp:ListItem>
                        <asp:ListItem>Nagaland</asp:ListItem>
                        <asp:ListItem>Odisha (Orissa)</asp:ListItem>
                        <asp:ListItem>Punjab</asp:ListItem>
                        <asp:ListItem>Rajasthan</asp:ListItem>
                        <asp:ListItem>Sikkim</asp:ListItem>
                        <asp:ListItem>Tamil Nadu</asp:ListItem>
                        <asp:ListItem>Telangana</asp:ListItem>
                        <asp:ListItem>Tripura</asp:ListItem>
                        <asp:ListItem>Uttar Pradesh</asp:ListItem>
                        <asp:ListItem>Uttarakhand</asp:ListItem>
                        <asp:ListItem>West Bengal</asp:ListItem>
                    </asp:DropDownList></td>
                <td>Address Proof</td>
                <td><asp:DropDownList ID="ddladdproof" runat="server" Height="30px" Width="131px" CssClass="form-control">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Passport</asp:ListItem>
                    <asp:ListItem>Aadhar Card</asp:ListItem>
                    <asp:ListItem>Electricity Bill</asp:ListItem>
                    <asp:ListItem>Landline Bill</asp:ListItem>
                </asp:DropDownList></td>
                
            </tr>
            <tr><td>City</td>
                <td><asp:TextBox ID="txtcity" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td>Nominee Name</td>
            <td><asp:TextBox ID="txtnominee" runat="server" CssClass="form-control"></asp:TextBox></td>
            </tr>
            <tr><td>Pin</td><td>
                <asp:TextBox ID="txtpin" runat="server" CssClass="form-control"></asp:TextBox></td>
                <td>Relationship</td>
                <td><asp:DropDownList ID="ddlrelation" runat="server" Height="30px" Width="131px" CssClass="form-control">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Father</asp:ListItem>
                    <asp:ListItem>Mother</asp:ListItem>
                    <asp:ListItem>Sister</asp:ListItem>
                    <asp:ListItem>Brother</asp:ListItem>
                    <asp:ListItem>Uncle</asp:ListItem>
                    <asp:ListItem>Aunt</asp:ListItem>
                    <asp:ListItem>Niece</asp:ListItem>
                    <asp:ListItem>Nephew</asp:ListItem>
                    <asp:ListItem>Spouse</asp:ListItem>
                </asp:DropDownList></td>

            </tr>
            <tr>
            <td>Landmark</td>
            <td><asp:TextBox ID="txtlandmark" runat="server" CssClass="form-control"></asp:TextBox></td>
            </tr>
        <tr>
            <td colspan="2" style="text-align: center;"><asp:Button ID="CreateUser" runat="server" CssClass="btn btn-default" Text="Register" /></td>
            <td></td>
            <td colspan="2" style="text-align: center;"><asp:Button ID="clr_btn0" runat="server" CssClass="btn btn-default" Text="Clear" /></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center;">
                <asp:UpdatePanel ID="ajaxupdpanelwarning" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:Label ID="lblError" runat="server" CssClass="text-danger" Visible="false"/>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="CreateUser" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
            </td>
        </tr>
        </table>
</asp:Content>