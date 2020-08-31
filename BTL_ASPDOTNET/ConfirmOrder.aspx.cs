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
    public partial class DeliveryInfor : System.Web.UI.Page
    {
        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

                i = i + 1;
            }
            return gtotal;
        }

        public void findorderid()
        {
            String pass = "abcdefghijklmnopqrstuvwxyz123456789";
            Random r = new Random();
            char[] mypass = new char[5];
            for (int i = 0; i < 5; i++)
            {
                mypass[i] = pass[(int)(35 * r.NextDouble())];

            }
            String orderid;
            orderid = "Order" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(mypass);

            Label2.Text = orderid;


        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("Product_id");
                dt.Columns.Add("Product_code");
                dt.Columns.Add("Product_name");
                dt.Columns.Add("Product_price");
                dt.Columns.Add("quantity");
                dt.Columns.Add("totalprice");



                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {

                        dr = dt.NewRow();
                        String mycon = @"Data Source=.;Initial Catalog=QuanAoBaoChau;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from Product where Product_id= '" + Request.QueryString["id"] + "'";
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["Product_id"] = ds.Tables[0].Rows[0]["Product_id"].ToString();
                        dr["Product_code"] = ds.Tables[0].Rows[0]["Product_code"].ToString();
                        dr["Product_name"] = ds.Tables[0].Rows[0]["Product_name"].ToString();
                        dr["Product_price"] = ds.Tables[0].Rows[0]["Product_price"].ToString();
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["Product_price"].ToString());
                        dr["quantity"] = Request.QueryString["quantity"];
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[4].Text = "Total Amount";
                        GridView1.FooterRow.Cells[5].Text = grandtotal().ToString();
                        Response.Redirect("ShowOrder.aspx");

                    }
                    else
                    {

                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        String mycon = @"Data Source=.;Initial Catalog=QuanAoBaoChau;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from Product where Product_id= '" + Request.QueryString["id"] + "'";
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["Product_id"] = ds.Tables[0].Rows[0]["Product_id"].ToString();
                        dr["Product_code"] = ds.Tables[0].Rows[0]["Product_code"].ToString();
                        dr["Product_name"] = ds.Tables[0].Rows[0]["Product_name"].ToString();
                        dr["Product_price"] = ds.Tables[0].Rows[0]["Product_price"].ToString();
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["Product_price"].ToString());
                        dr["quantity"] = Request.QueryString["quantity"];
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[4].Text = "Total Amount";
                        GridView1.FooterRow.Cells[5].Text = grandtotal().ToString();
                        Response.Redirect("ShowOrder.aspx");

                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[4].Text = "Total Amount";
                        GridView1.FooterRow.Cells[5].Text = grandtotal().ToString();

                    }


                }


            }
            Label3.Text = DateTime.Now.ToShortDateString();
            findorderid();
        }

        public void saveaddress()
        {
            String updatepass = "insert Orders values(N'" + Label2.Text + "', N'" + Label3.Text + "', N'" + txtTenKH.Text + "', N'" + txtDiaChi.Text + "', N'" + txtSDT.Text + "', N'" + txtChuThich.Text + "')";
            String mycon1 = "Data Source=.;Initial Catalog=QuanAoBaoChau;Integrated Security=True";
            SqlConnection s = new SqlConnection(mycon1);
            s.Open();
            SqlCommand cmd1 = new SqlCommand(updatepass, s);
            
            cmd1.ExecuteNonQuery();
            s.Close();
        }
        protected void btnXacNhan_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["buyitems"];



            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int qty = Convert.ToInt32(dt.Rows[i]["quantity"].ToString());
                String updatepass = "insert OrderDetail values(N'" + Label2.Text + "',N'" + dt.Rows[i]["sno"] + "',N'" + dt.Rows[i]["Product_id"] + "',N'" + dt.Rows[i]["Product_price"] + "',N'" + dt.Rows[i]["quantity"] + "')" +
                    " begin update Product set Product_quantity = Product_quantity - '" + qty + "' where Product_id = '" + dt.Rows[i]["Product_id"] + "' end";
                String mycon1 = "Data Source=.;Initial Catalog=QuanAoBaoChau;Integrated Security=True";
                SqlConnection s = new SqlConnection(mycon1);
                s.Open();
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = updatepass;
                cmd1.Connection = s;
                cmd1.ExecuteNonQuery();
                s.Close();

            }
            saveaddress();
            Response.Redirect("SuccessfulOrder.aspx");
        }
    }

}