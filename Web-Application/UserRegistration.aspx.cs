using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;


namespace MedicalDistribution
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            MedicalDistributionService.Service1Client client = new MedicalDistributionService.Service1Client();

            MedicalDistributionService.User NewUser = new MedicalDistributionService.User();

            NewUser.First_Name = TextBox_firstname.Text;
            NewUser.Last_Name = TextBox_lastname.Text;
            NewUser.Email_Id = TextBox_emailid.Text;
            NewUser.Phone_number = TextBox_phonenumber.Text;
            NewUser.Store_name = TextBox_storename.Text;
            NewUser.Address = TextBox_address.Text;
            NewUser.City = TextBox_city.Text;
            NewUser.State = TextBox_state.Text;
            NewUser.Zip = TextBox_zip.Text;
            NewUser.Password = TextBox_password.Text;
            if(client.CheckEmail(NewUser.Email_Id))
            {
                //  Response.Write("<script>alert('Registration Failed');</script>");
                MessageBox.Show("Email Id Alreday registerd with us", "Email Exists");
                Response.Redirect("UserRegistration.aspx");
            }
            else
            {
                if (client.RegisterUser(NewUser))
                {

                    Response.Redirect("SuccessPage.aspx");
                }
                else
                {
                    //  Response.Write("<script>alert('Registration Failed');</script>");
                    MessageBox.Show("Registration Failed");
                    Response.Redirect("UserRegistration.aspx");
                }
            }
            

           

        }
    }
}