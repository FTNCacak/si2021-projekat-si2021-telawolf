using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FasticcoData;
using FasticcoData.Models;

namespace FasticcoBusiness
{
    public class FasticcoBusiness
    {
        readonly FasticcoRepository fasticcoRepository = new FasticcoRepository();

        public List<Product> GetProducts()
        {
            return fasticcoRepository.GetAllProducts().ToList();
        }

        public bool InsertProduct(Product product)
        {
            return fasticcoRepository.InsertProduct(product) != 0;
        }
    }
}
