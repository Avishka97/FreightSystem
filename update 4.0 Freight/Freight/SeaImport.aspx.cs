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
using Microsoft.Reporting.WebForms;

namespace Freight
{
    public partial class SeaImport : System.Web.UI.Page
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["Test"].ConnectionString;
        SqlConnection con;
        string customer;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CustomerSearchBar();
                SalesPersonSearchBar();
                CustomerServiceSearchBar();
                SearchBar();
            }

        }

        void SearchBar()
        {
            con = new SqlConnection(ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT JobNo FROM Job", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();      
            cmbSearch.DataSource = dt;
            cmbSearch.DataBind();
            cmbSearch.DataTextField = "JobNo";
            cmbSearch.DataValueField = "JobNo";
            cmbSearch.DataBind();

        }

        void CustomerSearchBar()
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
            cmbCustomerID.DataSource = dt;
            cmbCustomerID.DataBind();
            cmbCustomerID.DataTextField = "FirstName";
            cmbCustomerID.DataValueField = "CustomerID";
            cmbCustomerID.DataBind();

        }

        void SalesPersonSearchBar()
        {
            con = new SqlConnection(ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT Name FROM Admin where Role= 'Manager' ", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();          
            cmbSalesPerson.DataSource = dt;
            cmbSalesPerson.DataBind();
            cmbSalesPerson.DataTextField = "Name";
            cmbSalesPerson.DataValueField = "Name";
            cmbSalesPerson.DataBind();

        }

        void CustomerServiceSearchBar()
        {
            con = new SqlConnection(ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT Name FROM Admin where Role= 'Sales Person' ", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();           
            cmbCustomerService.DataSource = dt;
            cmbCustomerService.DataBind();
            cmbCustomerService.DataTextField = "Name";
            cmbCustomerService.DataValueField = "Name";
            cmbCustomerService.DataBind();

        }

        protected void cmbCustomerID_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                customer = cmbCustomerID.SelectedItem.Value;
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
            }
            catch (Exception ex)
            {

                lblMessage.Visible = true;
                lblMessage.Text = ex.ToString(); 
            }
        }

        protected void cmbCustomerID_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            try
            {

                int JID;
                if (txtJobNo.Text == "")
                {
                    JID = 0;
                }
                else
                {
                    JID = Convert.ToInt32(txtJobNo.Text);
                }

                int customerID = Convert.ToInt32(cmbCustomerID.SelectedItem.Value);
                string JobType = cmbJobType.SelectedItem.Value;
                string PortOfLoading = txtPortLoading.Text;
                string PortOfDischarge = txtPortDischarge.Text;
                string Vessel = txtVesel.Text;
                string ETD = txtEtd.Text;
                string ShippingLine = txtShippingLine.Text;
                string Terminal = txtTerminal.Text;
                string LCL_FCL = "";
                string BLStatus = "";
                string ReleaseOrderNo = txtReleaseOrderNo.Text;
                string FCLCutOff = txtFCLCutOff.Text;
                string SalesPerson = cmbSalesPerson.SelectedItem.Value;
                string CustomerServicePerson = cmbCustomerService.SelectedItem.Value;
                string FinalDestination = txtFinalDestination.Text;
                string ETAFD = txtETAFD.Text;


                if (chkLCL.Checked == true)
                {
                    LCL_FCL = "LCL";
                }
                else if (chkFCL.Checked == true)
                {
                    LCL_FCL = "FCL";
                }

                if (chkOriginal.Checked == true)
                {
                    BLStatus = "Original";
                }
                else if (chkSurrendar.Checked == true)
                {
                    BLStatus = "Surrendar";
                }





                using (SqlConnection con = new SqlConnection(ConnectionString))
                {
                    con.Open();
                    SqlCommand sqlCmd = new SqlCommand("JobInsertEdit", con);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@JobNo", JID);
                    sqlCmd.Parameters.AddWithValue("@JobType", JobType);
                    sqlCmd.Parameters.AddWithValue("@CustomerID", customerID);
                    sqlCmd.Parameters.AddWithValue("@PortOfLoading", PortOfLoading);
                    sqlCmd.Parameters.AddWithValue("@PortOfDischarge", PortOfDischarge);
                    sqlCmd.Parameters.AddWithValue("@Vesel", Vessel);
                    sqlCmd.Parameters.AddWithValue("@ETD", ETD);
                    sqlCmd.Parameters.AddWithValue("@ShippingLine", ShippingLine);
                    sqlCmd.Parameters.AddWithValue("@Terminal", Terminal);
                    sqlCmd.Parameters.AddWithValue("@LCL_FCL", LCL_FCL);
                    sqlCmd.Parameters.AddWithValue("@BLStatus", BLStatus);
                    sqlCmd.Parameters.AddWithValue("@ReleaseOrderNo", ReleaseOrderNo);
                    sqlCmd.Parameters.AddWithValue("@SalesPerson", SalesPerson);
                    sqlCmd.Parameters.AddWithValue("@CustomerServicePerson", CustomerServicePerson);
                    sqlCmd.Parameters.AddWithValue("@FinalDestination", FinalDestination);
                    sqlCmd.Parameters.AddWithValue("@ETAFD", ETAFD);
                    sqlCmd.Parameters.AddWithValue("@FCLCutOff", FCLCutOff);
                    sqlCmd.ExecuteNonQuery();
                    lblMessage.Visible = true;
                    lblMessage.Text = "Succefully Add The Job";
                    con.Close();

                }


                txtJobNo.Text = "";
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


                txtPortLoading.Text = "";
                txtPortLoading.Text = "";
                txtVesel.Text = "";
                txtEtd.Text = "";
                txtShippingLine.Text = "";
                txtTerminal.Text = "";
                chkLCL.Checked = false;
                chkFCL.Checked = false;
                chkOriginal.Checked = false;
                chkSurrendar.Checked = false;
                txtReleaseOrderNo.Text = "";
                txtFCLCutOff.Text = "";
                txtFinalDestination.Text = "";
                txtETAFD.Text = "";

                CustomerSearchBar();
                SalesPersonSearchBar();
                CustomerServiceSearchBar();
                SearchBar();


            }
            catch (Exception ex)
            {

                lblMessage.Visible = true;
                lblMessage.Text = ex.ToString();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {




            customer = cmbSearch.SelectedItem.Value;
            SqlConnection con = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from JobView where JobNo =" + customer + "", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            //Connection open here   
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            int JobNo = dt.Rows[0].Field<Int32>("JobNo");
            string JobType = dt.Rows[0].Field<string>("JobType");
            int CustomerID = dt.Rows[0].Field<Int32>("CustomerID");
            string PortOfLoading = dt.Rows[0].Field<string>("PortOfLoading");
            string PortOfDischarge = dt.Rows[0].Field<string>("PortOfDischarge");
            string Vesel = dt.Rows[0].Field<string>("Vesel");
            string ETD = dt.Rows[0].Field<string>("ETD");
            string ShippingLine = dt.Rows[0].Field<string>("ShippingLine");
            string Terminal = dt.Rows[0].Field<string>("Terminal");
            string LCL_FCL = dt.Rows[0].Field<string>("LCL_FCL");
            string BLStatus = dt.Rows[0].Field<string>("BLStatus");
            string ReleaseOrderNo = dt.Rows[0].Field<string>("ReleaseOrderNo");
            string SalesPerson = dt.Rows[0].Field<string>("SalesPerson");
            string CustomerServicePerson = dt.Rows[0].Field<string>("CustomerServicePerson");
            string FinalDestination = dt.Rows[0].Field<string>("FinalDestination");
            string ETAFD = dt.Rows[0].Field<string>("ETAFD");
            string FCLCutOff = dt.Rows[0].Field<string>("FCLCutOff");


            txtJobNo.Text = JobNo.ToString();
            cmbJobType.Text = JobType;
            txtPortLoading.Text = PortOfLoading;
            txtPortDischarge.Text = PortOfDischarge;
            txtVesel.Text = Vesel;
            txtEtd.Text = ETD;
            txtShippingLine.Text = ShippingLine;
            txtTerminal.Text = Terminal;

            if (LCL_FCL == "LCL")
            {
                chkLCL.Checked = true;
                chkFCL.Checked = false;
            }
            else if (LCL_FCL == "FCL")
            {
                chkLCL.Checked = false;
                chkFCL.Checked = true;
            }

            if(BLStatus == "Original")
            {

                chkOriginal.Checked = true;
                chkSurrendar.Checked = false;
            }
            else if (BLStatus == "Surrendar")
            {

                chkOriginal.Checked = false;
                chkSurrendar.Checked = true;
            }


            txtReleaseOrderNo.Text = ReleaseOrderNo;
            txtFCLCutOff.Text = FCLCutOff;
            txtFinalDestination.Text = FinalDestination;
            txtETAFD.Text = ETAFD;
            cmbCustomerService.Text = CustomerServicePerson;
            cmbSalesPerson.Text = SalesPerson;
            
            
            
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


            cmbCustomerID.Text = CustomerID.ToString();
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
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtJobNo.Text = "";
            cmbJobType.Text = "";
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


            txtPortLoading.Text = "";
            txtPortLoading.Text = "";
            txtVesel.Text = "";
            txtEtd.Text = "";
            txtShippingLine.Text = "";
            txtTerminal.Text = "";
            chkLCL.Checked = false;
            chkFCL.Checked = false;
            chkOriginal.Checked = false;
            chkSurrendar.Checked = false;
            txtReleaseOrderNo.Text = "";
            txtFCLCutOff.Text = "";
            txtFinalDestination.Text = "";
            txtETAFD.Text = "";

            CustomerSearchBar();
            SalesPersonSearchBar();
            CustomerServiceSearchBar();
            SearchBar();
        }

     

        protected void btnPreview_Click1(object sender, EventArgs e)
        {


            con = new SqlConnection(ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("Select * from job where JobNo ='"+Convert.ToInt32(txtJobNo.Text)+"' ",con);

            DataTable dt = new DataTable("table2");
            da.Fill(dt);

            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("ReportCover.rdlc");
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1",dt));
            ReportViewer1.LocalReport.Refresh();
                        
        }
    }
}