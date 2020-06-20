using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PaymentMasterPage : System.Web.UI.MasterPage
{
    MySqlCommand mysqlcommand = new MySqlCommand();
    DataAccess da = new DataAccess();


    DataAccess objdataaccess = new DataAccess();
    DataTable objdatatable = new DataTable();
    MySqlCommand objmysqlcommand = new MySqlCommand();
    //int customerid;
    int customer_id;
    int productid;
    protected void Page_Load(object sender, EventArgs e)
    {
        productid = Convert.ToInt32(Session["product_id"]);
        //customerid = Convert.ToInt32(Request.QueryString["_id"]);
        customer_id = Convert.ToInt32(Session["cus_id"]);
        trans_id.InnerText = "Transaction ID : PBTID857419";
        // trans_amount.InnerText = "Rs " + Request.QueryString["total"];

        objmysqlcommand.CommandText = "SELECT * FROM tbl_product p inner join tbl_booking b on p.product_id=b.product_id where b.product_id='" + productid + "' and b.cus_id='" + customer_id + "'";
       objdatatable= objdataaccess.GetRecords(objmysqlcommand);
       trans_amount.InnerText = "Rs " + objdatatable.Rows[0]["pr_price"];

    }
}
