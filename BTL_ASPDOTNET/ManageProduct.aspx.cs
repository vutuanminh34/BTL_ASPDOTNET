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

        public void SaveFileUpload()
        {
            string strFilePath;
            if(FileUploadAnh.FileName != null)
            {
                strFilePath = Server.MapPath("..images/" + FileUploadAnh.FileName);
                FileUploadAnh.PostedFile.SaveAs(strFilePath);
            }
        }

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
            txtTinhTrang.Text = "";
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            if (sanpham.CheckExist(txtMaSP.Text) == false)
            {
                P.Product_id = txtMaSP.Text;
                P.Product_code = txtCodeSP.Text;
                P.Product_name = txtTenSP.Text;
                P.Product_price = Convert.ToInt32(txtGia.Text);
                P.Product_quantity = Convert.ToInt32(txtSL.Text);
                P.Product_material = txtChatLieu.Text;
                P.Product_madein = txtXuatXu.Text;
                string anh = FileUploadAnh.FileName;
                P.Product_image = "~/images/photo/" + anh;
                P.Product_categoryid = ddlTenLoaiSP.SelectedValue;
                P.Product_status = txtTinhTrang.Text;

                sanpham.InsertProduct(P.Product_id, P.Product_code, P.Product_name, P.Product_price, P.Product_quantity, P.Product_material, P.Product_madein, P.Product_image, P.Product_categoryid, P.Product_status);
                
                HienThi();
                Response.Write("<script> alert('Thêm thành công!') </script>");
                
            }
            else
            {
                Response.Write("<script> alert('Mã sản phẩm đã tồn tại! Vui lòng nhập lại mã!') </script>");
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            P.Product_id = txtMaSP.Text;
            P.Product_code = txtCodeSP.Text;
            P.Product_name = txtTenSP.Text;
            P.Product_price = Convert.ToInt32(txtGia.Text);
            P.Product_quantity = Convert.ToInt32(txtSL.Text);
            P.Product_material = txtChatLieu.Text;
            P.Product_madein = txtXuatXu.Text;
            string anh = FileUploadAnh.FileName;
            P.Product_image = "~/images/photo/" + anh;
            P.Product_categoryid = ddlTenLoaiSP.SelectedValue;
            P.Product_status = txtTinhTrang.Text;
            
            if (FileUploadAnh.FileName != "")
            {
                sanpham.UpdateProduct(P.Product_id, P.Product_code, P.Product_name, P.Product_price, P.Product_quantity, P.Product_material, P.Product_madein, P.Product_image, P.Product_categoryid, P.Product_status);

                HienThi();
                Response.Write("<script> alert('Sửa thành công!') </script>");
            }
            else
            {
                sanpham.UpdateProductWithImageNoChance(P.Product_id, P.Product_code, P.Product_name, P.Product_price, P.Product_quantity, P.Product_material, P.Product_madein, P.Product_categoryid, P.Product_status);

                HienThi();
                Response.Write("<script> alert('Sửa thành công!') </script>");
            }
            

        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            P.Product_id = txtMaSP.Text;

            sanpham.DeleteProduct(P.Product_id);
            HienThi();
            Response.Write("<script> alert('Xóa thành công!') </script>");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int d = dtgSanPham.SelectedIndex;
            txtMaSP.Text = dtgSanPham.Rows[d].Cells[0].Text;
            txtCodeSP.Text = dtgSanPham.Rows[d].Cells[1].Text;
            txtTenSP.Text = HttpUtility.HtmlDecode(dtgSanPham.Rows[d].Cells[2].Text);
            txtGia.Text = dtgSanPham.Rows[d].Cells[3].Text;
            txtSL.Text = dtgSanPham.Rows[d].Cells[4].Text;
            txtChatLieu.Text = dtgSanPham.Rows[d].Cells[5].Text;
            txtXuatXu.Text = HttpUtility.HtmlDecode(dtgSanPham.Rows[d].Cells[6].Text);
            ddlTenLoaiSP.SelectedValue = dtgSanPham.Rows[d].Cells[8].Text;
            txtTinhTrang.Text = HttpUtility.HtmlDecode(dtgSanPham.Rows[d].Cells[9].Text);
        }
    }
}
