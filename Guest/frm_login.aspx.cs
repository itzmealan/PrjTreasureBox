using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Guest_frm_login : System.Web.UI.Page
{
    DataAccess objdataaccess = new DataAccess();
    DataTable objdatatable = new DataTable();
    MySqlCommand objmysqlcommand = new MySqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        logins();
    }
    public void logins()
    {
        objmysqlcommand.CommandText = "select * from  tbl_admin where username='" + txtusername.Text + "' and password='" + txtpassword.Text + "'";
        objdatatable = objdataaccess.GetRecords(objmysqlcommand);
        if (objdatatable.Rows.Count > 0)
        {
            int loginid = Convert.ToInt32(objdatatable.Rows[0]["admin_id"].ToString());
            Response.Redirect("../Admin/AdminHome.aspx");

        }
        objmysqlcommand.CommandText = "select * from  tbl_customer where cus_email='" + txtusername.Text + "' and cus_password='" + txtpassword.Text + "'";
        objdatatable = objdataaccess.GetRecords(objmysqlcommand);
        if (objdatatable.Rows.Count > 0)
        {
            int loginid = Convert.ToInt32(objdatatable.Rows[0]["cus_id"].ToString());
            Session["cus_id"] = loginid;
            Response.Redirect("../Customer_new/CustomerHome.aspx");

        }
        //objmysqlcommand.CommandText = "select * from  tbl_agent where username='" + Txtusername.Text + "' and password='" + Txtpassword.Text + "'";
        //objdatatable = objdataaccess.GetRecords(objmysqlcommand);
        //if (objdatatable.Rows.Count > 0)
        //{
        //    int loginid = Convert.ToInt32(objdatatable.Rows[0]["agent_id"].ToString());
        //    Session["agent_id"] = loginid;
        //    Session["booth_id"] = objdatatable.Rows[0]["booth_id"].ToString();
        //    Response.Redirect("../Polling_officer/pollingOfficerHomee.aspx");

        //}
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "key", "alert('Invalid username or password');window.location='guestHome.aspx'", true);

        }

    }
}