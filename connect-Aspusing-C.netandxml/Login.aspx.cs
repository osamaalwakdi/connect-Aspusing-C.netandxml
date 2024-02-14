using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace connect_Aspusing_C.netandxml
{
    public partial class Login : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
                ds.ReadXml(Request.PhysicalApplicationPath + "\\Users.xml");           
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            bool r= false;
            for(int i=0; i < ds.Tables[0].Rows.Count; i++)
            {
                if (txtusername.Text == ds.Tables[0].Rows[i][0].ToString() &&
                   txtpassword.Text == ds.Tables[0].Rows[i][1].ToString()) 
                {
                    r = true;
                    cls_securty.varLogin = "yes";
                }
            }
            if (r == false)
            {
                Lbmsg.Text = "بيانات التسجيل غير صحيحة";
            }
            else { Response.Redirect("WebForm1.aspx"); }
        }
    }
}