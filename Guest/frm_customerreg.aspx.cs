using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Guest_frm_customerreg : System.Web.UI.Page
{
    DataAccess objdataaccess = new DataAccess();
    DataTable objdatatable = new DataTable();
    MySqlCommand objmysqlcommand = new MySqlCommand();
    protected void Page_Load(object sender, EventArgs e)
        
    {
         if (!IsPostBack)
        {
            //FillList();
            FillDistrictDetails();
             
        }
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        insertData();
    }
    public Boolean insertData()
    {
        objmysqlcommand.CommandText = "insert into tbl_customer (cus_name,district_id,location_id,cus_palce,cus_pin,cus_phone,cus_gender,cus_email,cus_password) values('" + txtcusname.Text + "','" + ddldistrict.SelectedValue + "','" + ddllocation.SelectedValue+ "','" + txtplace.Text + "','" + txtpin.Text + "','" + txtphone.Text + "','" + rdbgender.SelectedValue + "','" + txtemail.Text + "','" + txtpasswd.Text + "')";
        objdataaccess.ExecuteQuery(objmysqlcommand);
        Response.Write("<script>alert('Customer Details SuccessfullyInserted');window.location='GuestHome.aspx'</script>");
        return true;
    }
    private Boolean FillDistrictDetails()
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
    private Boolean FillLocationDeatils()
     {
         objmysqlcommand.CommandText = "SELECT * FROM tbl_location where district_id='"+ddldistrict.SelectedValue+"'";
         objdatatable = objdataaccess.GetRecords(objmysqlcommand);
         ddllocation.Items.Clear();
         if (objdatatable.Rows.Count > 0)
         {
             ddllocation.Items.Insert(0, "--Select--");
             foreach (DataRow dr in objdatatable.Rows)
             {
                 ddllocation.Items.Add(new ListItem(dr["locationname"].ToString(), dr["location_id"].ToString()));
             }

         }
         return true;
     }
protected void ddllocation_SelectedIndexChanged(object sender, EventArgs e)
{

}

    //private Boolean FillList()
    //{
    //    objmysqlcommand.CommandText = "SELECT * FROM tbl_ where district_id = '" +ddldistrict.SelectedValue+ "' ";
    //    objdatatable = objdataaccess.GetRecords(objmysqlcommand);
    //    ListView1.DataSource = objdatatable;
    //    ListView1.DataBind();
    //    return true;
    //}
    protected void ddldistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillLocationDeatils();
        //FillList();
    }
}