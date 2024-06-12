using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WatchShop.Models.Entities
{
    public class Brand
    {
        [Key]
        public int BrandID { get; set; }
        [Required, MaxLength(20, ErrorMessage = "Yêu cầu nhập tên thương hiệu")]
        public string BrandName { get; set; }
        public int Status { get; set; }
    }
}