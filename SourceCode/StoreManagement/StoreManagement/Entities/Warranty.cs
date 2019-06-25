using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StoreManagement.Entities
{
    public partial class Warranty
    {
        public Warranty()
        {

        }
        [Key]
        public int WarrantyId { get; set; }
        [ForeignKey("CustomerInfo")]
        public string PhoneNumber { get; set; }
        [ForeignKey("Product")]
        public int ProductID { get; set; }
        public System.DateTime StartDate { get; set; }
        public System.DateTime EndDate { get; set; }
        public virtual CustomerInfo CustomerInfo { get; set; }
        public virtual Product Product { get; set; }
    }
}
