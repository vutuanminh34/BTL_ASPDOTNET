using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class Product_DTO
    {
        string product_id, product_code, product_name, product_material, product_madein, product_image, product_categoryid, product_status;
        int product_price, product_quantity, product_viewed;

        public string Product_id { get => product_id; set => product_id = value; }
        public string Product_code { get => product_code; set => product_code = value; }
        public string Product_name { get => product_name; set => product_name = value; }
        public string Product_material { get => product_material; set => product_material = value; }
        public string Product_madein { get => product_madein; set => product_madein = value; }
        public string Product_image { get => product_image; set => product_image = value; }
        public string Product_categoryid { get => product_categoryid; set => product_categoryid = value; }
        public string Product_status { get => product_status; set => product_status = value; }
        public int Product_price { get => product_price; set => product_price = value; }
        public int Product_quantity { get => product_quantity; set => product_quantity = value; }
        public int Product_viewed { get => product_viewed; set => product_viewed = value; }
    }
}
