using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ProductStorage.Models
{
    public class Product
    {
        [Required]
        public int Id { get; set; }
        [Required]
        public string Name { get; set; }
        [Required] 
        public int Quantity { get; set; }
        public Boolean IsFaulty { get; set; }
        public Boolean Active   { get; set; }


    }
}
