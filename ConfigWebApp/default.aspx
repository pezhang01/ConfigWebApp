<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ConfigWebApp.config_data_input" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <style type="text/css">
             .Style1
              {
               font-size:11px;
               color:#5B5B5B;
              }
            .CellLong {
                width: 80%;
            }
            .CellMedium {
                width: 40%;
            }
            .CellShort {
                width: auto;
            }
        </style>


        <div>
            <asp:Table runat="server" ID="ConfigSettings">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Key</asp:TableHeaderCell>
                    <asp:TableHeaderCell width="80%">Value</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow>
                    <asp:TableCell><asp:Label runat="server">AuthorizationLevel:</asp:Label></asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="AuthorizationLevel" runat="server" width="40%"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><asp:Label ID="Label1" runat="server">AuthorizationDebugPolarisUsername:</asp:Label></asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="AuthorizationDebugPolarisUsername" runat="server" width="40%"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><asp:Label ID="Label2" runat="server">ERMSAddress:</asp:Label></asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="ERMSAddress" runat="server" width="40%"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><asp:Label ID="Label3" runat="server">CompressionEnabled:</asp:Label></asp:TableCell>
                    <asp:TableCell><asp:CheckBox ID="CompressionEnabled" runat="server"></asp:CheckBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><asp:Label ID="Label5" runat="server">WebApiTraceMessagesEnabled:</asp:Label></asp:TableCell>
                    <asp:TableCell><asp:CheckBox ID="WebApiTraceMessagesEnabled" runat="server"></asp:CheckBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><asp:Label ID="Label6" runat="server">HttpMessageLoggingEnabled:</asp:Label></asp:TableCell>
                    <asp:TableCell><asp:CheckBox ID="HttpMessageLoggingEnabled" runat="server"></asp:CheckBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><asp:Label ID="Label7" runat="server">CachePermissions:</asp:Label></asp:TableCell>
                    <asp:TableCell><asp:CheckBox ID="CachePermissions" runat="server"></asp:CheckBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><asp:Label ID="Label4" runat="server">ExternalHostname</asp:Label></asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="ExternalHostname" runat="server" width="40%"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><asp:Label ID="Label8" runat="server">Authentication_MachineAccountsAllowed:</asp:Label></asp:TableCell>
                    <asp:TableCell><asp:CheckBox ID="Authentication_MachineAccountsAllowed" runat="server"></asp:CheckBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><asp:Label ID="Label9" runat="server">Authentication_RemoteEnabled:</asp:Label></asp:TableCell>
                    <asp:TableCell><asp:CheckBox ID="Authentication_RemoteEnabled" runat="server"></asp:CheckBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><asp:Label ID="Label10" runat="server">Access_LeapPermissionRequired:</asp:Label></asp:TableCell>
                    <asp:TableCell><asp:CheckBox ID="Access_LeapPermissionRequired" runat="server"></asp:CheckBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><asp:Label ID="Label11" runat="server">Access_RemotePermissionRequired:</asp:Label></asp:TableCell>
                    <asp:TableCell><asp:CheckBox ID="Access_RemotePermissionRequired" runat="server"></asp:CheckBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><asp:Label ID="Label12" runat="server">ConnectionString:</asp:Label></asp:TableCell>
                    <%--<asp:TableCell ColumnSpan="3"><asp:TextBox ID="connectionString" runat="server" value="<%# ConnectionStringValue %>"></asp:TextBox></asp:TableCell>--%>
                    <asp:TableCell><asp:TextBox ID="connectionString" runat="server" width="100%"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <br />
        <asp:Button runat="server" ID="Submit" Text="Submit" OnClick="Submit_Click" />
    </form>
</body>
</html>
