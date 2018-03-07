<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="MedicalDistribution.UserRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style4 {
            width: 192px;
        }
        .auto-style5 {
            height: 23px;
            width: 192px;
        }
        .auto-style6 {
            margin-left: 0px;
        }
        .auto-style9 {
            width: 192px;
            height: 26px;
        }
        .auto-style12 {
            height: 26px;
        }
        .auto-style13 {
            width: 260px;
        }
        .auto-style14 {
            width: 260px;
            height: 26px;
        }
        .auto-style15 {
            height: 23px;
            width: 260px;
        }
        .auto-style16 {
            width: 350px;
        }
        .auto-style17 {
            width: 350px;
            height: 26px;
        }
        .auto-style18 {
            height: 23px;
            width: 350px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper" style=" background-image:url(white-background-vines.jpg)">
        <div id="header" style="width:100% ;height:150px ; background-color:#3d3d5c" >
            <br />
            <br />
            <h1 style="text-align:right ; color:white"> Online Medical Distribution Portal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h1>
            <h1 style="font-family:'Baskerville Old Face';color:white; text-align:right ">Registration Form&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h1>
        </div>
        <div id="body_content" style="height:auto ; width:100% ;" >
            
            <br />
            <br />
            <h2 style="font-family:'Lucida Sans'">Fill out the form to Register</h2>
            <br />
            <table id="registration_table" style="width:100% ; align-items:flex-start ; font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif" >
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style13">
                        <asp:Label ID="First_name" runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox_firstname" runat="server" Width="235px" CssClass="auto-style6"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_firstname" ErrorMessage="Enter first name"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style14">
                        <asp:Label ID="Last_name" runat="server" Text="Last Name"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox_lastname" runat="server" CssClass="auto-style6" Width="235px"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_lastname" ErrorMessage="Enter last name"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style13">
                        <asp:Label ID="email" runat="server" Text="Email Id"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox_emailid" runat="server" Width="235px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox_emailid" ErrorMessage="Enter valid email" ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox_emailid"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style13">
                        <asp:Label ID="Phone_number" runat="server" Text="Phone Number"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox_phonenumber" runat="server" Width="235px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox_phonenumber" ErrorMessage="Enter valid phone number" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style13">
                        <asp:Label ID="Store_name" runat="server" Text="Store Name"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox_storename" runat="server" Width="235px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox_storename" ErrorMessage="Enter store name"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style13">
                        <asp:Label ID="Address" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox_address" runat="server" Width="235px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox_address" ErrorMessage="enter address"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style13">
                        <asp:Label ID="city" runat="server" Text="City"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox_city" runat="server" Width="235px"></asp:TextBox>
                     </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox_city" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style14">
                        <asp:Label ID="State" runat="server" Text="State"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox_state" runat="server" Width="235px"></asp:TextBox>
                     </td>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox_state" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                     </td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style15">
                        <asp:Label ID="zip" runat="server" Text="Zip"></asp:Label>
                    </td>
                    <td class="auto-style18">
                        <asp:TextBox ID="TextBox_zip" runat="server" Width="235px"></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox_zip" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style13">
                        <asp:Label ID="password" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox_password" runat="server" Width="235px" CssClass="auto-style6" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox_password" ErrorMessage="enter password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style13">
                        <asp:Label ID="Confirm_password" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox_confirmpassword" runat="server" Width="235px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox_password" ControlToValidate="TextBox_confirmpassword" ErrorMessage="Password did not match"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style16"></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td rowspan="2" >
                        &nbsp;</td>
                    
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">
                        <asp:Button ID="Register" runat="server" Text="Register" Width="178px" Height="30px" OnClick="Register_Click" />
                    </td>
                    
                   
                </tr>

            </table>

        </div>
    
    </div>
    </form>
</body>
</html>
