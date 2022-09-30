using Microsoft.AspNetCore.Mvc;
using ProductStorage.Dtos;
using ProductStorage.Models;
using ProductStorage.Models.Repository;

namespace ProductStorage.Controllers
{
    [ApiController]
    [Route("Products")]
    public class ProductsController : ControllerBase
    {
        private IProduct _ProductRepository;
        public ProductsController(IProduct productRepository)
        {
            _ProductRepository = productRepository;

        }

        [HttpGet("get-all-products")]
        public ActionResult<IEnumerable<ProductDTO>> GetProducts()
        {
            return _ProductRepository.GetProducts().Select(x => new ProductDTO { Id = x.Id, Name = x.Name, Quantity = x.Quantity, IsFaulty = x.IsFaulty, Active = x.Active }).ToList();
        }

        [HttpGet("get-product-by-id/{id}")]
        public ActionResult<ProductDTO> GetProduct(int id)
        {
            var product = _ProductRepository.GetProduct(id);
            if (product == null)
                return NotFound();
            var productDTO = new ProductDTO { Id = id, Name = product.Name, Quantity = product.Quantity, Active = product.Active, IsFaulty = product.IsFaulty };
            return productDTO;
        }

        [HttpPost("create-product")]
        public ActionResult CreateProduct([FromBody] CreateOrUpdateProductDTO product)
        {
            var _product = new Product();
            _product.Name = product.Name;
            _product.Quantity = product.Quantity;
            _product.IsFaulty = product.IsFaulty;
            _product.Active = product.Active;

            _ProductRepository.CreateProduct(product);
            return Ok();
        }

        [HttpPut("update-product/{id}")]
        public ActionResult UpdateProduct(int id, [FromBody]Product product)
        {
            var _product = _ProductRepository.UpdateProduct(id, product);
            return Ok(_product);
        }

        [HttpDelete("{id}")]
        public ActionResult DeleteProduct(int id)
        {
            var _product = _ProductRepository.DeleteProduct(id);
            return Ok(_product);
        }

    }
}
