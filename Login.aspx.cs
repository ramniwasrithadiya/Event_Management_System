﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblErrorMessage.Visible = false;
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-EED1J5D;Initial Catalog=LoginDB;Integrated Security=True"))
        {
            sqlCon.Open();
            string query = "SELECT COUNT(1) FROM tblUser WHERE username=@username AND password=@password";
            SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
            sqlCmd.Parameters.AddWithValue("@username", txtUserName.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
            int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
            if (count == 1)
            {
                Session["username"] = txtUserName.Text.Trim();
                Response.Redirect("http://localhost:51979/EMS~Soln/SubContent.aspx");
            }
            else { lblErrorMessage.Visible = true; }
        }
    }
}