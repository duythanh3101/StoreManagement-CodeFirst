using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StoreManagement.Entities
{
    public partial class CustomerInfo
    {
        public CustomerInfo()
        {
            this.Warranties = new HashSet<Warranty>();
        }
        [Key]
        public string PhoneNumber { get; set; }
        [Required]
        public string CustomerName { get; set; }
        public string Email { get; set; }
        public string Address { get; set; }
        public virtual ICollection<Warranty> Warranties { get; set; }
    }
}
