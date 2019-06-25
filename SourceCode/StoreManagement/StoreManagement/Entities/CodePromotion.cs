using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StoreManagement.Entities
{
    public partial class CodePromotion
    {
        public CodePromotion()
        {

        }
        [Key, MinLength(3), MaxLength(20)]
        public string Code { get; set; }
        public string CodeName { get; set; }
        public double CodePercent { get; set; }
        public System.DateTime StartDate { get; set; }
        public System.DateTime EndDate { get; set; }
        public virtual ICollection<Bill> Bills { get; set; }

    }
}
