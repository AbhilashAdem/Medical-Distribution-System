using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace MedicalDistribution
{
    public partial class Purchase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<CartItem> cart = (List<CartItem>)Session["cart"];
            CartGrid.DataSource = cart;
            if (!IsPostBack)
            {
                CartGrid.DataBind();
            }
            if (cart == null)
            {
                Order.Visible = false;
                PurchaseLable1.Visible = true;
                PurchaseLable1.Text = "No Items in cart to Purchase";
            }
            else if (cart.Count > 0)
            {
                Order.Visible = true;
                PurchaseLable1.Visible = false;
            }
                
            else
            {
                Order.Visible = false;
                PurchaseLable1.Visible = true;
                PurchaseLable1.Text = "No Items in cart to Purchase";
            }
        }

        protected void RemoveFromCart_Click(object sender, EventArgs e)
        {
            List<CartItem> cart = (List<CartItem>)Session["cart"];
            foreach ( GridViewRow row in CartGrid.Rows)
            {
                CheckBox cb = (row.Cells[0].FindControl("CartItemChecked") as CheckBox);
                if(cb.Checked)
                {
                    CartItem c1 = new CartItem();
                    c1.ProductID = row.Cells[1].Text;
                    c1.ProductName = row.Cells[2].Text;
                    c1.Quantity = row.Cells[3].Text;
                   for(int i = cart.Count - 1;  i >= 0; i--)
                    {
                        if(cart[i].ProductID== c1.ProductID)
                        {
                            cart.Remove(cart[i]);
                        }
                    }
                    CartGrid.DataSource = cart;
                    CartGrid.DataBind();
                            
                }
               
            }
            if (cart.Count == 0)
            {
                RemoveFromCart.Visible = false;
                Order.Visible = false;
                PurchaseLable1.Visible = true;
                PurchaseLable1.Text = "No Items in cart to Purchase";

            }
        }

        protected void Order_Click(object sender, EventArgs e)
        {

            List<CartItem> cart = (List<CartItem>)Session["cart"];

            String ListTOJson = JsonConvert.SerializeObject(cart, Formatting.Indented);

            MedicalDistributionService.Service1Client client = new MedicalDistributionService.Service1Client();
            bool updated = client.PlaceOrder(ListTOJson);
            if(updated)
            {
                RemoveFromCart.Visible = false;
                Order.Visible = false;
                cart.Clear();
                CartGrid.DataSource = cart;
                CartGrid.DataBind();
                Response.Redirect("SuccessfulPurchase.aspx");
            }
            else
            {

            }


           
        }

        protected void CartItemChecked_CheckedChanged(object sender, EventArgs e)
        {
            int count = 0;
            List<CartItem> cart = (List<CartItem>)Session["cart"];
            foreach(GridViewRow row in CartGrid.Rows)
            {
                if((row.FindControl("CartItemChecked") as System.Web.UI.WebControls.CheckBox).Checked)
                {
                    count++;
                }

            }
            if(count>0)
            {
                RemoveFromCart.Visible = true;
            }
            else
            {
                RemoveFromCart.Visible = false;
            }
        }
    }
}