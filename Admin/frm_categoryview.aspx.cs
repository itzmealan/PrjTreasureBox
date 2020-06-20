using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_frm_categoryview : System.Web.UI.Page
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
        objmysqlcommand.CommandText = "SELECT * FROM tbl_categories";
        objdatatable = objdataaccess.GetRecords(objmysqlcommand);
        ListView1.DataSource = objdatatable;
        ListView1.DataBind();
        return true;
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        int cat_id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "edt")
        {
            Response.Redirect("frm_categories.aspx?_id=" + cat_id);
        }
    }
    protected void Btnaddnew_Click(object sender, EventArgs e)
    {
        Response.Redirect("frm_categories.aspx");
    }
}