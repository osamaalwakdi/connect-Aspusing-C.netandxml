using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace connect_Aspusing_C.netandxml
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DataSet ds = new DataSet();

   
        protected void Page_Load(object sender, EventArgs e)
        {
            if (cls_securty.varLogin != null)
            {

                ds.ReadXml(Request.PhysicalApplicationPath + "\\Bookings.xml");
                getAllBookings(GridView1);
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

           
        }
        void getAllBookings(GridView gv)
        {
            gv.DataSource = ds;
            gv.DataBind();
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}