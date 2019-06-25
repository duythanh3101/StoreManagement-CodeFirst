using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StoreManagement.Entities
{
    public partial class Bill
    {
        public Bill()
        {
            this.BillDetails = new HashSet<BillDetail>();
        }
        [Key]
        public int BillID { get; set; }
        public System.DateTime BillDate { get; set; }
        [ForeignKey("User")]
        public int CashierID { get; set; }
        public double TotalPrice { get; set; }
        [ForeignKey("CodePromotion")]
        public string DiscountCode { get; set; }
        public double LastTotalPrice { get; set; }
        public virtual User User { get; set; }
        public virtual CodePromotion CodePromotion { get; set; }
        public virtual ICollection<BillDetail> BillDetails { get; set; }
    }
}
