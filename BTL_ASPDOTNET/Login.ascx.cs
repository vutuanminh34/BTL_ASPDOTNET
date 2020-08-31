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
    public partial class Login : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdLogin_Click(object sender, EventArgs e)
        {
            String mycon = @"Data Source=.;Initial Catalog=QuanAoBaoChau;Integrated Security=True";
            SqlConnection scon = new SqlConnection(mycon);
            scon.Open();
            String myquery = "select * from Login where Username='" + txtUserName.Text + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            String uname;
            String pass;
            uname = ds.Tables[0].Rows[0]["Username"].ToString().Trim();
            pass = ds.Tables[0].Rows[0]["Password"].ToString().Trim();
            scon.Close();
                if (uname == txtUserName.Text.Trim() && pass == txtPassword.Text.Trim())
                {
                    
                    Response.Redirect("ManageProduct.aspx");
                }
                else
                {
                    Response.Write("<script> alert('Sai tên tài khoản hoặc mật khẩu! Mời đăng nhập lại!')</script>");
                }
            }
            
        }
    }
