using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WatchShop.Models.Entities
{
    public class Category
    {
        [Key]
        public int CategoryID { get; set; }
        [Required, MaxLength(20, ErrorMessage ="Yêu cầu nhập tên danh mục")]
        public string CategoryName { get; set; }
        public int Status { get; set; }
    }
}
