using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_frm_categories : System.Web.UI.Page
{
    DataAccess objdataaccess = new DataAccess();
    DataTable objdatatable = new DataTable();
    MySqlCommand objmysqlcommand = new MySqlCommand();
    int cat_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        cat_id = Convert.ToInt32(Request.QueryString["_id"]);
        if (!IsPostBack)
        {

            Filldata();
        }
    }

    public Boolean insertData()
    {
        objmysqlcommand.CommandText = "insert into tbl_categories (cat_name) values('"+txtcatname.Text+ "')";
        objdataaccess.ExecuteQuery(objmysqlcommand);
        Response.Write("<script>alert('Successfully Inserted');window.location='frm_categoryview.aspx'</script>");
        return true;
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {

        if (cat_id > 0)
        {
            FnUpdateData();
            cleardata();
        }
        else
        {
            if (checkAlreadyExist())
            {
                insertData();
                cleardata();
            }
        }
    }
    private Boolean Filldata()
    {
        objmysqlcommand.CommandText = "SELECT * FROM tbl_categories where cat_id='" + cat_id + "' ";
        objdatatable = objdataaccess.GetRecords(objmysqlcommand);
        if (objdatatable.Rows.Count > 0)
        {
            txtcatname.Text= objdatatable.Rows[0]["cat_name"].ToString();


        }
        return true;
    }
    private Boolean FnUpdateData()
    {
        objmysqlcommand.CommandText = "UPDATE tbl_categories SET cat_name ='" +txtcatname.Text+ "' where cat_id='" + cat_id + "'";
        
        if (objdataaccess.ExecuteQuery(objmysqlcommand))
        {
            Response.Write("<script>alert('Successfully Updated');window.location='frm_categoryview.aspx'</script>");
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "key", "alert('Successfully Updated');", true);
            //Response.Redirect("frm_districtview.aspx");
        }
        return true;
    }
    private Boolean cleardata()
    {
        txtcatname.Text= "";
        btnsave.Text= "UPDATE";
        return true;
    }
    private Boolean checkAlreadyExist()
    {
        objmysqlcommand.CommandText = "select * from tbl_categories where cat_name='" +txtcatname.Text+ "'";
        objdatatable = objdataaccess.GetRecords(objmysqlcommand);
        if (objdatatable.Rows.Count > 0)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "key", "alert('District is already exist with Same Name');", true);
            return false;
        }
        return true;

    }
}
