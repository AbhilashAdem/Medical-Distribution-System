<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Purchase.aspx.cs" Inherits="MedicalDistribution.Purchase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image: url(Images/shopping-cart.jpg); background-repeat: no-repeat; background-position: right;">
        <h1 style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif">Your Cart Items</h1>

        <table style="width: 100%;">
            <tr>
                <td style="width: 262px"></td>
                <td>
                    <asp:label id="PurchaseLable1" runat="server" text="Label" visible="False"></asp:label>
                </td>
                <td style="width: 659px"></td>
                <td></td>
            </tr>
            <tr>
                <td style="width: 262px"></td>
                <td colspan="3">
                    <asp:gridview id="CartGrid" runat="server" backcolor="White" bordercolor="#CCCCCC" borderstyle="None" borderwidth="1px" cellpadding="4" forecolor="Black" gridlines="Horizontal" width="562px">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="CartItemChecked" runat="server" OnCheckedChanged="CartItemChecked_CheckedChanged" AutoPostBack="true" />
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
                </asp:gridview>
                </td>

            </tr>
            <tr>
                <td style="width: 262px"></td>
                <td></td>
                <td style="width: 659px"></td>
                <td></td>
            </tr>
            <tr>
                <td style="width: 262px"></td>
                <td style="align-content: center">
                    <asp:button id="RemoveFromCart" runat="server" onclick="RemoveFromCart_Click" text="Remove From Cart" visible="False" />
                </td>
                <td style="width: 659px; margin-left: 10px;">
                    <asp:button id="Order" runat="server" style="margin-left: 10px" text="Place Order" width="152px" onclick="Order_Click" visible="False" />
                </td>
                <td>&nbsp;</td>

            </tr>
        </table>

        <br />
        <br />
        <br />



    </div>

</asp:Content>
