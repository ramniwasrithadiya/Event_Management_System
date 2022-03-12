using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Ragister : System.Web.UI.Page
{
    string connectionString = @"Data Source=DESKTOP-EED1J5D\;Initial Catalog=UserRagisterDB;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            clear();
            if (!string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                int userID = Convert.ToInt32(Request.QueryString["id"]);
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    SqlDataAdapter sqlDa = new SqlDataAdapter("UserViewByID", sqlCon);
                    sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
                    sqlDa.SelectCommand.Parameters.AddWithValue("@userID", userID);
                    DataTable dtb1 = new DataTable();
                    sqlDa.Fill(dtb1);

                    hfUserID.Value = userID.ToString();
                    txtFirstName.Text = dtb1.Rows[0][1].ToString();
                    txtLastName.Text = dtb1.Rows[0][2].ToString();
                    txtcontact.Text = dtb1.Rows[0][3].ToString();
                    ddlGender.Items.FindByValue(dtb1.Rows[0][4].ToString()).Selected = true;
                    txtAddress.Text = dtb1.Rows[0][5].ToString();
                    txtUsername.Text = dtb1.Rows[0][6].ToString();
                    txtPassword.Text = dtb1.Rows[0][7].ToString();
                    txtPassword.Attributes.Add("value", dtb1.Rows[0][7].ToString());
                    txtConfirmPassword.Text = dtb1.Rows[0][7].ToString();
                    txtConfirmPassword.Attributes.Add("value", dtb1.Rows[0][7].ToString());
                }
            }
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtUsername.Text == "" || txtPassword.Text == "")
        {
            lblErrorMessage.Text = "Please Fill Mandatory Field";
        }
        else
        {

            using (SqlConnection sqlcon = new SqlConnection(connectionString))
            {
                sqlcon.Open();
                SqlCommand sqlCmd = new SqlCommand("UserAddOrEdit", sqlcon);
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@UserID", Convert.ToInt32(hfUserID.Value == "" ? "0" : hfUserID.Value));
                sqlCmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@LastName", txtLastName.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Contact", txtcontact.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Gender", ddlGender.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Address", txtAddress.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
                sqlCmd.ExecuteNonQuery();
                clear();
                lblSuccessMessage.Text = "Submitted Successfully..!!";
            }
        }
    }

    void clear()
    {
        txtFirstName.Text = txtLastName.Text = txtcontact.Text = txtAddress.Text = txtUsername.Text = txtPassword.Text = txtConfirmPassword.Text = "";
        hfUserID.Value = "";
        lblSuccessMessage.Text = lblErrorMessage.Text = "";

    }
}