<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SubContent.aspx.cs" Inherits="SubContent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>admin</title>
    <link rel="stylesheet" type="text/css" href="style_css/Main.css" />
    <link rel="stylesheet" type="text/css" href="style_css/footer.css" />
</head>
<body>
    <form id="form1" runat="server">
     <div class="bgimage">
    <nav>
        <input type="checkbox" id="check">
        <label for="check" class="checkbtn">
            <i class="fas fa-bars"></i>
        </label>
        <label class="logo">EventMs</label>
        <ul>
            <li><a class="active" href="#">Profile</a></li>
            <li><a href="#">Book_Event</a></li>
            <li><a href="starratingsystem.aspx">Feedback</a></li>
              <asp:Button ID="btnLogout" runat="server" Text="Logout" 
                    onclick="btnLogout_Click" BackColor="#0000CC" 
            BorderColor="#00CCFF" BorderWidth="2px" Font-Bold="True" ForeColor="White" 
            Height="33px" Width="119px"></asp:Button>
        </ul>
    </nav>
    <div>
        <asp:Label ID="lblUserDetails" runat="server" Font-Bold="True" 
            ForeColor="White" Height="35px" Width="150px" Font-Size="X-Large"></asp:Label>
        <br />
      
    </div>
     <div class="footer">
	        <p> Copyright@abc.com </p>
	  </div>
    </div>
    </form>
</body>
</html>
