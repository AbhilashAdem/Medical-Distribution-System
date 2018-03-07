using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Newtonsoft.Json;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Web.Services;

namespace MedicalDistribution
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["cart"] == null)
            {
                Session["cart"] = new List<CartItem>();
            }
            
        }

        protected void TextBox_search_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button_search_Click(object sender, EventArgs e)
        {
            string search = TextBox_search.Text;
            string type = SearchDropDownList.SelectedValue;
            if (search != string.Empty)
            {
                DataTable dt = new DataTable();

                MedicalDistributionService.Service1Client client = new MedicalDistributionService.Service1Client();
                string JsInDt = client.Search(search, type);
                dt = JsonConvert.DeserializeObject<DataTable>(JsInDt);

                if (dt.Rows.Count > 0)
                {
                    SearchLabel.Visible = false;
                    SearchGridView.DataSource = dt;
                    SearchGridView.DataBind();
                    SearchGridView.Visible = true;
                    CheckOut.Visible = true;
                    
                }
                else
                {
                    SearchGridView.Visible = false;
                    SearchLabel.Text = "No Results Found for search";
                    SearchLabel.Visible = true;
                }
            }
            else
            {
                //string script = "<script type=\"text / javascript\"> function EmptySearchBox(){alert(\"Search is Empty\");}";
                //ClientScript.RegisterClientScriptBlock(this.GetType(), "searchscript", script);

                MessageBox.Show("enter some search value", "SearchError");
            }
        }

        [WebMethod]
        public static bool Check_quantity( string Given_Quantity, string Actual_Quantity)
        {

            if (Convert.ToInt32(Given_Quantity) > Convert.ToInt32(Actual_Quantity))
                return false;
            else
                return true;


        }






        protected void SearchGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow SelectedRow = SearchGridView.Rows[index];
            
            TableCell ProductID_cell = SelectedRow.Cells[2];
            TableCell ProductName_cell = SelectedRow.Cells[3];
            TableCell ProductPrice_cell = SelectedRow.Cells[6];

            TableCell ProductQuantity_cell = SelectedRow.Cells[5];

            var textbox = SelectedRow.FindControl("TextBox1") as System.Web.UI.WebControls.TextBox;

            CartItem c1 = new CartItem();
           
            c1.ProductID = ProductID_cell.Text;
            c1.ProductName = ProductName_cell.Text;
            if (textbox.Text != "")
                c1.Quantity = textbox.Text;
            else
                c1.Quantity = "1";
            c1.PricePerQuantity = ProductPrice_cell.Text;

            var cart = (List<CartItem>)Session["cart"];
            if(cart.Count != 0)
            {
                bool NotEnterdInLoop = true;
                foreach (CartItem c in cart)
                {
                   
                        if (c.ProductID == c1.ProductID)
                        {
                        NotEnterdInLoop = false;
                        int coun = (Convert.ToInt32(c.Quantity) + Convert.ToInt32(c1.Quantity));
                        if (coun > Convert.ToInt32(ProductQuantity_cell.Text))
                        {
                            CartAdd.Visible = true;
                            CartAdd.Text = c.ProductName + " quantity is exceeding the Available Quantity cannot add to cart ";
                        }
                        else
                        {
                            CartAdd.Visible = true;
                            c.Quantity = coun.ToString();
                            CartAdd.Text = c.ProductName + "is already in cart its quantity is added by " + c1.Quantity;
                        }   
                        }
   
                }
                if(NotEnterdInLoop)
                {
                    CartAdd.Visible = true;
                    CartAdd.Text = c1.ProductName + " is added to cart with Quantity " + c1.Quantity;
                    cart.Add(c1);

                }


            }
            else
            {
                CartAdd.Visible = true;
                CartAdd.Text = c1.ProductName + " is added to cart with Quantity " + c1.Quantity;
                cart.Add(c1);
            }

        }

        protected void CheckOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("Purchase.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {


            //GridViewRow SelectedRow = (GridViewRow)((System.Web.UI.WebControls.TextBox)sender).Parent.Parent.Parent;
            //TableCell ProductQuantity = SelectedRow.Cells[5];
            //System.Web.UI.WebControls.TextBox txt = (System.Web.UI.WebControls.TextBox)SelectedRow.FindControl("TextBox1");
            //Int32 quantityEntered = Convert.ToInt32(txt.Text);
            //Console.Write(ProductQuantity);
            //Console.Write(quantityEntered);

          

        }
    }
}