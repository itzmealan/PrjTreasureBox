using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_frm_subcategoryview : System.Web.UI.Page
{
    DataAccess objdataaccess = new DataAccess();
    DataTable objdatatable = new DataTable();
    MySqlCommand objmysqlcommand = new MySqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            //FillList();
            FillCategorydetails();
        }
    }
    protected void ddlcat_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillList();
    }
    protected void Btnaddnew_Click(object sender, EventArgs e)
    {
        
        Session["catid"] = ddlcat.SelectedValue;
        Session["catname"] = ddlcat.SelectedItem;
        Response.Redirect("frm_subcategory.aspx");
    }
    private Boolean FillList()
    {
        objmysqlcommand.CommandText = "SELECT * FROM tbl_subcat where cat_id = '" +ddlcat.SelectedValue+ "' ";
        objdatatable = objdataaccess.GetRecords(objmysqlcommand);
        ListView1.DataSource = objdatatable;
        ListView1.DataBind();
        return true;
    }
     private Boolean FillCategorydetails()
    {
        objmysqlcommand.CommandText = "SELECT * FROM tbl_categories";
        objdatatable = objdataaccess.GetRecords(objmysqlcommand);
        if (objdatatable.Rows.Count > 0)
        {
            ddlcat.Items.Insert(0, "--Select--");
            foreach (DataRow dr in objdatatable.Rows)
            {
                ddlcat.Items.Add(new ListItem(dr["cat_name"].ToString(), dr["cat_id"].ToString()));
            }

        }
        return true;
}
     protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
     {
         int cat_id = Convert.ToInt32(e.CommandArgument);
         if (e.CommandName == "edt")
         {
             Session["catid"] = ddlcat.SelectedValue;
             Session["catname"] = ddlcat.SelectedItem;
             Response.Redirect("frm_subcategory.aspx?_id=" + cat_id);
         }
     }
}
