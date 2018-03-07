using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ServiceModel;

namespace MedicalDistribution
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            string user_name = UserName.Text;
            string password = Password.Text;
            MedicalDistributionService.Service1Client client = new MedicalDistributionService.Service1Client();
            if(client.UserLogin(user_name,password ))
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
               // Response.Redirect("LoginPage.aspx");
                LoginLabel.Visible = true;
                LoginLabel.Text = "You have entered an invalid username or password";
               
            }
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserRegistration.aspx");
        }
    }
}