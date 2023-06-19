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
    public partial class Adminoperation : System.Web.UI.Page
    {
        
         protected void Page_Load(object sender, EventArgs e)
         {

            
         }

        protected void BtnInsert_Click(object sender, EventArgs e)
        {
            try {
                String connectstr = "Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog=master;Integrated Security=True";
                SqlConnection conn = new SqlConnection(connectstr);
                int pid = Convert.ToInt32(txtDesignID.Text);
                String des = txtDescription.Text;
                String category = DropDownCategory.SelectedItem.Value;
                String name = txtJewelName.Text;
                int quantity = Convert.ToInt32(txtQuantity.Text);
                int price = Convert.ToInt32(txtPrice.Text);
                String picture = txtImage.Text;
                String weight = txtWeight.Text;
                conn.Open();           
                SqlCommand cmd = new SqlCommand("insert into Jewel1 values(" + pid + ",'" + name + "','" + des + "'," + Convert.ToInt32(txtPrice.Text) + "," + quantity + ",'" + weight + "','" + category + "','" + picture + "');", conn);           
                cmd.ExecuteNonQuery(); 
                conn.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
                txtDescription.Text = "";
                txtWeight.Text = "";
                txtImage.Text = "";
                txtQuantity.Text = ""; txtJewelName.Text = "";
                txtDesignID.Text = ""; txtPrice.Text = "";
               
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('Enter Valid Jewel Id and Jewel Name');window.location = 'AdminModifyDeletePage.aspx';</script>");
            } 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminModifyDeletePage.aspx");
        }

        protected void txtDesignID_TextChanged(object sender, EventArgs e)
        {

        }
    }
}