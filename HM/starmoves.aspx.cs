using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HM
{
    public partial class starmoves : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string nam = Request.QueryString["nam"];
            Label1.Text = nam;
            string sql = "SELECT * FROM[moves] WHERE( @nst1 =" + nam + ") OR ( @nst2 =" + nam + ") OR ( @nst3 =" + nam + ")";
            SqlDataSource1.SelectCommand = sql;
            SqlDataSource1.DataBind();
    }
    }
}