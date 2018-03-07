using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MedicalDistribution
{
    public class CartItem
    {

        public string ProductID { get; set; }
        public string ProductName { get; set; }
        public string Quantity { get; set; }
        public string PricePerQuantity { get; set; }

    }
}