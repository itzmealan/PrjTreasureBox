using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Net;
using System.Net.Mail;

public partial class Admin_employeeregistration : System.Web.UI.Page
{
    DataAccess objdataaccess = new DataAccess();
    DataTable objdatatable = new DataTable();
    MySqlCommand objmysqlcommand = new MySqlCommand();
    int Employeeid;


    protected void Page_Load(object sender, EventArgs e)
    {
        //DateTime dateofbirth = Convert.ToDateTime(System.DateTime.Now);
        //DateTime dateofjoin = Convert.ToDateTime(System.DateTime.Now);

        //Employeeid = Convert.ToInt32(Request.QueryString["_id"]);

        //if (!IsPostBack)
        //{
        //    txtdob.Text = dateofbirth.Date.ToString("yyyy-MM-dd");
        //    txtdoj.Text = dateofjoin.Date.ToString("yyyy-MM-dd");
        //    Filldata();
        //}
    }

    private Boolean Filldata()
    {
        objmysqlcommand.CommandText = "SELECT * FROM tblemployee where employeeid='" + Employeeid + "' ";
        objdatatable = objdataaccess.GetRecords(objmysqlcommand);
        if (objdatatable.Rows.Count > 0)
        {
            txtemployeename.Text = objdatatable.Rows[0]["employeename"].ToString();
            txtHousename.Text = objdatatable.Rows[0]["employeehousename"].ToString();
            rdbgender.SelectedValue = objdatatable.Rows[0]["employeeGender"].ToString();
            txtadress.Text = objdatatable.Rows[0]["emplyeeaddress"].ToString();
            txtmobno.Text = objdatatable.Rows[0]["employeeconatctnumber"].ToString();
            txtpersonalemail.Text = objdatatable.Rows[0]["employeepersonalemail"].ToString();
            txtofficeemail.Text = objdatatable.Rows[0]["employeecompanyemail"].ToString();
            txtpasswd.Text = objdatatable.Rows[0]["employeepassword"].ToString();
            txthourrate.Text = objdatatable.Rows[0]["employeehourlyrate"].ToString();
            DateTime doj = Convert.ToDateTime(objdatatable.Rows[0]["employeedoj"].ToString());
            txtdoj.Text = doj.Date.ToString("yyyy-MM-dd");
            DateTime dob = Convert.ToDateTime(objdatatable.Rows[0]["employeedob"].ToString());
            txtdob.Text = doj.Date.ToString("yyyy-MM-dd");
            txtqualification.Text = objdatatable.Rows[0]["empqualification"].ToString();

        }
        return true;
    }

    public bool insertdata()
    {
        DateTime dofbirth = Convert.ToDateTime(txtdob.Text);
        DateTime currentdate = System.DateTime.Now;
        DateTime registerdate = Convert.ToDateTime(txtdoj.Text);
        if (dofbirth > registerdate)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "key", "alert('Check the date');", true);
            return false;
        }
            else if(dofbirth >currentdate) 
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "key", "alert('Check the date of birth');", true);
            return false;
        }
        else
        {

            objmysqlcommand.CommandText = "insert into tblemployee( employeename, employeehousename, employeeGender, emplyeeaddress, employeeconatctnumber, " +
                                            "employeepersonalemail, employeecompanyemail, employeepassword, employeehourlyrate, employeestatus, employeedoj, " +
                                            "employeedob, empqualification,RoleStatus, Rolesetdate) values('" + txtemployeename.Text + "','" + txtHousename.Text + "', " +
                                            "'" + rdbgender.SelectedValue + "','" + txtadress.Text + "','" + txtmobno.Text + "','" + txtpersonalemail.Text + "', " +
                                             "'" + txtofficeemail.Text + "','" + txtpasswd.Text + "','" + txthourrate.Text + "','0','" + txtdoj.Text + "','" + txtdob.Text + "', " +
                                             "'" + txtqualification.Text + "','0','0')";
            if (objdataaccess.ExecuteQuery(objmysqlcommand))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "key", "alert('Employee details successfully Saved');", true);
                Response.Redirect("employeeetails.aspx");
            }
        }
        return true;

    }

    private Boolean FnUpdateData()
    {
        objmysqlcommand.CommandText = "UPDATE tblemployee SET employeename ='" + txtemployeename.Text + "', employeehousename='" + txtHousename.Text + "', " +
                                        "employeeGender='" + rdbgender.SelectedValue + "', emplyeeaddress='" + txtadress.Text + "', " +
                                         "employeeconatctnumber='" + txtmobno.Text + "',employeepersonalemail='" + txtpersonalemail.Text + "', " +
                                        "employeecompanyemail='" + txtofficeemail.Text + "',employeepassword='" + txtpasswd.Text + "', " +
                                         "employeehourlyrate='" + txthourrate.Text + "',employeedoj='" + txtdoj.Text + "', " +
                                        "employeedob='" + txtdob.Text + "', empqualification='" + txtqualification.Text + "' where employeeid='" + Employeeid + "'";

        if (objdataaccess.ExecuteQuery(objmysqlcommand))
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "key", "alert('Employee details successfully Updated');", true);
            Response.Redirect("employeeetails.aspx");
        }
        return true;
    }

    private Boolean cleardata()
    {
        txtqualification.Text = "";
        txtadress.Text = "";
        txtemployeename.Text = "";
        txthourrate.Text = "";
        txtHousename.Text = "";
        txtmobno.Text = "";
        txtpasswd.Text = "";
        txtofficeemail.Text = "";
        txtpersonalemail.Text = "";
        DateTime dateofbirth = Convert.ToDateTime(System.DateTime.Now);
        txtdob.Text = dateofbirth.Date.ToString("yyyy-MM-dd");
        DateTime dateofjoin = Convert.ToDateTime(System.DateTime.Now);
        txtdoj.Text = dateofjoin.Date.ToString("yyyy-MM-dd");
        return true;
    }

    private Boolean checkAlreadyExist()
    {
        objmysqlcommand.CommandText = "select * from tblemployee where employeename='" + txtemployeename.Text + "'and employeecompanyemail='" + txtofficeemail.Text + "'";
        objdatatable = objdataaccess.GetRecords(objmysqlcommand);
        if (objdatatable.Rows.Count > 0)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "key", "alert('Employee is already exist with same name and email');", true);
            return false;
        }
        return true;

    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (Employeeid > 0)
        {
            FnUpdateData();
            cleardata();
        }
        else
        {
            if (checkAlreadyExist())
            {
                insertdata();
                cleardata();
            }
        }
    }

    protected void Btncancel_Click(object sender, EventArgs e)
    {

    }

}