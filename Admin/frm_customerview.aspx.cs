using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_frm_customerview : System.Web.UI.Page
{
    DataAccess objdataaccess = new DataAccess();
    DataTable objdatatable = new DataTable();
    MySqlCommand objmysqlcommand = new MySqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillList();
        }
    }
    private Boolean FillList()
    {
        objmysqlcommand.CommandText = "select * from tbl_customer c inner join tbl_district d on d.district_id=c.district_id inner join tbl_location l on l.location_id=c.location_id";
        objdatatable = objdataaccess.GetRecords(objmysqlcommand);
        ListView1.DataSource = objdatatable;
        ListView1.DataBind();
        return true;
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {

    }
}