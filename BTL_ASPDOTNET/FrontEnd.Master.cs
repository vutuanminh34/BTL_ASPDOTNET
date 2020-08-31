using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace BTL_ASPDOTNET
{
    public partial class TrangChu : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            if (dt != null)
            {

                Label1.Text = dt.Rows.Count.ToString();
            }
            else
            {
                Label1.Text = "0";

            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session.Remove("buyitems");
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Remove("buyitems");
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }
    }
}