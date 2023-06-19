using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace JMS
{
    public partial class AdminModifyDeletePage : System.Web.UI.Page
    {
 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
        }

        
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            Label17.Text = "";
            GridView1.EditRowStyle.BackColor = System.Drawing.Color.Orange;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label jid = GridView1.Rows[e.RowIndex].FindControl("Label4") as Label;
            String connectstr = "Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog=master;Integrated Security=True";
            SqlConnection conn = new SqlConnection(connectstr);
            conn.Open();
            String updatedata = "Delete from Jewel1 where Jewel_Id=" + Convert.ToInt32(jid.Text) + ";";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Removed Successfully');", true);
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            Label17.Text = "";
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                Label jid = GridView1.Rows[e.RowIndex].FindControl("Label11") as Label;

                TextBox price = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
                String connectstr = "Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog=master;Integrated Security=True";
                SqlConnection conn = new SqlConnection(connectstr);
                conn.Open();
                String updatedata = "Update Jewel1 set Price=" + Convert.ToInt32(price.Text) + " where Jewel_Id=" + Convert.ToInt32(jid.Text) + ";";
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = updatedata;
                cmd.Connection = conn;
                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Updated Successfully');", true);
                GridView1.EditIndex = -1;
                SqlDataSource1.DataBind();
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
            catch (Exception ex) {
                Response.Write("<script>alert('Invalid Price');window.location = 'AdminModifyDeletePage.aspx';</script>");
            }
        }
    }
}