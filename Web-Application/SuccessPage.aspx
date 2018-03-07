<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SuccessPage.aspx.cs" Inherits="MedicalDistribution.SuccessPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thank You</title>
    <meta http-equiv="refresh" content="30; url=LoginPage.aspx"/>
</head>
<body>
    <form id="form1" runat="server">
    <div id="main">
         <div id ="wrapper">
        <div id="header" style="height: 150px ; width:100% ; background-color:#3d3d5c" >
            <div id="inside_header" style ="height:50px"></div>
            <h1 style =" font-family :'Baskerville Old Face'; color:white ; font-size:xx-large  ; text-align:right"> Online Medical Distribution Portal&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </h1>
        </div>
        </div>
    <div style="font-family:'Baskerville Old Face' ; background-image:url(Images/ThankYou4.jpg); background-repeat:no-repeat ; background-position:right ;" >
        <h1> Thank You For Registering with us...</h1>
        <h2>We have received your request to create new account </h2>
        <h2> Your UserName will be Email_Id you have entered while registering</h2>
        <h3> you will be automatically redirected to Login Page if you donot then <span><a href="LoginPage.aspx">click here to redirect</a>  </span></h3>
    </div>
    </div>
    </form>
</body>
</html>
