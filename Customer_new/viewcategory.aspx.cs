using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_viewcategory : System.Web.UI.Page
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
        //FillList();
    }

    private Boolean FillList()
    {
        objmysqlcommand.CommandText = "SELECT * FROM tbl_product where cat_id='" + ddlcat.SelectedValue + "' and subcat_id='"+ddlsubcat.SelectedValue+"'";
        objdatatable = objdataaccess.GetRecords(objmysqlcommand);
        ListView1.DataSource = objdatatable;
        ListView1.DataBind();
        return true;
    }
    protected void Btnaddnew_Click(object sender, EventArgs e)
    {

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
    private Boolean FillSubcatDeatils()
    {
        objmysqlcommand.CommandText = "SELECT * FROM tbl_subcat where cat_id='" +ddlcat.SelectedValue+"'";
        objdatatable = objdataaccess.GetRecords(objmysqlcommand);
        ddlsubcat.Items.Clear();
        if (objdatatable.Rows.Count > 0)
        {
            ddlsubcat.Items.Insert(0, "--Select--");
            foreach (DataRow dr in objdatatable.Rows)
            {
                ddlsubcat.Items.Add(new ListItem(dr["subcat_name"].ToString(), dr["subcat_id"].ToString()));
            }

        }
        return true;
    }
    protected void ddlcat_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillSubcatDeatils();
     
    }
    protected void ddlsubcat_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillList();
    }
    protected void ListView1_ItemCommand1(object sender, ListViewCommandEventArgs e)
    {
        int product_id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "view")
        {
            Response.Redirect("frm_Product_singleview.aspx?_id=" + product_id);
        }
    }
}