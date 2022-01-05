using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FasticcoData.Models
{
    public class Order
    {
        public int Id { get; set; }
        public string OrderText { get; set; }
        public string Username { get; set; }
        public int OrderId { get; set; }
        public double TotalPrice { get; set; }
        public string Address { get; set; }
        public string Phone { get; set; }
        public string OrderTime { get; set; }
    }
}
