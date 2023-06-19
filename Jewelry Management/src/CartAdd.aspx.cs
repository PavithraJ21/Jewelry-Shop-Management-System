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
    public partial class CartAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
         
                String connectstr = "Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog=master;Integrated Security=True";
                SqlConnection scon = new SqlConnection(connectstr);
                scon.Open();
                SqlCommand cmd;
                if (Session["addproduct"].ToString() == "true")
                {
                    Session["addproduct"] = "false";
                    DataTable dt = new DataTable();
                    DataRow dr;
                    dt.Columns.Add("sno");
                    dt.Columns.Add("designid");
                    dt.Columns.Add("Jewel_Name");
                    dt.Columns.Add("Image");
                    dt.Columns.Add("Description");
                    dt.Columns.Add("Weight");
                    dt.Columns.Add("Price");
          
                    if (Request.QueryString["id"] != null)
                    {
                        if (Session["Buy"] == null)
                        {
                            dr = dt.NewRow();
                            cmd = new SqlCommand("Select * from Jewel1 where Jewel_Id =" + Request.QueryString["id"] + ";", scon);
                            SqlDataReader da = cmd.ExecuteReader();
                            if (da.HasRows)
                            {
                                da.Read();
                                dr["sno"] = 1;
                                dr["designid"] = da.GetValue(0).ToString();
                                dr["Jewel_Name"] = da.GetValue(1).ToString();
                                dr["Description"] = da.GetValue(2).ToString();
                                
                                dr["Weight"] = da.GetValue(5).ToString();
                                dr["Price"] = da.GetValue(3).ToString();
                                dr["Image"] = da.GetValue(7).ToString();
                                dt.Rows.Add(dr);
                                GridView1.DataSource = dt;
                                GridView1.DataBind();
                                Session["Buy"] = dt;
                                GridView1.FooterRow.Cells[5].Text = "Total Amount";
                                GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                            }
                        }
                        else
                        {
                            dt = (DataTable)Session["Buy"];
                            int sr;
                            sr = dt.Rows.Count;
                            dr = dt.NewRow();
                            cmd = new SqlCommand("Select * from Jewel1 where Jewel_Id =" + Request.QueryString["id"] + ";", scon);
                            SqlDataReader d = cmd.ExecuteReader();
                            if (d.HasRows)
                            {
                                d.Read();
                                dr["sno"] = sr + 1;
                                dr["designid"] = d.GetValue(0).ToString();
                                dr["Jewel_Name"] = d.GetValue(1).ToString();
                                dr["Description"] = d.GetValue(2).ToString();
                              
                                dr["Weight"] = d.GetValue(5).ToString();
                                dr["Price"] = d.GetValue(3).ToString();
                                dr["Image"] = d.GetValue(7).ToString();
                                dt.Rows.Add(dr);
                                GridView1.DataSource = dt;
                                GridView1.DataBind();
                                Session["Buy"] = dt;
                                GridView1.FooterRow.Cells[5].Text = "Total Amount";
                                GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                            }
                        }
                    }
                }
                else
                {
                    DataTable dt;
                    dt = (DataTable)Session["Buy"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
       
                    }
                }
                scon.Close();
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }
        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["Buy"];
            int row = dt.Rows.Count;
            int i = 0;
            int gtotal = 0;
            while (i < row)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["Price"].ToString());
                i = i + 1;
            }
            return gtotal;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["Buy"];
            for(int i = 1; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int srl;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                srl = Convert.ToInt32(qdata);
                if (sr == srl)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    break;
                }
            }
            for(int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();
            }
            Session["Buy"] = dt;
            Response.Redirect("CartAdd.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("PlaceOrder.aspx");
        }
      
    }
}