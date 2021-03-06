﻿using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ReportAllPurchases : System.Web.UI.Page
{
    DataAccess objdataaccess = new DataAccess();
    DataTable objdatatable = new DataTable();
    MySqlCommand objmysqlcommand = new MySqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        display();
    }
    protected void btnexport_Click(object sender, EventArgs e)
    {

        objmysqlcommand.CommandText = "SELECT c.cus_name,pt.pr_name,p.amount,p.date,p.time FROM `db_antiquesstore`.`tbl_booking`b inner join tbl_payment p on p.booking_id=b.booking_id inner join tbl_product pt on pt.product_id=b.product_id inner join tbl_customer c on c.cus_id=p.cus_id";
        objdatatable = objdataaccess.GetRecords(objmysqlcommand);
        CreateExcelFile(objdatatable);
    }
    public void display()
    {

        objmysqlcommand.CommandText = "select * from tbl_booking b inner join tbl_payment p on p.booking_id=b.booking_id inner join tbl_product pt on pt.product_id=b.product_id inner join tbl_customer c on c.cus_id=p.cus_id";
        objdatatable = objdataaccess.GetRecords(objmysqlcommand);
        if (objdatatable.Rows.Count > 0)
        {
            ListView1.DataSource = objdatatable;
            ListView1.DataBind();
        }
        else
        {
            ListView1.DataSource = null;
            ListView1.DataBind();
        }

    }
    public void CreateExcelFile(DataTable Excel)
    {
        //Clears all content output from the buffer stream.  
        Response.ClearContent();
        //Adds HTTP header to the output stream  
        Response.AddHeader("content-disposition", string.Format("attachment; filename=AdminsidePurchases.xls"));

        // Gets or sets the HTTP MIME type of the output stream  
        Response.ContentType = "application/vnd.ms-excel";
        string space = "";

        foreach (DataColumn dcolumn in Excel.Columns)
        {

            Response.Write(space + dcolumn.ColumnName);
            space = "\t";
        }
        Response.Write("\n");
        int countcolumn;
        foreach (DataRow dr in Excel.Rows)
        {
            space = "";
            for (countcolumn = 0; countcolumn < Excel.Columns.Count; countcolumn++)
            {

                Response.Write(space + dr[countcolumn].ToString());
                space = "\t";

            }

            Response.Write("\n");


        }
        Response.End();
    }
}