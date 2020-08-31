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
    public partial class OrderInfor : System.Web.UI.Page
    {
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
            }
            else
            {
                if (Request.QueryString["sno"] != null)
                {
                    dt = (DataTable)Session["buyitems"];


                    for (int i = 0; i <= dt.Rows.Count - 1; i++)
                    {
                        int sr;
                        int sr1;
                        sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                        Label2.Text = Request.QueryString["sno"];
                        Label3.Text = sr.ToString();
                        sr1 = Convert.ToInt32(Label2.Text);
                        //sr1 = sr1 + 1;


                        if (sr == sr1)
                        {
                            Label2.Text = dt.Rows[i]["sno"].ToString();
                            Label1.Text = dt.Rows[i]["Product_id"].ToString();
                            Label3.Text = dt.Rows[i]["Product_code"].ToString();
                            Label4.Text = dt.Rows[i]["Product_name"].ToString();
                            txtsl.Text = dt.Rows[i]["quantity"].ToString();
                            Label5.Text = dt.Rows[i]["Product_price"].ToString();
                            Label6.Text = dt.Rows[i]["totalprice"].ToString();

                            break;

                        }
                    }
                }
                else
                {
                }

            }
        }

        protected void txtsl_TextChanged(object sender, EventArgs e)
        {
            int q;
            q = Convert.ToInt32(txtsl.Text);
            int cost;
            cost = Convert.ToInt32(Label5.Text);
            int totalcost;
            totalcost = cost * q;
            Label6.Text = totalcost.ToString();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            dt = (DataTable)Session["buyitems"];


            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());

                sr1 = Convert.ToInt32(Label2.Text);



                if (sr == sr1)
                {
                    dt.Rows[i]["sno"] = Label2.Text;
                    dt.Rows[i]["Product_id"] = Label1.Text;
                    dt.Rows[i]["Product_code"] = Label3.Text;
                    dt.Rows[i]["Product_name"] = Label4.Text;
                    dt.Rows[i]["quantity"] = txtsl.Text;
                    dt.Rows[i]["Product_price"] = Label5.Text;
                    dt.Rows[i]["totalprice"] = Label6.Text;
                    dt.AcceptChanges();

                    break;

                }
            }
            Response.Redirect("ShowOrder.aspx");
        }
    
    }
}