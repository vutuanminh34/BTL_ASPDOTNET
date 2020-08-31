using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BUS;

namespace BTL_ASPDOTNET
{
    public partial class ManageProduct : System.Web.UI.Page
    {
        Product_DTO P = new Product_DTO();
        Category_DTO C = new Category_DTO();
        Product_BUS sanpham = new Product_BUS();

        public void HienThi()
        {
            dtgSanPham.DataSource = sanpham.ShowProduct();
            dtgSanPham.DataBind();
        }

        public void ShowTenloai()
        {
            if (!IsPostBack)
            {
                ddlTenLoaiSP.DataSource = sanpham.ShowCategory();
                ddlTenLoaiSP.DataTextField = "Category_name";
                ddlTenLoaiSP.DataValueField = "Category_id";
                ddlTenLoaiSP.DataBind();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            HienThi();
            ShowTenloai();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("HomePage.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageNews.aspx");
        }

        protected void btnNhaplai_Click(object sender, EventArgs e)
        {
            txtMaSP.Text = "";
            txtMaSP.Focus();
            txtCodeSP.Text = "";
            txtTenSP.Text = "";
            txtSL.Text = "";
            txtGia.Text = "";
            txtChatLieu.Text = "";
            txtXuatXu.Text = "";
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {

        }

        protected void btnSua_Click(object sender, EventArgs e)
        {

        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int d = dtgSanPham.SelectedIndex;
            txtMaSP.Text = dtgSanPham.Rows[d].Cells[0].Text;
            txtCodeSP.Text = dtgSanPham.Rows[d].Cells[1].Text;
            txtTenSP.Text = dtgSanPham.Rows[d].Cells[2].Text;
            txtGia.Text = dtgSanPham.Rows[d].Cells[3].Text;
            txtSL.Text = dtgSanPham.Rows[d].Cells[4].Text;
            txtChatLieu.Text = dtgSanPham.Rows[d].Cells[5].Text;
            txtXuatXu.Text = dtgSanPham.Rows[d].Cells[6].Text;
            ddlTenLoaiSP.SelectedValue = dtgSanPham.Rows[d].Cells[8].Text;
        }
    }
}