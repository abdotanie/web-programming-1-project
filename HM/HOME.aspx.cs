using System;
using System.Web.UI.WebControls;

namespace HM
{
    public partial class HOME : System.Web.UI.Page
    {
        
      
        public string itemselected(DropDownList aw)
        {
            string drop = "";                        
            drop = aw.SelectedValue;                                      
            return drop ;
        }
        
        protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM[moves]";
            string selc = itemselected(DropDownList6);
            if (selc != "0")
            {
                sql =sql+ " WHERE (year =" + DropDownList6.SelectedValue+")";
            }
            SqlDataSource1.SelectCommand = sql;

        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM[moves]";
            string selc = itemselected(DropDownList5);
            if (selc != "0")
            {
                sql = sql + " WHERE (lang LIKE N'%" + DropDownList5.SelectedValue.ToString() + "%')";
            }
            SqlDataSource1.SelectCommand = sql;
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM[moves]";
            string selc = itemselected(DropDownList4);
            if (selc != "0")
            {
                sql = sql + " WHERE (Type LIKE N'%" + DropDownList4.SelectedValue.ToString() + "%')";
            }
            SqlDataSource1.SelectCommand = sql;
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM[moves]";
            string selc = itemselected(DropDownList3);
            if (selc != "0")
            {
               
                sql = sql + " WHERE (country LIKE N'%" + DropDownList4.SelectedValue.ToString() + "%')";
            }
            SqlDataSource1.SelectCommand = sql;
        }

        

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string x = TextBox1.Text;
            string sql = "";
            sql = "SELECT * FROM[moves] WHERE ( name LIKE N'%" + x + "%') OR ( nst1 LIKE N'%" + x + "%') OR ( nst2 LIKE N'%" + x + "%') OR ( nst3 LIKE N'%" + x + "%')";
            SqlDataSource1.SelectCommand = sql;
        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}