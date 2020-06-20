using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;


public partial class Admin_employeeetails : System.Web.UI.Page
{
    DataAccess objdataaccess = new DataAccess();
    DataTable objdatatable = new DataTable();
    MySqlCommand objmysqlcommand = new MySqlCommand();


    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    private Boolean FillList()
    {
        objmysqlcommand.CommandText = "SELECT * FROM tblemployee WHERE employeestatus='0' ORDER BY employeedoj";
        objdatatable = objdataaccess.GetRecords(objmysqlcommand);
        ListView1.DataSource = objdatatable;
        ListView1.DataBind();
        return true;
    }

    protected void Btnaddnew_Click(object sender, EventArgs e)
    {
        Response.Redirect("employeeregistration.aspx");
    }


    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        int employeeid = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "edt")
        {
            Response.Redirect("employeeregistration.aspx?_id=" + employeeid);
        }
    }
}