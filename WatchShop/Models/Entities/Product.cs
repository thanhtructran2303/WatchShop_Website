using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WatchShop.Models.Entities
{
    public class Product
    {
        [Key]
        public string ProductID { get; set; }
        public int CategoryID { get; set; }
        public int BrandID { get; set; }
        [Required]
        public string ProductName { get; set; }
        [Required]
        public DateTime  CreateDate { get; set; }
        public DateTime LastUpdate { get; set; }
        public decimal UnitPrice { get; set; }
        public int InStock { get; set; }
        public string MadeIn { get; set; }


        public string? Diameter { get; set; }
        public string? Crystal { get; set; }
        public string? WaterProof { get; set; }
        public string? Machine {  get; set; }
        public string? Albert { get; set; }
        public string? Description { get; set; }
        public int Status { get; set; }
        public string Image { get; set; }

        public virtual ICollection<OrderDetail> OrderDetails { get; set; }

        public virtual Category Category { get; set; }
        public virtual Brand Brand { get; set; }
    }
}
