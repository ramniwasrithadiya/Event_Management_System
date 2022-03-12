<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainMasterContent" Runat="Server">
<html>
<head>
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 42%;
            height: 284px;
        }
        .style2
        {
            height: 30px;
            width: 199px;
        }
        .style3
        {
            height: 30px;
            width: 98px;
        }
        .style4
        {
            height: 90px;
            width: 98px;
        }
        .style5
        {
            height: 90px;
            width: 199px;
        }
    </style>
</head>
<body>
<center>
    <br />
    <br />
    <br />
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            Text="Contact Us" Font-Underline="True" ForeColor="White"></asp:Label>
        <br />
        <br />
        <table class="style1" align="center">
            <tr>
                <td class="style3">
                    Name</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox1" runat="server" Height="27px" Width="250px" 
                        BorderWidth="1px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Email Address</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Mobile Number</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox3" runat="server" Height="27px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Message</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox4" runat="server" BorderColor="Aqua" Height="65px" 
                        TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                </td>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" Height="37px" onclick="Button1_Click" 
                        Text="Submit" Width="157px" />
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="White"></asp:Label>
     
    
    </div>
</center>
</body>
</html>
</asp:Content>

