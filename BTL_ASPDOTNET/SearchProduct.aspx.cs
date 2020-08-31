using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace BTL_ASPDOTNET
{
    public partial class SearchProduct : System.Web.UI.Page
    {
        string strCon = @"Data Source=.;Initial Catalog=QuanAoBaoChau;Integrated Security=True";
        SqlConnection con = null;
        SqlDataAdapter da = null;
        DataTable dt = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string value = Request.QueryString["Value"].ToString();
                con = new SqlConnection(strCon);
                con.Open();
                string sql = "select * from Product inner join Category on Product.Product_category_id = Category.Category_id where"
                    + " Product_name like N'%" + value + "%' or Product_code like N'%" + value + "%' or Product_material like N'%" + value + "%'"
                    + " or Product_madein like N'%" + value + "%' or Product_status like N'%" + value + "%' or Category_name like N'%" + value + "%'";
                da = new SqlDataAdapter(sql, con);
                dt = new DataTable();
                da.Fill(dt);
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
            
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "AddToCart")
            {
                TextBox txb = (TextBox)(e.Item.FindControl("txtSL"));
                Response.Redirect("ShowOrder.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + txb.Text.ToString());
            }
            if (e.CommandName == "viewdetails")
            {
                Response.Redirect("DetailProduct.aspx?id=" + e.CommandArgument.ToString());
            }
        }
    }
}