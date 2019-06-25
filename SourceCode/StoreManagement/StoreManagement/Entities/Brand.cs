using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StoreManagement.Entities
{
    public partial class Brand
    {
        public Brand()
        {
            this.Products = new HashSet<Product>();
        }
        [Key]
        public int BrandID { get; set; }
        public string BrandName { get; set; }
        public virtual ICollection<Product> Products { get; set; }
    }
}
