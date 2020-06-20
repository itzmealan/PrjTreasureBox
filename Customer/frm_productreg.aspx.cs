using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Guest_frm_productreg : System.Web.UI.Page
{
    DataAccess objdataaccess = new DataAccess();
    DataTable objdatatable = new DataTable();
    MySqlCommand objmysqlcommand = new MySqlCommand();
    int prodcut_id;
    string cusid;
    protected void Page_Load(object sender, EventArgs e)
    {
        cusid = Session["cus_id"].ToString();

        if (!IsPostBack)
        {
            //FillList();
            FillCategoryDetails();
           
        }
    }
    public Boolean insertData()
    {
        //string cust_id = Session["customerregistration_id"].ToString();

        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentLength < 500000000)
            {
                String fileExtension = Path.GetExtension(FileUpload1.FileName).ToLower();
                String[] allowedExtensions = { ".gif", ".png", ".jpeg", ".jpg" };
                for (int i = 0; i < allowedExtensions.Length; i++)
                {
                    if (fileExtension == allowedExtensions[i])
                    {
                        string file = Path.GetFileName(FileUpload1.FileName);
                        FileUpload1.SaveAs(Server.MapPath("~/Customer/image/") + file);

                    }
                }
            }
        }

        objmysqlcommand.CommandText = "insert into tbl_product (pr_name,cat_id,subcat_id,pr_price,pr_qnty,pr_image,pr_meaterial,cus_id) values('" + txtprname.Text + "','" + ddlcat.SelectedValue + "','" + ddlsubcat.SelectedValue + "','" + txtprice.Text + "','" + txtqnty.Text + "','" + FileUpload1.FileName + "','" + txtmaterial.Text + "','" + cusid + "')";
        objdataaccess.ExecuteQuery(objmysqlcommand);
        Response.Write("<script>alert('Customer Details SuccessfullyInserted');window.location='frm_productview.aspx'</script>");
        return true;
    }
    private Boolean FillCategoryDetails()
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
    private Boolean FillSubcategoryDetails()
    {
        objmysqlcommand.CommandText = "SELECT * FROM tbl_subcat where cat_id='"+ddlcat.SelectedValue+"'";
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
        FillSubcategoryDetails();
    }
    protected void ddlsubcat_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        insertData();
    }
    //private Boolean FnUpdateData()
    //{
    //    int product_id = Convert.ToInt32(Session["product_id"].ToString());
    //    objmysqlcommand.CommandText = "UPDATE tbl_product SET pr_name ='" + txtprname.Text + "',cat_id='" + ddlcat.SelectedValue + "',subcat_id ='" + ddlsubcat.SelectedValue + "', pr_price='" + txtprice.Text + "', pr_qnty ='" + txtqnty.Text + "', pr_image ='" + FileUpload1.FileName + "' ,pr_meaterial ='" +txtmaterial+ "' where product_id='" + product_id + "'";

    //    if (objdataaccess.ExecuteQuery(objmysqlcommand))
    //    {
    //        ScriptManager.RegisterStartupScript(this, this.GetType(), "key", "alert('Successfully Updated');", true);
    //        Response.Redirect("frm_productview.aspx");
    //    }
    //    return true;
    //}
    private Boolean cleardata()
    {
        txtprname.Text= "";
        txtprice.Text= "";
        txtqnty.Text = "";
        //FileUpload1.FileName = "";
        txtmaterial.Text = "";
        btnsave.Text = "UPDATE";
        return true;
    }
    //private Boolean Filldata()
    //{
    //    objmysqlcommand.CommandText = "SELECT * FROM tbl_product where product_id='" +product_id + "' ";
    //    objdatatable = objdataaccess.GetRecords(objmysqlcommand);
    //    if (objdatatable.Rows.Count > 0)
    //    {
    //        txtprname.Text= objdatatable.Rows[0]["pr_name"].ToString();
    //        txtprice.Text = objdatatable.Rows[0]["pr_price"].ToString();
    //        txtqnty.Text= objdatatable.Rows[0]["pr_qnty"].ToString();
    //        FileUpload1.FileName = objdatatable.Rows[0]["pr_image"].ToString();
    //        txtmaterial.Text = objdatatable.Rows[0]["pr_meaterial"].ToString();

    //  }
    //    return true;
    //}
    
}