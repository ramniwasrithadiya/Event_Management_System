<%@ Page Language="C#" AutoEventWireup="true" CodeFile="starratingsystem.aspx.cs" Inherits="starratingsystem" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>User review</title>
    <style type="text/css">
        .Star {
            background-image: url(images/Star.gif);
            height: 17px;
            width: 17px;
            float: left;
        }

        .WaitingStar {
            background-image: url(images/WaitingStar.gif);
            height: 17px;
            width: 17px;
            float: left;
        }

        .FilledStar {
            background-image: url(images/FilledStar.gif);
            height: 17px;
            width: 17px;
             float: left;
        }
        </style>
    <link rel="stylesheet" type="text/css" href="style_css/Main.css" />
    <link rel="stylesheet" type="text/css" href="style_css/footer.css" />
</head>
<body>
    <form id="form2" runat="server">
     <div class="bgimage">
    <nav>
        <label class="logo">EventMs</label>
        <ul>
            <li><a class="active" href="#">Profile</a></li>
            <li><a href="#">Book_Event</a></li>
            <li><a href="starratingsystem.aspx">Feedback</a></li>
             <li><asp:Button ID="btnLogout" runat="server" Text="Logout" 
                    onclick="btnLogout_Click" BackColor="#0000CC" 
            BorderColor="#00CCFF" BorderWidth="2px" Font-Bold="True" ForeColor="White" 
            Height="33px" Width="119px"></asp:Button>
            </li>
        </ul>
    </nav>
     <div>
        <asp:Label ID="lblUserDetails" runat="server" Font-Bold="True" 
            ForeColor="White" Height="35px" Width="150px" Font-Size="X-Large"></asp:Label>
        <br />
      
    </div>
    <br />
    <br />
    <br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <br />
       <br />
       <br />
   <div style="margin-left: 640px">
           <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
           </asp:ToolkitScriptManager>
           <br />
       </div>
       <div style="margin-left: 720px">
           <asp:Rating ID="Rating1" runat="server" AutoPostBack="true"
            StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
            FilledStarCssClass="FilledStar">
           </asp:Rating>
       </div>
       <br />
        <br />
            <div style="margin-left: 650px">
                <asp:Label ID="lbresult" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="White"></asp:Label>
       </div>
        <br />
        <div style="margin-left: 620px">
            <asp:TextBox runat="server" ID="txtreview" TextMode="MultiLine" 
                BackColor="Transparent" Height="73px" 
                Width="310px" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
       </div>
        <br />
        <div style="margin-left: 680px">
            <asp:Button runat="server" Text="Submit Review" ID="btnsubmit" 
                OnClick="btnsubmit_Click" Font-Bold="True" Width="185px" />
       </div>
   
     <div class="footer">
	        <p> Copyright@abc.com </p>
	  </div>
    </div>
    </form>
</body>
</html>

