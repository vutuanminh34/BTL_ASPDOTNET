using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAL;
using DTO;

namespace BUS
{
    public class Product_BUS
    {
        data da = new data();
        Product_DTO P = new Product_DTO();

        public DataTable ShowProduct()
        {
            string sql = "select * from Product";
            DataTable dt = new DataTable();
            dt = da.getTable(sql);
            return dt;
        }
        
        public DataTable ShowCategory()
        {
            string sql = "select * from Category";
            DataTable dt = new DataTable();
            dt = da.getTable(sql);
            return dt;
        }
        
        public void InsertProduct(string masp, string codesp, string tensp, int giasp, int slsp, string clsp, string xxsp, string anhsp, string mlsp)
        {
            string sql = "insert Product values(N'" + masp + "',N'" + codesp + "',N'" + tensp + "',N'" + giasp + "',N'" + slsp + "',N'" + clsp + "',N'" + xxsp + "',N'" + anhsp + "',N'" + mlsp + "','" + 0 + "')";
            da.ExcuteNonQuery(sql);
        }

        public void UpdateProduct(string masp, string codesp, string tensp, int giasp, int slsp, string clsp, string xxsp, string anhsp, string mlsp)
        {
            string sql = "update Product set Product_code=N'" + codesp + "',Product_name=N'" + tensp + "',Product_price=N'" + giasp + "',Product_quantity=N'" + slsp + "',Product_material=N'" + clsp + "',Product_madein=N'" + xxsp + "',Product_image=N'" + anhsp + "',Product_category_id=N'" + mlsp + "' where Product_id=N'" + masp + "'";
            da.ExcuteNonQuery(sql);
        }
        
        public void DeleteProduct(string masp)
        {
            string sql = "delete Product where Product_id=N'" + masp + "'";
            da.ExcuteNonQuery(sql);
        }

        public Boolean CheckExist(string masp)
        {
            string sql = "select * from Product where Product_id = N'" + masp + "'";
            if (da.check(sql) == true)
            {
                return true;
            }
            else { return false; }
        }
    }
}
