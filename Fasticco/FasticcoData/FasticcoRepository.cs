using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FasticcoData.Models;
using System.Data.SqlClient;


namespace FasticcoData
{
    public class FasticcoRepository
    {
        private string connString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=RestaurantDB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

        public List<Product> GetAllProducts()
        {
            List<Product> productList = new List<Product>();

            using (SqlConnection sqlConnection = new SqlConnection(connString))
            {
                sqlConnection.Open();

                SqlCommand command = new SqlCommand();
                command.Connection = sqlConnection;
                command.CommandText = "SELECT * FROM Products";


                SqlDataReader dataReader = command.ExecuteReader();

                while (dataReader.Read())
                {
                    Product product = new Product();
                    product.Id = dataReader.GetInt32(0);
                    product.Name = dataReader.GetString(1);
                    product.Price = dataReader.GetDecimal(2);
                    product.Description = dataReader.GetString(3);
         
                    productList.Add(product);
                }
            }

            return productList;
        }


        public int InsertProduct(Product product)
        {
            using (SqlConnection sqlConnection = new SqlConnection(connString))
            {
                sqlConnection.Open();

                SqlCommand command = new SqlCommand();
                command.Connection = sqlConnection;
                command.CommandText = string.Format("INSERT INTO Products VALUES('{0}','{1}','{2}')",
                    product.Name, product.Price, product.Description);

                return command.ExecuteNonQuery();
            }
        }


        public int InsertUser(User user)
        {
            using (SqlConnection sqlConnection = new SqlConnection(connString))
            {
                sqlConnection.Open();

                SqlCommand command = new SqlCommand();
                command.Connection = sqlConnection;
                command.CommandText = string.Format("INSERT INTO Users VALUES('{0}','{1}','{2},'{3},'{4},'{5}')",
                    user.Username, user.Name, user.LastName, user.Email, user.Phone, user.Address);

                return command.ExecuteNonQuery();
            }
        }

        public int InsertOrder(Order order)
        {
            using (SqlConnection sqlConnection = new SqlConnection(connString))
            {
                sqlConnection.Open();

                SqlCommand command = new SqlCommand();
                command.Connection = sqlConnection;
                command.CommandText = string.Format("INSERT INTO Orders VALUES('{0}','{1}',{2},{3},'{4}','{5}','{6}')",
                    order.OrderText, order.Username, order.OrderId, order.TotalPrice, order.Address, order.Phone, order.OrderTime);

                return command.ExecuteNonQuery();
            }
        }
    }
}
