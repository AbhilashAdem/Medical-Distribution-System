using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;

namespace MedicalDistricutionService
{
    [DataContract]
    public class CartItem
    {
        [DataMember]
        public string ProductID { get; set; }
        [DataMember]
        public string ProductName { get; set; }
        [DataMember]
        public string Quantity { get; set; }
        [DataMember]
        public string PricePerQuantity { get; set; }

    }
}