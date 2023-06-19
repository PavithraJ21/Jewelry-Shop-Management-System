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
    public partial class BillPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                lblBillid.Text = (string)Session["Billid"];
                String connectstr = "Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog=master;Integrated Security=True";
                SqlConnection con = new SqlConnection(connectstr);
                con.Open();
          
                SqlCommand cmd = new SqlCommand("Select * from Bill where Bill_Id ='" + Session["Billid"] + "';", con);
              
                SqlDataReader da = cmd.ExecuteReader();
                if (da.HasRows)
                {
                    da.Read();
                    lblBillid.Text = da.GetValue(0).ToString();
                    //  Label8.Text = da.GetValue(2).ToString();
                       lblCustName.Text = da.GetValue(2).ToString();
                //    string dat= da.GetValue(2).ToString();
                 //   char[] cdat=new char[11];
                  //  for (int i = 0; i < 10; i++) {
                   //     cdat[i] = dat[i];
                   // }
                   // lblCustName.Text = cdat;
                    //    lblCustName.Text = da.GetValue(2).ToString();

                    //        lblMobileNumber.Text=da.GetValue(3).ToString();
                    //    lblEmail.Text= da.GetValue(4).ToString();
                    lblTotalCost.Text= da.GetValue(3).ToString();
                }
                con.Close();
                String connectstr2 = "Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog=master;Integrated Security=True";
                SqlConnection con1 = new SqlConnection(connectstr2);
                con1.Open();

                SqlCommand cmd2 = new SqlCommand("Select * from Customer where Customer_Id ='" + Session["custid"] + "';", con1);

                SqlDataReader db1 = cmd2.ExecuteReader();
                if (db1.HasRows)
                {
                    db1.Read();
                  //  lblBillid.Text = da.GetValue(0).ToString();
                    Label8.Text = db1.GetValue(1).ToString();
                   //       lblCustName.Text = db1.GetValue(1).ToString();

                            lblMobileNumber.Text=db1.GetValue(2).ToString();
                        lblEmail.Text= db1.GetValue(3).ToString();
                   // lblTotalCost.Text = da.GetValue(3).ToString();
                }
                con1.Close();
                String connectstr1 = "Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog=master;Integrated Security=True";
                SqlConnection scon = new SqlConnection(connectstr1);
                scon.Open();
                SqlCommand cmd1 = new SqlCommand("Select * from Customer_Address where Customer_Id ='" + Session["custid"] + "';", scon);
                SqlDataReader db = cmd1.ExecuteReader();
                if (db.HasRows) {
                    db.Read();
                    Label2.Text = db.GetValue(1).ToString();
                    Label4.Text = db.GetValue(2).ToString();
                    Label6.Text = db.GetValue(3).ToString();
                }
                scon.Close();
               
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }
    }
}