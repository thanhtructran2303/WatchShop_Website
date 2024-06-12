using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WatchShop.Models.Entities
{
    public class Address
    {
        public int AddressID { get; set; }
        public int UserID { get; set; }
        public string? AddressName { get; set; }
        public string? SubDistrict { get; set; }
        public string? District { get; set; }
        public string? Country { get; set; }
        public int Status { get; set; }
    }
}
