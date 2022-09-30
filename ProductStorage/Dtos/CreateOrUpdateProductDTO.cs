using System.ComponentModel.DataAnnotations;

namespace ProductStorage.Dtos
{
    public record CreateOrUpdateProductDTO
    {
        [Required]
        public string Name { get; set; }
        [Required]
        public int Quantity { get; set; }
        public Boolean IsFaulty { get; set; }
        public Boolean Active { get; set; }
    }
}
