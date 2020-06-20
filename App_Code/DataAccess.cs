using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;

/// <summary>
/// Summary description for DataAccess
/// </summary>
public class DataAccess
{
    public static MySqlConnection mysqlCon = new MySqlConnection();

    public void SetConnection(string connection)
    {
        mysqlCon.ConnectionString = connection;
    }
    public bool ExecuteQuery(MySqlCommand mySqlCommand)
    {
        try
        {
            mySqlCommand.Connection = mysqlCon;
            mysqlCon.Open();
            mySqlCommand.ExecuteNonQuery();
            return true;
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            mysqlCon.Close();
        }
    }
    //
    // TODO: Add constructor logic here
    //

    public DataTable GetRecords(MySqlCommand mySqlCommand)
    {
        try
        {
            mySqlCommand.Connection = mysqlCon;
            mysqlCon.Open();
            using (MySqlDataAdapter SqlDataAdapter = new MySqlDataAdapter(mySqlCommand))
            {
                DataTable dataTable = new DataTable();
                SqlDataAdapter.Fill(dataTable);
                return dataTable;
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            mysqlCon.Close();
        }
    }
}