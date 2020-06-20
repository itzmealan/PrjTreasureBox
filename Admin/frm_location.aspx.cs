using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_frm_location : System.Web.UI.Page
{
    DataAccess objdataaccess = new DataAccess();
    DataTable objdatatable = new DataTable();
    MySqlCommand objmysqlcommand = new MySqlCommand();
    int location_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtdistrictname.Text = Session["distname"].ToString();
        location_id = Convert.ToInt32(Request.QueryString["_id"]);
        if (!IsPostBack)
        {

            Filldata();
        }
    }
    public Boolean insertData()
    {
        int distid = Convert.ToInt32(Session["distid"].ToString());
        objmysqlcommand.CommandText = "insert into tbl_location (district_id,locationname)values('" + distid + "','" + txtlocationname.Text + "')";
        objdataaccess.ExecuteQuery(objmysqlcommand);
        Response.Write("<script>alert('Successfully Inserted');window.location='frm_locationview.aspx'</script>");
        return true;
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (location_id > 0)
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
        int distid = Convert.ToInt32(Session["distid"].ToString());
        objmysqlcommand.CommandText = "UPDATE tbl_location SET district_id ='" + distid + "',locationname='" + txtlocationname.Text + "' where location_id='" + location_id + "'";

        if (objdataaccess.ExecuteQuery(objmysqlcommand))
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "key", "alert('Successfully Updated');", true);
            Response.Redirect("frm_locationview.aspx");
        }
        return true;
    }
    private Boolean cleardata()
    {
        txtdistrictname.Text = "";
        txtlocationname.Text = "";
        btnsave.Text = "UPDATE";
        return true;
    }
    private Boolean checkAlreadyExist()
    {
        objmysqlcommand.CommandText = "select * from tbl_location where locationname='" + txtlocationname.Text + "'";
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
        objmysqlcommand.CommandText = "SELECT * FROM tbl_location where location_id='" + location_id + "' ";
        objdatatable = objdataaccess.GetRecords(objmysqlcommand);
        if (objdatatable.Rows.Count > 0)
        {
            txtlocationname.Text= objdatatable.Rows[0]["locationname"].ToString();


        }
        return true;
    }
}