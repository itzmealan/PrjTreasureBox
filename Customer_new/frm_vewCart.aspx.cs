using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_new_frm_vewCart : System.Web.UI.Page
{
    DataAccess objdataaccess = new DataAccess();
    DataTable objdatatable = new DataTable();
    MySqlCommand objmysqlcommand = new MySqlCommand();
    int customer_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        customer_id = Convert.ToInt32(Session["cus_id"]);
        FillList();

    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        int product_id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "view")
        {
            Response.Redirect("frm_cartSingleView.aspx?_id=" + product_id);
        }
    }
    private Boolean FillList()
    {
        objmysqlcommand.CommandText = "SELECT * FROM tbl_cart c inner join tbl_product p on p.product_id=c.product_id where c.cus_id='" + customer_id + "'";
        objdatatable = objdataaccess.GetRecords(objmysqlcommand);
        ListView1.DataSource = objdatatable;
        ListView1.DataBind();
        return true;
    }
}