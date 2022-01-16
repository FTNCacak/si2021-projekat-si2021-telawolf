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
        private string connString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=RestaurantDB3;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

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
                dataReader.Close();
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
                command.CommandText = string.Format("INSERT INTO Products VALUES('{0}',{1},'{2}')",
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
                command.CommandText = string.Format("INSERT INTO Users VALUES('{0}','{1}','{2}','{3}','{4}','{5}','{6}')",
                    user.Username, user.Name, user.LastName, user.Email, user.Phone, user.Address, user.Password);

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
                command.CommandText = string.Format("INSERT INTO Orders VALUES('{0}','{1}',{2},{3},'{4}','{5}','{6}','{7}')",
                    order.OrderText, order.Username, order.OrderId, order.TotalPrice, order.Address, order.Phone, order.OrderTime, order.Status);

                return command.ExecuteNonQuery();
            }
        }

        public bool CheckUser(string usernameCheck)
        {
            using (SqlConnection sqlConnection = new SqlConnection(connString))
            {
                sqlConnection.Open();

                SqlCommand command = new SqlCommand();
                command.Connection = sqlConnection;
                command.CommandText = string.Format("SELECT Username FROM Users WHERE Username='{0}'", usernameCheck);


                SqlDataReader dataReader = command.ExecuteReader();

                int i = 0;
                while (dataReader.Read())
                {
                    i++;
                }

                if(i > 0)
                {
                    dataReader.Close();
                    return true;
                }
                else
                {
                    dataReader.Close();
                    return false;
                }
            }
        }


        public bool LoginUser(string username, string password)
        {
            using (SqlConnection sqlConnection = new SqlConnection(connString))
            {
                sqlConnection.Open();

                SqlCommand command = new SqlCommand();
                command.Connection = sqlConnection;
                command.CommandText = string.Format("SELECT * FROM Users WHERE Username='{0}' AND Password='{1}'", username, password);


                SqlDataReader dataReader = command.ExecuteReader();

                int i = 0;
                while (dataReader.Read())
                {
                    i++;
                }

                if (i > 0)
                {
                    dataReader.Close();
                    return true;
                }
                else
                {
                    dataReader.Close();
                    return false;
                }
            }
        }

        public int OrderStatus(string orderId, string status)
        {
            SqlConnection sqlConnection = null;
            SqlCommand command = null;
            using (sqlConnection = new SqlConnection(connString))
            {
                try
                {
                    sqlConnection.Open();

                    command = new SqlCommand();
                    command.Connection = sqlConnection;
                    command.CommandText = string.Format("UPDATE Orders SET Status='{0}' WHERE Id = {1}", status, orderId);

                    SqlDataReader dataReader = command.ExecuteReader();
                    return command.ExecuteNonQuery();
                }
                catch
                {
                    return -1;
                }

            }
        }

        public bool LoginAdmin(string adminName, string adminPassword)
        {
            using (SqlConnection sqlConnection = new SqlConnection(connString))
            {
                sqlConnection.Open();

                SqlCommand command = new SqlCommand();
                command.Connection = sqlConnection;
                command.CommandText = string.Format("SELECT * FROM Admin WHERE AdminName='{0}' AND AdminPassword='{1}'", adminName, adminPassword);


                SqlDataReader dataReader = command.ExecuteReader();

                int i = 0;
                while (dataReader.Read())
                {
                    i++;
                }

                if (i > 0)
                {
                    dataReader.Close();
                    return true;
                }
                else
                {
                    dataReader.Close();
                    return false;
                }
            }
        }


        public User GetUserData(string username)
        {
            using (SqlConnection sqlConnection = new SqlConnection(connString))
            {
                sqlConnection.Open();

                SqlCommand command = new SqlCommand();
                command.Connection = sqlConnection;
                command.CommandText = string.Format("SELECT * FROM Users WHERE Username='{0}'", username);


                SqlDataReader dataReader = command.ExecuteReader();
                User user = new User();

                while (dataReader.Read())
                {
                    user.Id = dataReader.GetInt32(0);
                    user.Username = dataReader.GetString(1);
                    user.Name = dataReader.GetString(2);
                    user.LastName = dataReader.GetString(3);
                    user.Email = dataReader.GetString(4);
                    user.Phone = dataReader.GetString(5);
                    user.Address = dataReader.GetString(6);
                }

                return user;
            }
        }

    }
}
