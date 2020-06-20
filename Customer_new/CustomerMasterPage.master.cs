using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_new_CustomerMasterPage : System.Web.UI.MasterPage
{
    //Data_Acces objdataaccess = new Data_Acces();
    //DataTable objdatatable = new DataTable();
 
    //MySqlCommand objmysqlcommand = new MySqlCommand();
    //int customer_id;

    protected void Page_Load(object sender, EventArgs e)
    {
        //customer_id = Convert.ToInt32(Session["customer_id"]);

        //fillcart();
    }

    //public void fillcart()
    //{
    //    objmysqlcommand.CommandText = "select * from tbl_cart where customer_id='"+customer_id+"'";
    //    objdatatable = objdataaccess.GetRecords(objmysqlcommand);
    //    if (objdatatable.Rows.Count > 0)
    //    {
    //        ListView1.DataSource = objdatatable;
    //        ListView1.DataBind();
    //    }
    //}
}
