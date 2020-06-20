using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_new_frm_cartSingleView : System.Web.UI.Page
{
    DataAccess objdataaccess = new DataAccess();
    DataTable objdatatable = new DataTable();
    MySqlCommand objmysqlcommand = new MySqlCommand();
    int cusid;
    int product_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        cusid = Convert.ToInt32(Session["cus_id"].ToString());
        product_id = Convert.ToInt32(Request.QueryString["_id"]);
        filldata();
    }
    
   
    protected void ListView2_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        
    }
    public bool buyNow()
    {
        Session["product_id"] = product_id;
        DateTime currentdate = System.DateTime.Now;
        // DateTime date=currentdate.Date;
        //DateTime time=System.DateTime.


        objmysqlcommand.CommandText = "insert into tbl_booking(cus_id,product_id,time,date) values('" + cusid + "','" + product_id + "' ,'" + currentdate.ToString("hh:mm:ss") + "','" + currentdate.ToString("yyyy-MM-dd") + "')";
        objdataaccess.ExecuteQuery(objmysqlcommand);

        objmysqlcommand.CommandText = "delete from tbl_cart where product_id='" + product_id + "' and cus_id='" + cusid + "'";
        objdataaccess.ExecuteQuery(objmysqlcommand);
        //Response.Write("<script>alert('Deleted Successfully');window.location='frm_vewCart.aspx'</script>");
        Response.Write("<script>alert('item added to cart ');window.location='../Payment/selectPayment.aspx'</script>");


        return true;


    }
    public void filldata()
    {
        objmysqlcommand.CommandText = "select * from tbl_product where product_id='" + product_id + "'";


        objdatatable = objdataaccess.GetRecords(objmysqlcommand);
        ListView1.DataSource = objdatatable;
        ListView1.DataBind();
        ListView2.DataSource = objdatatable;
        ListView2.DataBind();
        // unit_price = Convert.ToInt32(objdatatable.Rows[0]["product_price"]);
    }
    protected void LinkButton2_Click1(object sender, EventArgs e)
    {
        buyNow();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        delete();
    }
    public void delete()
    {
        objmysqlcommand.CommandText = "delete from tbl_cart where product_id='" +product_id+ "' and cus_id='"+cusid+"'"; 
        objdataaccess.ExecuteQuery(objmysqlcommand);
        Response.Write("<script>alert('Deleted Successfully');window.location='frm_vewCart.aspx'</script>");
    }

}