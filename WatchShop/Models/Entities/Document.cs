using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WatchShop.Models.Entities
{
    public class Document
    {
        public int DocumentID { get; set; }
        public string ReferencedID { get; set; }
        public string? Type { get; set; }
        public string URL { get; set; }
        public string? Description { get; set; }
    }
}
