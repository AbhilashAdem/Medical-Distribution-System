using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services;
using Newtonsoft.Json;

namespace MedicalDistricutionService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IService1
    {
        // used for user login 
        [OperationContract]
        Boolean UserLogin(string UserName, string Password);

        [OperationContract]
         Boolean RegisterUser(User NewUser);

        [OperationContract]
        Boolean CheckEmail(string email);

        [OperationContract]
         string Search(string search, string type);

        [OperationContract]
        Boolean PlaceOrder(string s);
   
    }
  

}
        // TODO: Add your service operations here
   

   

