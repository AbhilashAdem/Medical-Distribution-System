using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Newtonsoft.Json;

namespace MedicalDistricutionService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IService1
    {
        

        public bool RegisterUser(User NewUser)
        {
            string connection = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
            
          
                using (SqlConnection con = new SqlConnection(connection))
                {
                  SqlCommand cmd = new SqlCommand("sp_InsertNewUserRecord", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlParameter FirstName = new SqlParameter
                    {
                        ParameterName = "@FirstName",
                        Value = NewUser.First_Name
                    };
                    cmd.Parameters.Add(FirstName);

                    SqlParameter LastName = new SqlParameter
                    {
                        ParameterName = "@LastName",
                        Value = NewUser.Last_Name
                    };
                    cmd.Parameters.Add(LastName);

                   SqlParameter Email = new SqlParameter
                   {
                    ParameterName = "@Email",
                    Value = NewUser.Email_Id
                    };
                    cmd.Parameters.Add(Email);

                    SqlParameter PhoneNumber = new SqlParameter
                    {
                        ParameterName = "@PhoneNumber",
                        Value = NewUser.Phone_number
                    };
                    cmd.Parameters.Add(PhoneNumber);

                    SqlParameter StoreName = new SqlParameter
                    {
                        ParameterName = "@StoreName",
                        Value = NewUser.Store_name
                    };
                    cmd.Parameters.Add(StoreName);

                    SqlParameter Address = new SqlParameter
                    {
                        ParameterName = "@Address",
                        Value = NewUser.Address
                    };
                    cmd.Parameters.Add(Address);

                    SqlParameter City = new SqlParameter
                    {
                        ParameterName = "@City",
                        Value = NewUser.City
                    };
                    cmd.Parameters.Add(City);


                    SqlParameter State = new SqlParameter
                    {
                        ParameterName = "@State",
                        Value = NewUser.State
                    };
                    cmd.Parameters.Add(State);


                    SqlParameter Zip = new SqlParameter
                    {
                        ParameterName = "@Zip",
                        Value = NewUser.Zip
                    };
                    cmd.Parameters.Add(Zip);

                    SqlParameter Password = new SqlParameter
                    {
                        ParameterName = "@Password",
                        Value = NewUser.Password
                    };
                    cmd.Parameters.Add(Password);

                    con.Open();

                    int i = cmd.ExecuteNonQuery();

                if (i > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            };
               
        }

       
        public bool UserLogin(string UserName, string Password)
        {
            string User_name = UserName;
            string Pass_word = Password;
            int verify;
            
            string connection = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
            string SqlCommandText = "select count(*) from User_Registration where [Email ID] ='" + User_name + "'and Password ='" + Pass_word + "'";
            using (SqlConnection con = new SqlConnection(connection))
            {
                SqlCommand cmd = new SqlCommand(SqlCommandText, con);
                con.Open();
                verify = Convert.ToInt32(cmd.ExecuteScalar());
                if (verify > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            };
           


        }

        public string Search(string search, string type)
        {
            string SearchKey = search;
            string SearchType = type;
            string SqlCommandText = "select * from ProductDetails where "+type+" like '%"+search+"%'";
            string connection = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connection))
            {
                con.Open();
                SqlCommand command = new SqlCommand(SqlCommandText, con);
                //search dt = new search();
                //dt.SearchTable.Load(command.ExecuteReader());
                //return dt.SearchTable;
                DataTable dt = new DataTable("tb");
                dt.Load(command.ExecuteReader());
                DataTabeTOJs a = new DataTabeTOJs();
                return a.DataTableTOJson(dt);

            }
 
             
        }

        public bool PlaceOrder( string s)
        {
            List<CartItem> cart = JsonConvert.DeserializeObject<List<CartItem>>(s);

            int i = cart.Count;
            foreach (CartItem c in cart)
            {
                string ProductID = c.ProductID.TrimEnd();
                string connection = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;

                using (SqlConnection con = new SqlConnection(connection))
                {
                    SqlCommand cmd = new SqlCommand("sp_GetProductQuantity", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlParameter Product_ID = new SqlParameter
                    {
                        ParameterName = "@ProductID",
                        Value = ProductID
                    };
                    cmd.Parameters.Add(Product_ID);
                    SqlParameter QuantityOut = new SqlParameter("@quantity", SqlDbType.Int)
                    {
                        Direction = ParameterDirection.Output
                    };
                    cmd.Parameters.Add(QuantityOut);

                    con.Open();
                    cmd.ExecuteReader();
                    int ReturnValue = Convert.ToInt32(QuantityOut.Value);

                    int Quantity_remained = ReturnValue - Convert.ToInt32(c.Quantity);

                    string UpdateCommand = "update ProductDetails set ProductQuantity ="+ Quantity_remained +"where ProductID = '"+ProductID +"'";
                    SqlCommand cmd2 = new SqlCommand(UpdateCommand, con);
                     int b = cmd2.ExecuteNonQuery();
                    i = i - b;
                  };
             
            }
            if (i == 0)
            {
                return true;

            }
            else
            {
                return false;

            }



        }

        public bool CheckEmail(string email)
        {
            string emai_id = email;
            int verify;

            string connection = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
            string SqlCommandText = "select count(*) from User_Registration where [Email ID] ='" + emai_id + "'";
            using (SqlConnection con = new SqlConnection(connection))
            {
                SqlCommand cmd = new SqlCommand(SqlCommandText, con);
                con.Open();
                verify = Convert.ToInt32(cmd.ExecuteScalar());
                if (verify > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
    }
}
