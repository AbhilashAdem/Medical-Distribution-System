<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="MedicalDistribution.Home" %>


        
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager runat="server" id="Script1"  EnablePageMethods="true" > </asp:ScriptManager>
    <script type="text/javascript">
        function EmptySearchBox()
        {
            alert("Search is Empty");
        }
    </script>
   
    <div id="main_content" style="width:100% ; align-items:center ; background-image:url(Images/search.jpg) ; background-repeat:no-repeat ; background-position:right ;
         background-size: 100% 100%" ;>
        <br />
        <br />
        <br />
        <h1 style="font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif">
            Search for medicine availability
        </h1>
       
        <br />
        <table style="width:100% ; height:20px">
            <tr>
               <td style="width: 233px">&nbsp;</td>
               <td colspan="2" >
                   <asp:TextBox ID="TextBox_search" runat="server" Height="26px" Width="542px" OnTextChanged="TextBox_search_TextChanged"></asp:TextBox>
                   &nbsp;
                   <asp:DropDownList ID="SearchDropDownList" runat="server" Width="204px">
                       <asp:ListItem Value="ProductID">Search by ProductID</asp:ListItem>
                       <asp:ListItem Value="ProductName">Search by Product Name</asp:ListItem>
                   </asp:DropDownList>
                </td>
              <td></td>
            </tr>
            <tr>
               <td style="width: 233px"></td>
               <td style="width: 549px"></td>
               <td></td>
               <td></td>
               
            </tr>
             <tr>
               <td style="width: 233px"></td>
               <td style="text-align:center; width: 549px;">
                   <asp:Button ID="Button_search" runat="server" Text="Search" Height="33px" style="margin-left: 0px" Width="301px" OnClick="Button_search_Click" />
                 </td>
               <td></td>
               <td></td>
             </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2">
                   
                    <asp:GridView ID="SearchGridView" runat="server"  OnRowCommand="SearchGridView_RowCommand"
                         BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal"  >
                        <Columns>
                            <asp:ButtonField ButtonType="Button" Text="Add To Cart" />
                            <asp:TemplateField HeaderText="Quantity Required">
                                <ItemTemplate>
                                    
                                    <asp:TextBox ID="TextBox1" runat="server" onChange="javascript:MyFun(this);" ></asp:TextBox>
                                    
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                        
                    </asp:GridView>
                    <br />
                    <asp:Label ID="SearchLabel" runat="server" Text="Label" Visible="False"></asp:Label>
                    
                    <br />
                  
                    <asp:Label ID="CartAdd" runat="server" Text="Label" Visible="False"></asp:Label>
                  
                    <br />
                        
                </td>
                <td></td>
            </tr>
             <tr>
                <td></td>
                <td></td>
                <td>  <asp:Button ID="CheckOut" runat="server" Text="Proceed to CheckOut" Visible ="false" OnClick="CheckOut_Click"/></td>
                <td></td>
            </tr>
        </table>

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />


    </div>
    <script src="ScriptFiles/JavaScript1.js"></script>
</asp:Content>
