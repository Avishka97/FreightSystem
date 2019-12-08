using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

namespace Freight
{
    public partial class Customer : System.Web.UI.Page
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["Test"].ConnectionString;
        SqlConnection con;
        string customer;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                if (!IsPostBack)
                {
                    SearchBar();
                }
            }
            catch (Exception ex)
            {
                lblMessage.Visible = true;
                lblMessage.Text = ex.ToString();
            }
           
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                int CID;
                if (txtCustomerId.Text == "")
                {
                    CID = 0;
                }
                else
                {
                    CID = Convert.ToInt32(txtCustomerId.Text);
                }
                string Company = txtCompany.Text;
                string Email = txtEmail.Text;
                string FName = txtFName.Text;
                string LName = txtLName.Text;
                string CAdd = txtAdd.Text;
                string BAdd = txtBill.Text;
                string tel = txtTel.Text;
                string mobile = txtMobile.Text;
                string fax = txtFax.Text;
                string TaxNo = txtTax.Text;
                string VatNo = txtVat.Text;
                string TinNo = txtTin.Text;

                using (SqlConnection con = new SqlConnection(ConnectionString))
                {
                    con.Open();
                    SqlCommand sqlCmd = new SqlCommand("DriverInsertEdit", con);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@CustomerID", CID);
                    sqlCmd.Parameters.AddWithValue("@Company", Company);
                    sqlCmd.Parameters.AddWithValue("@Email", Email);
                    sqlCmd.Parameters.AddWithValue("@FirstName", FName);
                    sqlCmd.Parameters.AddWithValue("@LastName", LName);
                    sqlCmd.Parameters.AddWithValue("@Address", CAdd);
                    sqlCmd.Parameters.AddWithValue("@BillingAddress", BAdd);
                    sqlCmd.Parameters.AddWithValue("@Telephone", tel);
                    sqlCmd.Parameters.AddWithValue("@Mobile", mobile);
                    sqlCmd.Parameters.AddWithValue("@Fax", fax);
                    sqlCmd.Parameters.AddWithValue("@TaxNo", TaxNo);
                    sqlCmd.Parameters.AddWithValue("@VatNo", VatNo);
                    sqlCmd.Parameters.AddWithValue("@TinNo", TinNo);
                    sqlCmd.ExecuteNonQuery();
                    lblMessage.Visible = true;
                    lblMessage.Text = "Succefully Add The Customer";
                    con.Close();

                }

                SearchBar();
                txtCustomerId.Text = "";
                txtCompany.Text = "";
                txtEmail.Text = "";
                txtFName.Text = "";
                txtLName.Text = "";
                txtAdd.Text = "";
                txtBill.Text = "";
                txtTel.Text = "";
                txtMobile.Text = "";
                txtFax.Text = "";
                txtTax.Text = "";
                txtVat.Text = "";
                txtTin.Text = "";




            }
            catch (Exception ex)
            {
                lblMessage.Visible = true;
                lblMessage.Text = ex.ToString();
            }
		
	    }


        

       

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(ConnectionString))
                {
                    int CID = Convert.ToInt32(txtCustomerId.Text);
                    sqlCon.Open();
                    string query = "Delete from Customer where CustomerID = @CustomerID";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@CustomerID", CID );
                    sqlCmd.ExecuteNonQuery();
                    lblMessage.Visible = true;
                    lblMessage.Text = "Deleted the Customer";

                    SearchBar();
                    txtCustomerId.Text = "";
                    txtCompany.Text = "";
                    txtEmail.Text = "";
                    txtFName.Text = "";
                    txtLName.Text = "";
                    txtAdd.Text = "";
                    txtBill.Text = "";
                    txtTel.Text = "";
                    txtMobile.Text = "";
                    txtFax.Text = "";
                    txtTax.Text = "";
                    txtVat.Text = "";
                    txtTin.Text = "";

                }
            }
            catch (Exception ex)
            {
                lblMessage.Visible = true;
                lblMessage.Text = ex.ToString();
            }
        }

        void SearchBar()
        {
            try
            {
                con = new SqlConnection(ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT CustomerID, FirstName FROM Customer", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                con.Close();
                DataRow row = dt.NewRow();
                row[0] = 0;
                row[1] = "Please select";
                dt.Rows.InsertAt(row, 0);
                cmbSearch.DataSource = dt;
                cmbSearch.DataBind();
                cmbSearch.DataTextField = "FirstName";
                cmbSearch.DataValueField = "CustomerID";
                cmbSearch.DataBind();
            }
            catch (Exception ex)
            {
                lblMessage.Visible = true;
                lblMessage.Text = ex.ToString();
            }

        }

     

        protected void cmbSearch_SelectedIndexChanged(object sender, EventArgs e)
        {
           
           
        }

        protected void cmbSearch_TextChanged(object sender, EventArgs e)
        {
         
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                customer = cmbSearch.SelectedItem.Value;
                SqlConnection con = new SqlConnection(ConnectionString);
                SqlCommand cmd = new SqlCommand("select * from Customer where CustomerID =" + customer + "", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                //Connection open here   
                con.Open();
                int i = cmd.ExecuteNonQuery();
                con.Close();
                int CustomerID = dt.Rows[0].Field<Int32>("CustomerID");
                string Company = dt.Rows[0].Field<string>("Company");
                string Email = dt.Rows[0].Field<string>("Email");
                string FName = dt.Rows[0].Field<string>("FirstName");
                string LName = dt.Rows[0].Field<string>("LastName");
                string CAdd = dt.Rows[0].Field<string>("CAddress");
                string BAdd = dt.Rows[0].Field<string>("BillingAddress");
                string tel = dt.Rows[0].Field<string>("Telephone");
                string mobile = dt.Rows[0].Field<string>("Mobile");
                string fax = dt.Rows[0].Field<string>("Fax");
                string TaxNo = dt.Rows[0].Field<string>("TaxNo");
                string VatNo = dt.Rows[0].Field<string>("VatNo");
                string TinNo = dt.Rows[0].Field<string>("TinNo");


                txtCustomerId.Text = CustomerID.ToString();
                txtCompany.Text = Company;
                txtEmail.Text = Email;
                txtFName.Text = FName;
                txtLName.Text = LName;
                txtAdd.Text = CAdd;
                txtBill.Text = BAdd;
                txtTel.Text = tel;
                txtMobile.Text = mobile;
                txtFax.Text = fax;
                txtTax.Text = TaxNo;
                txtVat.Text = VatNo;
                txtTin.Text = TinNo;
                SearchBar();
                lblMessage.Visible = false;
                lblMessage.Text = "";
            }
            catch (Exception ex)
            {

                lblMessage.Visible = true;
                lblMessage.Text = ex.ToString();
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            try
            {
                SearchBar();
                txtCustomerId.Text = "";
                txtCompany.Text = "";
                txtEmail.Text = "";
                txtFName.Text = "";
                txtLName.Text = "";
                txtAdd.Text = "";
                txtBill.Text = "";
                txtTel.Text = "";
                txtMobile.Text = "";
                txtFax.Text = "";
                txtTax.Text = "";
                txtVat.Text = "";
                txtTin.Text = "";
                lblMessage.Text = "";
                lblMessage.Visible = false;
            }
            catch (Exception ex)
            {
                lblMessage.Visible = true;
                lblMessage.Text = ex.ToString();
            }
        }
    }
}