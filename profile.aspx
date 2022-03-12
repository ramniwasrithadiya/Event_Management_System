<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>admin</title>
    <link rel="stylesheet" type="text/css" href="style_css/Main.css" />
    <link rel="stylesheet" type="text/css" href="style_css/footer.css" />
</head>
<body>
    <form id="form1" runat="server">
     <div class="bgimage">
    <nav>
        <label class="logo">EventMs</label>
        <ul>
            <li><a class="active" href="#">Profile</a></li>
            <li><a href="#">Book_Event</a></li>
            <li><a href="#">Feedback</a></li>
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
    </form>
</body>
</html>
