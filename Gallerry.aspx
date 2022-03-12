<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Gallerry.aspx.cs" Inherits="Gallerry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainMasterContent" Runat="Server">
<html>  
  
<head>  
    <title>HTML video autoplay Attribute</title>  
</head>  
  
<body>  
<br />
<br />
    <center>  
          <video width="800" height="500" controls>
              <source src="images/Gallery.mp4" type="video/mp4">
          </video>  
    </center>  
</body>  
  
</html>  
</asp:Content>

