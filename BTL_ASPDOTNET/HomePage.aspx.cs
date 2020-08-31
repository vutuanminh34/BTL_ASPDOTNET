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
    public partial class TrangChu1 : System.Web.UI.Page
    {
        string strCon = @"Data Source=.;Initial Catalog=QuanAoBaoChau;Integrated Security=True";
        SqlConnection con = null;
        SqlDataAdapter da = null;
        DataTable dt = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con = new SqlConnection(strCon);
                con.Open();
                string sql = "select * from Product where Product_quantity > 0";
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