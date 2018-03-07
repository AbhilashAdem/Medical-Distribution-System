<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="MedicalDistribution.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 157px;
        }
        .auto-style2 {
            width: 400px;
        }
        .auto-style3 {
            width: 121px;
        }
        .auto-style4 {
            margin-right: 14px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            margin-left: 40px;
        }
        .auto-style7 {
            height: 425px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id ="wrapper">
        <div id="header" style="height: 150px ; width:100% ; background-color:#3d3d5c" >
            <div id="inside_header" style ="height:50px"></div>
            <h1 style =" font-family :'Baskerville Old Face'; color:white ; font-size:xx-large  ; text-align:right"> Online Medical Distribution Portal&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </h1>
        </div>
        <div id="body_content" style="background-image:url(Images/health-care.jpg) ; background-repeat:no-repeat; background-position:right " class="auto-style7">
            <br />
            <br />
            <br />
            <table id="table_login"; style="width:100%">
                <tr>
                    <td></td>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="LoginLabel" runat="server" Text="Label" Visible="False" ForeColor="Red"></asp:Label>
                    </td>
                    
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="UserName_Label" runat="server" Text="User Name "></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="UserName" runat="server" Width="179px"></asp:TextBox>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="Password_lable" runat="server" Text="Password "></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="Password" runat="server" CssClass="auto-style4" Width="179px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td colspan="2" class="auto-style6">&nbsp;
                        </td>
                    <td></td>
                </tr>
                
                  <tr>
                    <td class="auto-style2"></td>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Login" runat="server" OnClick="Login_Click" Text="Login" Width="133px" />
                      </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td colspan="2" style="text-align:center" class="auto-style5">&nbsp;</td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2" style="text-align:center">&nbsp;
                        <asp:Label ID="Label1" runat="server" Text="Not A User Yet !! Click here to Register"></asp:Label>
                    </td>
                    <td></td>
                </tr>
                 <tr>
                    <td></td>
                    <td colspan="2" style="text-align:center"> 
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                       <asp:Button ID="Register" runat="server" Text="Register" Width="130px" OnClick="Register_Click" Height="26px" />
                       
                  
                       
                    </td>
                    <td></td>
                </tr>


                </table>

        </div>
    
    </div>
    </form>
</body>
</html>
