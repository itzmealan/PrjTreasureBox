using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_new_chart_Purchase : System.Web.UI.Page
{
    DataAccess objdataaccess = new DataAccess();
    DataTable objdatatable = new DataTable();
    MySqlCommand objmysqlcommand = new MySqlCommand();
    int cusid;
    protected void Page_Load(object sender, EventArgs e)
    {
        cusid = Convert.ToInt32(Session["cus_id"].ToString());
        DataSet ds = new DataSet();
        int currentyear = System.DateTime.Now.Year;

        objmysqlcommand.CommandText = "SELECT count(*)as 'Purchase',monthname(date) as 'Month' FROM tbl_payment where year(date)='" + currentyear + "' and cus_id='" + cusid + "' group by month(date)";

        objdatatable = objdataaccess.GetRecords(objmysqlcommand);


        string[] x = new string[objdatatable.Rows.Count];
        int[] y = new int[objdatatable.Rows.Count];
        for (int i = 0; i < objdatatable.Rows.Count; i++)
        {

            x[i] = objdatatable.Rows[i]["Month"].ToString();
            y[i] = Convert.ToInt32(objdatatable.Rows[i]["Purchase"].ToString());
        }
        Chart1.Series[0].Points.DataBindXY(x, y);
    }
}