using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StoreManagement.Entities
{
    public partial class Role
    {
        public Role()
        {
            this.Users = new HashSet<User>();
        }
        [Key]
        public int RoleId { get; set; }
        [Required]
        public string DisplayName { get; set; }
        public virtual ICollection<User> Users { get; set; }
    }
}
