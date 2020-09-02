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
        static int currentposition = 0;
        static int totalrows = 0;

        private void bindata()
        {
            String mycon = @"Data Source=.;Initial Catalog=QuanAoBaoChau;Integrated Security=True";
            String myquery = "select * from Product where Product_quantity > 0";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            totalrows = ds.Tables[0].Rows.Count;
            DataTable dt = ds.Tables[0];
            PagedDataSource pg = new PagedDataSource();
            pg.DataSource = dt.DefaultView;
            pg.AllowPaging = true;
            pg.CurrentPageIndex = currentposition;
            pg.PageSize = 8;
            Button1.Enabled = !pg.IsFirstPage;
            Button2.Enabled = !pg.IsFirstPage;
            Button3.Enabled = !pg.IsLastPage;
            Button4.Enabled = !pg.IsLastPage;
            //Binding pg to datalist
            DataList1.DataSource = pg;//dl is datalist
            DataList1.DataBind();
            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindata();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            currentposition = 0;
            bindata();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (currentposition == 0)
            {

            }
            else
            {
                currentposition = currentposition - 1;
                bindata();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (currentposition == totalrows - 1)
            {

            }
            else
            {
                currentposition = currentposition + 1;
                bindata();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            currentposition = (int)(totalrows/8);
            bindata();
        }
    }
}