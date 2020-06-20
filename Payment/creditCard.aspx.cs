using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class Payment_creditCard : System.Web.UI.Page
{

    MySqlCommand mysqlcommand = new MySqlCommand();
    DataAccess da = new DataAccess();

    DataAccess objdataaccess = new DataAccess();
    DataTable objdatatable = new DataTable();
    DataTable objdatatable1 = new DataTable();
    MySqlCommand objmysqlcommand = new MySqlCommand();


    int customer_id;
    int productid;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Payment_Click(object sender, EventArgs e)
    {
        DateTime currentdate = System.DateTime.Now;
        productid = Convert.ToInt32(Session["product_id"]);
        customer_id = Convert.ToInt32(Session["cus_id"]);
        objmysqlcommand.CommandText = "SELECT * FROM tbl_product p inner join tbl_booking b on p.product_id=b.product_id where b.product_id='" + productid + "' and b.cus_id='" + customer_id + "'";
        objdatatable = objdataaccess.GetRecords(objmysqlcommand);

        objmysqlcommand.CommandText = "SELECT * FROM tbl_booking where cus_id='" + customer_id + "' and product_id='" + productid + "'";
        objdatatable1 = objdataaccess.GetRecords(objmysqlcommand);

        objmysqlcommand.CommandText = "INSERT INTO tbl_payment(cus_id, booking_id, amount,date,time) " +
                                       "values('" + customer_id + "','" + objdatatable1.Rows[0]["booking_id"] + "','" + objdatatable.Rows[0]["pr_price"] + "','" + currentdate.ToString("yyyy-MM-dd") + "','"+currentdate.ToString("hh:mm:ss")+"')";
        if (objdataaccess.ExecuteQuery(objmysqlcommand))
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Saved')", true);
        }

        string msg = "Payment Sucessfull... Go to your Home Page";
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
        btn_Payment.Enabled = false;
        Response.Redirect("../Customer_new/CustomerHome.aspx");



    }

}
