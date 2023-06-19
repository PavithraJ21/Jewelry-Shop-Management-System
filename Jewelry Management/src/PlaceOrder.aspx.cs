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
    public partial class PlaceOrder : System.Web.UI.Page
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
            Label3.Text = DateTime.Now.ToString("yyyy-MM-dd"); ;
            findorderid();
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

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
        public void findorderid()
        {
            String pass = "abcdefghijklmnopqrstuzwxyz123456789";
            Random r = new Random();
            char[] mypass = new char[4];
            for (int i = 0; i < 4; i++)
            {
                mypass[i] = pass[(int)(35 * r.NextDouble())];
            }
            String orderid;
            orderid = "Order" + DateTime.Now.Day.ToString() + new string(mypass);
            Label2.Text = orderid;
        }
        public void saveCust()
        {
            
            try
            {
                String pass = "123456789";
                Random r = new Random();
                char[] mypass = new char[4];
                for (int i = 0; i < 4; i++)
                {
                    mypass[i] = pass[(int)(9 * r.NextDouble())];
                }
                String custid;
                custid = "C" +  new string(mypass);
                Session["custid"] = custid;
                string updatepass = "insert into Bill values('" + Label2.Text.Trim() + "','" + custid + "','" + Label3.Text.Trim() + "'," + Convert.ToInt32(GridView1.FooterRow.Cells[6].Text.Trim()) + ")";
                String connectstr = "Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog=master;Integrated Security=True";
                string updatecust = "insert into Customer values('" + custid + "','" + TxtCustName.Text + "'," + Convert.ToInt64(TxtMobilenum.Text.Trim()) + ",'" + TxtCustemailid.Text.Trim() + "')";
                string updateadd = "insert into Customer_Address  values('" + custid + "','" + TxtStreet.Text.Trim() + "','" + TxtCity.Text.Trim() + "'," + Convert.ToInt32(TxtPincode.Text.Trim()) + ")";
                SqlConnection scon = new SqlConnection(connectstr);
                scon.Open();
                SqlCommand cmd1 = new SqlCommand();
                SqlCommand cmd2 = new SqlCommand();
                SqlCommand cmd3 = new SqlCommand();
               
                cmd3.CommandText = updatecust;
                cmd3.Connection = scon;
                cmd3.ExecuteNonQuery();
                cmd1.CommandText = updatepass;
                cmd1.Connection = scon;
                cmd1.ExecuteNonQuery();
                cmd2.CommandText = updateadd;
                cmd2.Connection = scon;
                cmd2.ExecuteNonQuery();
                scon.Close();

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["Buy"];
            try
            {
                saveCust();
                for (int i = 0; i <= dt.Rows.Count - 1; i++)
                {
                    String connectstr = "Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog=master;Integrated Security=True";
                    SqlConnection con = new SqlConnection(connectstr);
                    con.Open();
                    String update = "insert into Bill_Items values('" + Label2.Text + "'," + dt.Rows[i]["designid"] + ")";
                    String updateQuan = "UPDATE Jewel1 set Quantity=Quantity-1 where Jewel_Id=" + dt.Rows[i]["designid"];

                    SqlCommand cmd1 = new SqlCommand(update, con);
                    SqlCommand cmd2 = new SqlCommand(updateQuan, con);
           
                    cmd1.ExecuteNonQuery();
                    cmd2.ExecuteNonQuery();
                    con.Close();
                    Session["Billid"] = Label2.Text;

                }
    
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
            Response.Redirect("BillPage.aspx");
        }
    }
}