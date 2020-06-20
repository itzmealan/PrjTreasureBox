using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_frm_productviewaspx : System.Web.UI.Page
{
    DataAccess objdataaccess = new DataAccess();
    DataTable objdatatable = new DataTable();
    MySqlCommand objmysqlcommand = new MySqlCommand();
    string cusid;
    protected void Page_Load(object sender, EventArgs e)
    {
        cusid = Session["cus_id"].ToString();
        if (!IsPostBack)
        {
            FillList();
        }
    }
    private Boolean FillList()
    {
        objmysqlcommand.CommandText = "select * from tbl_product p inner join tbl_categories c on c.cat_id= p.cat_id inner join tbl_subcat s on s.subcat_id=p.subcat_id where cus_id='" + cusid + "'";
        objdatatable = objdataaccess.GetRecords(objmysqlcommand);
        ListView1.DataSource = objdatatable;
        ListView1.DataBind();
        return true;
    }
    protected void Btnaddnew_Click(object sender, EventArgs e)
    {
        Response.Redirect("frm_productreg.aspx");
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
         int product_id = Convert.ToInt32(e.CommandArgument);
         if (e.CommandName == "dlt")
         {

             objmysqlcommand.CommandText = "Delete from tbl_product WHERE product_id='" + product_id + "'";

             if (objdataaccess.ExecuteQuery(objmysqlcommand))
             {
                 ScriptManager.RegisterStartupScript(this, this.GetType(), "key", "alert('Document details successfully deleted');", true);
                 Response.Redirect("frm_productview.aspx");
             }
         }
    }
    

}
