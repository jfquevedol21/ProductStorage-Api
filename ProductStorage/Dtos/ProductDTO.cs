using System.ComponentModel.DataAnnotations;

namespace ProductStorage.Dtos
{
    public record ProductDTO
    {
        [Required]
        public int Id { get; set; }
        [Required]
        public string Name { get; set; }
        [Required]
        public int Quantity { get; set; }
        public Boolean IsFaulty { get; set; }
        public Boolean Active { get; set; }
    }
}
