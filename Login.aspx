<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainMasterContent" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
<center>
<div>
    <asp:Label ID="Label13" runat="server" Text="Login" BorderStyle="None" 
        ForeColor="White" Height="25px" Width="256px" Font-Bold="True" 
        Font-Size="XX-Large" Font-Underline="True"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <table style="margin: auto;border: 2px solid white; height: 142px; width: 282px;">
         <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Username" ForeColor="Black" 
                    Font-Bold="True" Font-Size="Large"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server" Height="29px" Width="188px"></asp:TextBox></td>
         </tr>
         <tr>
            <td colspan="2">
                <hr />
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Password" ForeColor="Black" 
                    Font-Bold="True" Font-Size="Large"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Height="28px" Width="186px"></asp:TextBox></td>
         </tr>
  
         <tr>
            <td class="style2">
                </td>
            <td class="style2">
                <asp:Button ID="btnLogin" runat="server" Text="Login" Width="126px" 
                    onclick="btnLogin_Click" Height="30px"  />
            </td>
         </tr>
         <tr>
            <td class="style1"></td>
            <td class="style1" >
                <asp:Label ID="lblErrorMessage" runat="server" Text="Invalid User Details" 
                    ForeColor="Aqua" Font-Bold="True" Font-Size="Medium"></asp:Label></td>
         </tr>

    </table>
</div>
</center>
</asp:Content>

