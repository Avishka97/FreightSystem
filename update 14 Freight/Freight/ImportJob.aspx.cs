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
    public partial class ImportJob : System.Web.UI.Page
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["Test"].ConnectionString;
        SqlConnection con;
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

        protected void btnClear_Click(object sender, EventArgs e)
        {
            try
            {
                txtJobNo.Text = "";
                cmbManifestType.Text = "";
                cmbImportexport.Text = "";
                cmbModeOfTransport.Text = "";
                txtMasterBL.Text = "";
                cmbCurrency.Text = "";
                txtExRate.Text = "";
                txtVesel.Text = "";
                txtVoyage.Text = "";
                txtETA.Text = "";
                txtSubMainfestNo.Text = "";
                txtpolPort.Text = "";
                txtpodPort.Text = "";
                txtSOB.Text = "";
                txtNoOfHOBLs.Text = "";
                txtTotalNoOfPackages.Text = "";
                txtTotalNoOfContainers.Text = "";
                txtTotalGrossWeight.Text = "";

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
                int JID;
                if (txtJobNo.Text == "")
                {
                    JID = 0;
                }
                else
                {
                    JID = Convert.ToInt32(txtJobNo.Text);
                }

                string MainfestType = cmbManifestType.SelectedItem.Value;
                string JobType = cmbImportexport.SelectedItem.Value;
                string ModeOfTransport = cmbModeOfTransport.SelectedItem.Value;
                string MasterBL = txtMasterBL.Text;
                string Currency = cmbCurrency.SelectedItem.Value;
                float EXRate = float.Parse(txtExRate.Text);
                string Vesel = txtVesel.Text;
                string Voyage = txtVoyage.Text;
                string ETA = txtETA.Text;
                string SOB = txtSOB.Text;
                string SubManifestNo = txtSubMainfestNo.Text;
                string POD = txtpodPort.Text;
                string POL = txtpolPort.Text;
                int NoOfhbl = Convert.ToInt32(txtNoOfHOBLs.Text);
                int NoOfPackages = Convert.ToInt32(txtTotalNoOfPackages.Text);
                int NoOfContainers = Convert.ToInt32(txtTotalNoOfContainers.Text);
                float GrossWeight = float.Parse(txtTotalGrossWeight.Text);



                using (SqlConnection con = new SqlConnection(ConnectionString))
                {
                    con.Open();
                    SqlCommand sqlCmd = new SqlCommand("ImportJobInsertEdit", con);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@JobID", JID);
                    sqlCmd.Parameters.AddWithValue("@ManifestType", MainfestType);
                    sqlCmd.Parameters.AddWithValue("@JobType", JobType);
                    sqlCmd.Parameters.AddWithValue("@ModeOfTransport", ModeOfTransport);
                    sqlCmd.Parameters.AddWithValue("@MasterBL", MasterBL);
                    sqlCmd.Parameters.AddWithValue("@Currency", Currency);
                    sqlCmd.Parameters.AddWithValue("@ExRate", EXRate);
                    sqlCmd.Parameters.AddWithValue("@Voyage", Voyage);
                    sqlCmd.Parameters.AddWithValue("@Vessel", Vesel);
                    sqlCmd.Parameters.AddWithValue("@ETA", ETA);
                    sqlCmd.Parameters.AddWithValue("@SubManifest", SubManifestNo);
                    sqlCmd.Parameters.AddWithValue("@POL", POL);
                    sqlCmd.Parameters.AddWithValue("@POD", POD);
                    sqlCmd.Parameters.AddWithValue("@SOB", SOB);
                    sqlCmd.Parameters.AddWithValue("@NoOfHBL", NoOfhbl);
                    sqlCmd.Parameters.AddWithValue("@NoOfPackages", NoOfPackages);
                    sqlCmd.Parameters.AddWithValue("@NoOfContainers", NoOfContainers);
                    sqlCmd.Parameters.AddWithValue("@TotalGrossWeight", GrossWeight);
                    sqlCmd.ExecuteNonQuery();
                    lblMessage.Visible = true;
                    lblMessage.Text = "Succefully Add The Job";
                    con.Close();

                    txtJobNo.Text = "";
                    cmbManifestType.Text = "";
                    cmbImportexport.Text = "";
                    cmbModeOfTransport.Text = "";
                    txtMasterBL.Text = "";
                    cmbCurrency.Text = "";
                    txtExRate.Text = "";
                    txtVesel.Text = "";
                    txtVoyage.Text = "";
                    txtETA.Text = "";
                    txtSubMainfestNo.Text = "";
                    txtpolPort.Text = "";
                    txtpodPort.Text = "";
                    txtSOB.Text = "";
                    txtNoOfHOBLs.Text = "";
                    txtTotalNoOfPackages.Text = "";
                    txtTotalNoOfContainers.Text = "";
                    txtTotalGrossWeight.Text = "";
                    SearchBar();

                }

            }
            catch (Exception ex)
            {
                lblMessage.Visible = true;
                lblMessage.Text = ex.ToString();
            }

        }

        protected void btnBL_Click(object sender, EventArgs e)
        {
            try
            {
                Session["JobID"] = txtJobNo.Text;
                HttpContext.Current.Response.Redirect("Import.aspx", true);
            }
            catch (Exception ex)
            {
                lblMessage.Visible = true;
                lblMessage.Text = ex.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                string BL = cmbSearch.SelectedItem.Value;
                SqlConnection con = new SqlConnection(ConnectionString);
                SqlCommand cmd = new SqlCommand("select * from MasterBLImport where JobID =" + BL + "", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                //Connection open here   
                con.Open();
                int i = cmd.ExecuteNonQuery();
                con.Close();

                int JID = dt.Rows[0].Field<Int32>("JobID");
                string MainfestType = dt.Rows[0].Field<string>("ManifestType");
                string JobType = dt.Rows[0].Field<string>("JobType");
                string ModeOfTransport = dt.Rows[0].Field<string>("ModeOfTransport");
                string MasterBL = dt.Rows[0].Field<string>("MasterBL");
                string Currency = dt.Rows[0].Field<string>("Currency");
                double EXRate = dt.Rows[0].Field<double>("ExRate");
                string Vesel = dt.Rows[0].Field<string>("Vessel");
                string Voyage = dt.Rows[0].Field<string>("Voyage");
                string ETA = dt.Rows[0].Field<DateTime>("ETA").ToString();
                string SOB = dt.Rows[0].Field<DateTime>("SOB").ToString();
                string SubManifestNo = dt.Rows[0].Field<string>("SubManifest");
                string POD = dt.Rows[0].Field<string>("POL");
                string POL = dt.Rows[0].Field<string>("POD");
                int NoOfhbl = dt.Rows[0].Field<Int32>("NoOfHBL");
                int NoOfPackages = dt.Rows[0].Field<Int32>("NoOfPackages");
                int NoOfContainers = dt.Rows[0].Field<Int32>("NoOfContainers");
                double GrossWeight = dt.Rows[0].Field<double>("TotalGrossWeight");

                Session["JobID"] = JID.ToString();
                txtJobNo.Text = JID.ToString();
                cmbManifestType.Text = MainfestType;
                cmbImportexport.Text = JobType;
                cmbModeOfTransport.Text = ModeOfTransport;
                txtMasterBL.Text = MasterBL;
                cmbCurrency.Text = Currency;
                txtExRate.Text = EXRate.ToString();
                txtVesel.Text = Vesel;
                txtVoyage.Text = Voyage;
                txtETA.Text = ETA;
                txtSubMainfestNo.Text = SOB;
                txtpolPort.Text = SubManifestNo;
                txtpodPort.Text = POD;
                txtSOB.Text = POL;
                txtNoOfHOBLs.Text = NoOfhbl.ToString();
                txtTotalNoOfPackages.Text = NoOfPackages.ToString();
                txtTotalNoOfContainers.Text = NoOfContainers.ToString();
                txtTotalGrossWeight.Text = GrossWeight.ToString();


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
                SqlCommand cmd = new SqlCommand("SELECT JobID,MasterBL FROM MasterBLImport where JobType= 'Import' ", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                con.Close();
                cmbSearch.DataSource = dt;
                cmbSearch.DataBind();
                cmbSearch.DataTextField = "MasterBL";
                cmbSearch.DataValueField = "JobID";
                cmbSearch.DataBind();
            }
            catch (Exception ex)
            {
                lblMessage.Visible = true;
                lblMessage.Text = ex.ToString();
            }

        }
    }
}