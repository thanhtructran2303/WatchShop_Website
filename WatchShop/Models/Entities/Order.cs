using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WatchShop.Models.Entities
{
    public class Order
    {
        public int OrderID { get; set; }
        public int UserID { get; set; }
        public DateTime OrderDate { get; set; }
        public string ShipDistrict { get; set; }
        public string ShipAddress { get; set; }
        public string ShipCity { get; set; }
        public string ReceiverName { get; set; }
        public string ReceiverPhone { get; set; }
        public int Status { get; set; }

    }
}
