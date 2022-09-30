using ProductStorage.Dtos;

namespace ProductStorage.Models.Repository
{
    public interface IProduct
    {
        public List<Product> GetProducts();
        public Product GetProduct(int id);
        public void CreateProduct(CreateOrUpdateProductDTO product);
        public Product UpdateProduct(int id, Product product);
        public Product DeleteProduct(int id);
    }
}
