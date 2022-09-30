using ProductStorage.Data.Models;
using ProductStorage.Dtos;

namespace ProductStorage.Models.Repository
{
    public class ProductRepository : IProduct
    {
        private List<Product> _Products;
        private AppDbContext _context;
        public ProductRepository(AppDbContext context)
        {
            _Products = new() { new Product {   Id = 1, 
                                                Name = "Producto de prueba", 
                                                Quantity=1, 
                                                Active=false, 
                                                IsFaulty=true } };
            _context = context;
        }

        public void CreateProduct(CreateOrUpdateProductDTO product)
        {
            var _product = new Product
            { 
                Name = product.Name,
                Quantity = product.Quantity,
                Active = product.Active,
                IsFaulty = product.IsFaulty
            };
            _context.Product.Add(_product);
            _context.SaveChanges();
        }


        public Product DeleteProduct(int id)
        {
            var _product = _context.Product.FirstOrDefault(prdct => prdct.Id == id);
            if (_product != null)
            {
                _product.Active = false;
                _context.SaveChanges();
            }
            return _product;
        }

        public Product GetProduct(int id)
        {
            var product = _context.Product.FirstOrDefault(prdct=> prdct.Id == id);
            return product;
        }

        public List<Product> GetProducts()
        {
           return  _context.Product.ToList();
        }

        public Product UpdateProduct(int id, Product product)
        {
            var _product = _context.Product.FirstOrDefault(prdct => prdct.Id == id);
            if(_product != null)
            {
                _product.Quantity= product.Quantity;
                _product.Active= product.Active;
                _product.IsFaulty= product.IsFaulty;
                _product.Name= product.Name;

                _context.SaveChanges();
            }
            return _product;
        }

        
    }
}
