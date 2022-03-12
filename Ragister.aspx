<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Ragister.aspx.cs" Inherits="Ragister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 135px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainMasterContent" Runat="Server">
    <br />
    <br />
    <br />

<center>
<div>
    <asp:Label ID="Label11" runat="server" Text="Ragistration" BorderStyle="None" 
        ForeColor="White" Height="25px" Width="256px" Font-Bold="True" 
        Font-Size="XX-Large" Font-Underline="True"></asp:Label>
    <br />
    <br />
    <br />

    <asp:HiddenField ID="hfUserID" runat="server" />
    <table style="margin: auto 24px auto 0px;  height: 335px; width: 294px;">
        <tr>
            <td class="style1">
                <asp:Label ID="Label1" runat="server" Text="First Name" ForeColor="White" 
                    Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtFirstName" runat="server" Width="156px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td colspan="3">
                <hr />
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label2" runat="server" Text="Last Name" ForeColor="White" 
                    Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtLastName" runat="server" Width="156px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td colspan="3">
                <hr />
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label3" runat="server" Text="Contact" ForeColor="White" 
                    Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtcontact" runat="server" Width="156px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td colspan="3">
                <hr />
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label4" runat="server" Text="Gender" ForeColor="White" 
                    Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td colspan="2">
                <asp:DropDownList ID="ddlGender" runat="server" Width="156px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
         <tr>
            <td colspan="3">
                <hr />
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label5" runat="server" Text="Address" TextMode="Multiline" 
                    ForeColor="White" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtAddress" runat="server" Width="156px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <hr />
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label6" runat="server" Text="Username" ForeColor="White" 
                    Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtUsername" runat="server" Width="135px"></asp:TextBox>
                <asp:Label ID="Label9" runat="server" Text="*" ForeColor="white"></asp:Label>
            </td>
        </tr>
         <tr>
            <td colspan="3">
                <hr />
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label7" runat="server" Text="Password" ForeColor="White" 
                    Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="135px"></asp:TextBox>
                <asp:Label ID="Label10" runat="server" Text="*" ForeColor="white"></asp:Label>
            </td>
        </tr>
         <tr>
            <td class="style1">
                <asp:Label ID="Label8" runat="server" Text="ConfirmPassword" ForeColor="White" 
                    Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" 
                    Width="156px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td colspan="3">
                <hr />
            </td>
        </tr>
        <tr>
            <td class="style1"></td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                    onclick="btnSubmit_Click" Width="156px" Height="33px" Font-Bold="True" />
            </td>
        </tr>
        <tr>
            <td class="style1"></td>
            <td colspan="2">
                <asp:Label ID="lblSuccessMessage" runat="server" ForeColor="White" 
                    Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1"></td>
            <td colspan="2">
                <asp:Label ID="lblErrorMessage" runat="server" ForeColor="White" 
                    Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
        </tr>
    </table>
</div>
</center>
</asp:Content>

