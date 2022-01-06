using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FasticcoData;
using FasticcoData.Models;

namespace FasticcoBusiness
{
    public class FasticcoProductBusiness
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

        public bool InsertOrder(Order order)
        {
            return fasticcoRepository.InsertOrder(order) != 0;
        }

        public bool InsertUser(User user)
        {
            return fasticcoRepository.InsertUser(user) != 0;
        }

        public bool CheckUser(string usernameCheck)
        {
            if (fasticcoRepository.CheckUser(usernameCheck))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool LoginUser(string username, string password)
        {
            if (fasticcoRepository.LoginUser(username, password))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
