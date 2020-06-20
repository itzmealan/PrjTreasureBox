using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_frm_locationview : System.Web.UI.Page
{
    DataAccess objdataaccess = new DataAccess();
    DataTable objdatatable = new DataTable();
    MySqlCommand objmysqlcommand = new MySqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //FillList();
            Filldistrictdetails();
        }
    }
    private Boolean FillList()
    {
        objmysqlcommand.CommandText = "SELECT * FROM tbl_location where district_id = '"+ddldistrict.SelectedValue+"' ";
        objdatatable = objdataaccess.GetRecords(objmysqlcommand);
        ListView1.DataSource = objdatatable;
        ListView1.DataBind();
        return true;
    }
    protected void Btnaddnew_Click(object sender, EventArgs e)
    {
        Session["distid"] = ddldistrict.SelectedValue;
        Session["distname"] = ddldistrict.SelectedItem;
        Response.Redirect("frm_location.aspx");
    }

    private Boolean Filldistrictdetails()
    {
        objmysqlcommand.CommandText = "SELECT * FROM tbl_district";
        objdatatable = objdataaccess.GetRecords(objmysqlcommand);
        if (objdatatable.Rows.Count > 0)
        {
            ddldistrict.Items.Insert(0, "--Select--");
            foreach (DataRow dr in objdatatable.Rows)
            {
                ddldistrict.Items.Add(new ListItem(dr["districtname"].ToString(), dr["district_id"].ToString()));
            }

        }
        return true;
    }
    protected void ddldistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillList();
    }
    protected void ListView1_ItemCommand1(object sender, ListViewCommandEventArgs e)
    {
        int location_id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "edt")
        {
            Session["distid"] = ddldistrict.SelectedValue;
            Session["distname"] = ddldistrict.SelectedItem;
            Response.Redirect("frm_location.aspx?_id=" + location_id);
        }
    }
}