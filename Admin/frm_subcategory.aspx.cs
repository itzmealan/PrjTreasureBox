using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_frm_subcategory : System.Web.UI.Page
{

    DataAccess objdataaccess = new DataAccess();
    DataTable objdatatable = new DataTable();
    MySqlCommand objmysqlcommand = new MySqlCommand();
    int subcatid;
    protected void Page_Load(object sender, EventArgs e)
    {

        txtcatname.Text = Session["catname"].ToString();
        subcatid = Convert.ToInt32(Request.QueryString["_id"]);
        if (!IsPostBack)
        {
           

            Filldata();
        }
    }
    public Boolean insertData()
    {
        int catid = Convert.ToInt32(Session["catid"].ToString());
        objmysqlcommand.CommandText = "insert into tbl_subcat(cat_id,subcat_name)values('" + catid + "','" + txtsubcatname.Text + "')";
        objdataaccess.ExecuteQuery(objmysqlcommand);
        Response.Write("<script>alert('Successfully Inserted');window.location='frm_subcategoryview.aspx'</script>");
        return true;
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (subcatid > 0)
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
    private Boolean FnUpdateData()
    {
        int catid = Convert.ToInt32(Session["catid"].ToString());
        objmysqlcommand.CommandText = "UPDATE tbl_subcat SET cat_id ='" + catid + "',subcat_name='" + txtsubcatname.Text + "' where subcat_id='" + subcatid + "'";

        if (objdataaccess.ExecuteQuery(objmysqlcommand))
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "key", "alert('Successfully Updated');", true);
            Response.Redirect("frm_subcategoryview.aspx");
        }
        return true;
    }
    private Boolean cleardata()
    {
        txtcatname.Text= "";
        txtsubcatname.Text= "";
        btnsave.Text= "UPDATE";
        return true;
    }
    private Boolean checkAlreadyExist()
    {
        objmysqlcommand.CommandText = "select * from tbl_subcat where subcat_name='" +txtsubcatname.Text+ "'";
        objdatatable = objdataaccess.GetRecords(objmysqlcommand);
        if (objdatatable.Rows.Count > 0)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "key", "alert('Already exist with Same Name');", true);
            return false;
        }
        return true;

    }
    private Boolean Filldata()
    {
        objmysqlcommand.CommandText = "SELECT * FROM tbl_subcat where subcat_id='" + subcatid + "' ";
        objdatatable = objdataaccess.GetRecords(objmysqlcommand);
        if (objdatatable.Rows.Count > 0)
        {
            txtsubcatname.Text= objdatatable.Rows[0]["subcat_name"].ToString();


        }
        return true;
    }
}