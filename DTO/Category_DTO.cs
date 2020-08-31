using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class Category_DTO
    {
        string category_id, category_name, category_groupid;

        public string Category_id { get => category_id; set => category_id = value; }
        public string Category_name { get => category_name; set => category_name = value; }
        public string Category_groupid { get => category_groupid; set => category_groupid = value; }
    }
}
