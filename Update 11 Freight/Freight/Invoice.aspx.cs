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
    public partial class Invoice : System.Web.UI.Page
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["Test"].ConnectionString;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    txtInvoiceID.Text = "0";
                    txtBLNo.Text = Session["BLNo"].ToString();
                    txtJobNo.Text = Session["JobNo"].ToString();
                    GetBLID();
                    PopulateGridview();
                    PopulateGridview1();
                    SearchBar();
                }
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                string BL = cmbSearch.SelectedItem.Value;
                SqlConnection con = new SqlConnection(ConnectionString);
                SqlCommand cmd = new SqlCommand("select * from Invoice where InvoiceID =" + BL + "", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                //Connection open here   
                con.Open();
                int i = cmd.ExecuteNonQuery();
                con.Close();

                int InvoiceID = dt.Rows[0].Field<Int32>("InvoiceID");
                int JobNo = dt.Rows[0].Field<Int32>("JobNo");
                string BLNo = dt.Rows[0].Field<string>("BLNO");
                string Version = dt.Rows[0].Field<string>("Version");
                string Freight = dt.Rows[0].Field<string>("FreightType");
                string Shipper = dt.Rows[0].Field<string>("Shipper");
                string ShipperAdd = dt.Rows[0].Field<string>("ShipperAdd");
                string Consignee = dt.Rows[0].Field<string>("Consignee");
                string ConsigneeAdd = dt.Rows[0].Field<string>("ConsigneeAdd");
                string Description = dt.Rows[0].Field<string>("Description");
                string BillingAdd = dt.Rows[0].Field<string>("BillingAdd");
                string Vesel = dt.Rows[0].Field<string>("Vesel");
                string Voyage = dt.Rows[0].Field<string>("Voyage");
                string ETA = dt.Rows[0].Field<DateTime>("ETA").ToString();
                double GrossWeight = dt.Rows[0].Field<double>("GrossWeight");
                double NetWeight = dt.Rows[0].Field<double>("NetWeight");
                int JNoOfPackagesobNo = dt.Rows[0].Field<Int32>("NoOfPackages");
                double CBM = dt.Rows[0].Field<double>("CBM");
                string FinalDestination = dt.Rows[0].Field<string>("FinalDestination");
                string SOB = dt.Rows[0].Field<DateTime>("SOB").ToString();
                string OriginalPort = dt.Rows[0].Field<string>("OriginalPort");
                string ShippingLine = dt.Rows[0].Field<string>("ShippingLine");
                string References = dt.Rows[0].Field<string>("Reference");

                txtInvoiceID.Text = InvoiceID.ToString();
                txtCBLID.Text = InvoiceID.ToString();
                txtBInvoiceID.Text = InvoiceID.ToString();
                txtJobNo.Text = JobNo.ToString();
                txtBLNo.Text = BLNo;
                cmbVersion.SelectedItem.Text = Version;
                cmbFreight.SelectedItem.Text = Freight;
                txtShipper.Text = Shipper;
                txtShipperAdd.Text = ShipperAdd;
                txtConsignee.Text = Consignee;
                txtConsigneeAdd.Text = ConsigneeAdd;
                txtDescription.Text = Description;
                txtBillinAdd1.Text = BillingAdd;
                txtVesel.Text = Vesel;
                txtVoyage.Text = Voyage;
                txtETA.Text = ETA;
                txtGrossWeight.Text = GrossWeight.ToString();
                txtNetWeight.Text = NetWeight.ToString();
                txtNoOfPackages.Text = JNoOfPackagesobNo.ToString();
                txtCBM.Text = CBM.ToString();
                txtFinalDestination.Text = FinalDestination;
                txtSOB.Text = SOB;
                txtOriginalPort.Text = OriginalPort;
                txtShippingLine.Text = ShippingLine;
                txtReferences.Text = References;
                PopulateGridview();
                PopulateGridview1();
            }
            catch (Exception ex)
            {
                lblMessage.Visible = true;
                lblMessage.Text = ex.ToString();
            }
          
        }

        void PopulateGridview()
        {
            try
            {
                DataTable dtbl = new DataTable();
                using (SqlConnection sqlCon = new SqlConnection(ConnectionString))
                {
                    sqlCon.Open();
                    SqlDataAdapter sqlDa = new SqlDataAdapter("select * from BillItems where InvoiceID ='" + txtCBLID.Text + "' ", sqlCon);
                    sqlDa.Fill(dtbl);
                }
                if (dtbl.Rows.Count > 0)
                {
                    GridView1.DataSource = dtbl;
                    GridView1.DataBind();
                }
                else
                {
                    dtbl.Rows.Add(dtbl.NewRow());
                    GridView1.DataSource = dtbl;
                    GridView1.DataBind();
                    GridView1.Rows[0].Cells.Clear();
                    GridView1.Rows[0].Cells.Add(new TableCell());
                    GridView1.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                    GridView1.Rows[0].Cells[0].Text = "No Data Found ..!";
                    GridView1.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;

                }
            }
            catch (Exception ex)
            {


                lblMessage.Visible = true;
                lblMessage.Text = ex.ToString();
            }
        }

        void PopulateGridview1()
        {
            try
            {
                DataTable dtbl = new DataTable();
                using (SqlConnection sqlCon = new SqlConnection(ConnectionString))
                {
                    sqlCon.Open();
                    SqlDataAdapter sqlDa = new SqlDataAdapter("select * from BillableItems where InvoiceID ='" + txtBInvoiceID.Text + "' ", sqlCon);
                    sqlDa.Fill(dtbl);
                }
                if (dtbl.Rows.Count > 0)
                {
                    GridView2.DataSource = dtbl;
                    GridView2.DataBind();
                }
                else
                {
                    dtbl.Rows.Add(dtbl.NewRow());
                    GridView2.DataSource = dtbl;
                    GridView2.DataBind();
                    GridView2.Rows[0].Cells.Clear();
                    GridView2.Rows[0].Cells.Add(new TableCell());
                    GridView2.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                    GridView2.Rows[0].Cells[0].Text = "No Data Found ..!";
                    GridView2.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;

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

                string JobID = Session["JobID"].ToString();
                con = new SqlConnection(ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT InvoiceID FROM Invoice where JobNo=" + JobID + "", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                con.Close();
                cmbSearch.DataSource = dt;
                cmbSearch.DataBind();
                cmbSearch.DataTextField = "InvoiceID";
                cmbSearch.DataValueField = "InvoiceID";
                cmbSearch.DataBind();

            }
            catch (Exception ex)
            {
                lblMessage.Visible = true;
                lblMessage.Text = ex.ToString();
            }
        }

        void GetBLID()
        {
            try
            {
                int DID = 1;


                con = new SqlConnection(ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("select max (InvoiceID) from Invoice", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                con.Close();
                DataRow row1 = dt.Rows[dt.Rows.Count - 1];

                DID = Convert.ToInt32(dt.Rows[0]["Column1"].ToString()) + DID;

                txtCBLID.Text = DID.ToString();
                txtBInvoiceID.Text = DID.ToString();
            }
            catch (Exception ex)
            {
                lblMessage.Visible = true;
                lblMessage.Text = ex.ToString();
            }
        }



        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {

                if (e.CommandName.Equals("AddNew"))
                {
                    using (SqlConnection con = new SqlConnection(ConnectionString))
                    {
                        con.Open();
                        SqlCommand sqlCmd = new SqlCommand("BillingItemInsertEdit", con);
                        sqlCmd.CommandType = CommandType.StoredProcedure;
                        int BillItem;
                        if ((GridView1.FooterRow.FindControl("lblEItemCode") as Label).Text.Trim() == "")
                        {
                            BillItem = 0;
                        }
                        else
                        {
                            BillItem = Convert.ToInt32(GridView1.FooterRow.FindControl("lblEItemCode") as Label);
                        }

                        string Description = (GridView1.FooterRow.FindControl("txtEDescription") as TextBox).Text.Trim();
                        float Volume = float.Parse((GridView1.FooterRow.FindControl("txtEVolume") as TextBox).Text.Trim());
                        float RateInUSD = float.Parse((GridView1.FooterRow.FindControl("txtERateInUSD") as TextBox).Text.Trim());
                        float Mul1 = Volume * RateInUSD;
                        float RateInLKR = float.Parse((GridView1.FooterRow.FindControl("txtERateInLKR") as TextBox).Text.Trim());
                        float Revenue = float.Parse((GridView1.FooterRow.FindControl("txtERevenue") as TextBox).Text.Trim());
                        float CostInUSD = float.Parse((GridView1.FooterRow.FindControl("txtECostInUSD") as TextBox).Text.Trim());
                        float CostInLKR = float.Parse((GridView1.FooterRow.FindControl("txtECostInLKR") as TextBox).Text.Trim());
                        float TotalCost = float.Parse((GridView1.FooterRow.FindControl("txtETotalCost") as TextBox).Text.Trim());
                        float NetRevenue = float.Parse((GridView1.FooterRow.FindControl("txtENetRevenue") as TextBox).Text.Trim());
                        float EXRate = float.Parse(txtExRate.Text);
                        int InvoiceID = Convert.ToInt32(txtInvoiceID.Text);

                        sqlCmd.Parameters.AddWithValue("@BillingItemID", BillItem);
                        sqlCmd.Parameters.AddWithValue("@InvoiceID", InvoiceID);
                        sqlCmd.Parameters.AddWithValue("@ExRate", EXRate);
                        sqlCmd.Parameters.AddWithValue("@Description", Description);
                        sqlCmd.Parameters.AddWithValue("@Volume", Volume);
                        sqlCmd.Parameters.AddWithValue("@RateInUSD", RateInUSD);
                        sqlCmd.Parameters.AddWithValue("@RateInLKR", RateInLKR);
                        sqlCmd.Parameters.AddWithValue("@Revenue", Revenue);
                        sqlCmd.Parameters.AddWithValue("@CostInUSD", CostInUSD);
                        sqlCmd.Parameters.AddWithValue("@CostInLKR", CostInLKR);
                        sqlCmd.Parameters.AddWithValue("@TotalCost", TotalCost);
                        sqlCmd.Parameters.AddWithValue("@NetRevenue", NetRevenue);

                        sqlCmd.ExecuteNonQuery();
                        con.Close();
                        PopulateGridview();


                    }
                }
            }
            catch (Exception ex)
            {

                lblMessage.Visible = true;
                lblMessage.Text = ex.ToString();
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            try
            {
                GridView1.EditIndex = e.NewEditIndex;
                PopulateGridview();
            }
            catch (Exception ex)
            {

                lblMessage.Visible = true;
                lblMessage.Text = ex.ToString();
            }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            try
            {
                GridView1.EditIndex = -1;
                PopulateGridview();
            }
            catch (Exception ex)
            {
                lblMessage.Visible = true;
                lblMessage.Text = ex.ToString();
            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(ConnectionString))
                {
                    con.Open();
                    SqlCommand sqlCmd = new SqlCommand("BillingItemInsertEdit", con);
                    sqlCmd.CommandType = CommandType.StoredProcedure;

                    int BillItem = Convert.ToInt32((GridView1.Rows[e.RowIndex].FindControl("lblAItemCode") as Label).Text.Trim());
                    string Description = (GridView1.Rows[e.RowIndex].FindControl("txtDescription") as TextBox).Text.Trim();
                    float Volume = float.Parse((GridView1.Rows[e.RowIndex].FindControl("txtVolume") as TextBox).Text.Trim());
                    float RateInUSD = float.Parse((GridView1.Rows[e.RowIndex].FindControl("txtRateInUSD") as TextBox).Text.Trim());
                    float RateInLKR = float.Parse((GridView1.Rows[e.RowIndex].FindControl("txtRateInLKR") as TextBox).Text.Trim());
                    float Revenue = float.Parse((GridView1.Rows[e.RowIndex].FindControl("txtRevenue") as TextBox).Text.Trim());
                    float CostInUSD = float.Parse((GridView1.Rows[e.RowIndex].FindControl("txtCostInUSD") as TextBox).Text.Trim());
                    float CostInLKR = float.Parse((GridView1.Rows[e.RowIndex].FindControl("txtCostInLKR") as TextBox).Text.Trim());
                    float TotalCost = float.Parse((GridView1.Rows[e.RowIndex].FindControl("txtTotalCost") as TextBox).Text.Trim());
                    float NetRevenue = float.Parse((GridView1.Rows[e.RowIndex].FindControl("txtNetRevenue") as TextBox).Text.Trim());
                    float EXRate = float.Parse(txtExRate.Text);
                    int InvoiceID = Convert.ToInt32(txtInvoiceID.Text);

                    sqlCmd.Parameters.AddWithValue("@BillingItemID", BillItem);
                    sqlCmd.Parameters.AddWithValue("@InvoiceID", InvoiceID);
                    sqlCmd.Parameters.AddWithValue("@ExRate", EXRate);
                    sqlCmd.Parameters.AddWithValue("@Description", Description);
                    sqlCmd.Parameters.AddWithValue("@Volume", Volume);
                    sqlCmd.Parameters.AddWithValue("@RateInUSD", RateInUSD);
                    sqlCmd.Parameters.AddWithValue("@RateInLKR", RateInLKR);
                    sqlCmd.Parameters.AddWithValue("@Revenue", Revenue);
                    sqlCmd.Parameters.AddWithValue("@CostInUSD", CostInUSD);
                    sqlCmd.Parameters.AddWithValue("@CostInLKR", CostInLKR);
                    sqlCmd.Parameters.AddWithValue("@TotalCost", TotalCost);
                    sqlCmd.Parameters.AddWithValue("@NetRevenue", NetRevenue);

                    sqlCmd.ExecuteNonQuery();
                    GridView1.EditIndex = -1;
                    con.Close();
                    PopulateGridview();


                }
            }
            catch (Exception ex)
            {
                lblMessage.Visible = true;
                lblMessage.Text = ex.ToString();
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(ConnectionString))
                {
                    con.Open();
                    String QUERY = "DELETE FROM BillItems where BillingItemID = @BillingItemID";
                    SqlCommand sqlCmd = new SqlCommand(QUERY, con);
                    sqlCmd.Parameters.AddWithValue("@BillingItemID", Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    PopulateGridview();
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                lblMessage.Visible = true;
                lblMessage.Text = ex.ToString();
            }
        }

        protected void btnCreateInvoice_Click(object sender, EventArgs e)
        {
            try
            {
                Session["InvoiceID"] = txtInvoiceID.Text;
                Session["JobNo"] = txtJobNo.Text;
                Session["Report"] = "Invoice";
                HttpContext.Current.Response.Redirect("ReportViewerImport.aspx", true);
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
                int InvoiceID;
                if (txtInvoiceID.Text == "0")
                {
                    InvoiceID = 0;
                }
                else
                {
                    InvoiceID = Convert.ToInt32(txtInvoiceID.Text);
                }
                int JobNo = Convert.ToInt32(txtJobNo.Text);
                string BLNo = txtBLNo.Text;
                string Version = cmbVersion.SelectedItem.Value;
                string Freight = cmbFreight.SelectedItem.Value;
                string Shipper = txtShipper.Text;
                string ShipperAdd = txtShipperAdd.Text;
                string Consignee = txtConsignee.Text;
                string ConsigneeAdd = txtConsigneeAdd.Text;
                string Description = txtDescription.Text;
                string BillingAdd = txtBillinAdd1.Text;
                string Vesel = txtVesel.Text;
                string Voyage = txtVoyage.Text;
                string ETA = txtETA.Text;
                double GrossWeight = Convert.ToDouble(txtGrossWeight.Text);
                double NetWeight = Convert.ToDouble(txtNetWeight.Text);
                int JNoOfPackagesobNo = Convert.ToInt32(txtNoOfPackages.Text);
                double CBM = Convert.ToDouble(txtCBM.Text);
                string FinalDestination = txtFinalDestination.Text;
                string SOB = txtSOB.Text;
                string OriginalPort = txtOriginalPort.Text;
                string ShippingLine = txtShippingLine.Text;
                string References = txtReferences.Text;

                using (SqlConnection con = new SqlConnection(ConnectionString))
                {
                    con.Open();
                    SqlCommand sqlCmd = new SqlCommand("InvoiceInsertEdit", con);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@InvoiceID", InvoiceID);
                    sqlCmd.Parameters.AddWithValue("@Version", Version);
                    sqlCmd.Parameters.AddWithValue("@JobNo", JobNo);
                    sqlCmd.Parameters.AddWithValue("@BLNo", BLNo);
                    sqlCmd.Parameters.AddWithValue("@FreightType", Freight);
                    sqlCmd.Parameters.AddWithValue("@Shipper", Shipper);
                    sqlCmd.Parameters.AddWithValue("@ShipperAdd", ShipperAdd);
                    sqlCmd.Parameters.AddWithValue("@Consignee", Consignee);
                    sqlCmd.Parameters.AddWithValue("@ConsigneeAdd", ConsigneeAdd);
                    sqlCmd.Parameters.AddWithValue("@BillingAdd", BillingAdd);
                    sqlCmd.Parameters.AddWithValue("@Description", Description);
                    sqlCmd.Parameters.AddWithValue("@Vesel", Vesel);
                    sqlCmd.Parameters.AddWithValue("@Voyage", Voyage);
                    sqlCmd.Parameters.AddWithValue("@ETADate", ETA);
                    sqlCmd.Parameters.AddWithValue("@SOBDate", SOB);
                    sqlCmd.Parameters.AddWithValue("@GrossWeight", GrossWeight);
                    sqlCmd.Parameters.AddWithValue("@NetWeight", NetWeight);
                    sqlCmd.Parameters.AddWithValue("@NoOfPackages", JNoOfPackagesobNo);
                    sqlCmd.Parameters.AddWithValue("@CBM", CBM);
                    sqlCmd.Parameters.AddWithValue("@FinalDestination", FinalDestination);
                    sqlCmd.Parameters.AddWithValue("@OriginalPort", OriginalPort);
                    sqlCmd.Parameters.AddWithValue("@ShippingLine", ShippingLine);
                    sqlCmd.Parameters.AddWithValue("@Reference", References);
                    sqlCmd.ExecuteNonQuery();
                    lblMessage.Visible = true;
                    lblMessage.Text = "Succefully Create the Invoice";
                    con.Close();

                }

                cmbVersion.SelectedItem.Text = "Update 01";
                cmbFreight.SelectedItem.Text = "PREPAID";
                txtShipper.Text = "";
                txtShipperAdd.Text = "";
                txtConsignee.Text = "";
                txtConsigneeAdd.Text = "";
                txtDescription.Text = "";
                txtBillinAdd1.Text = "";
                txtVesel.Text = "";
                txtVoyage.Text = "";
                txtETA.Text = "";
                txtGrossWeight.Text = "";
                txtNetWeight.Text = "";
                txtNoOfPackages.Text = "";
                txtCBM.Text = "";
                txtFinalDestination.Text = "";
                txtSOB.Text = "";
                txtOriginalPort.Text = "";
                txtShippingLine.Text = "";
                txtETA.Text = "";
                txtReferences.Text = "";
                GetBLID();
                PopulateGridview();
                PopulateGridview1();
                SearchBar();


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

                cmbVersion.SelectedItem.Text = "Update 01";
                cmbFreight.SelectedItem.Text = "PREPAID";
                txtShipper.Text = "";
                txtShipperAdd.Text = "";
                txtConsignee.Text = "";
                txtConsigneeAdd.Text = "";
                txtDescription.Text = "";
                txtBillinAdd1.Text = "";
                txtVesel.Text = "";
                txtVoyage.Text = "";
                txtETA.Text = "";
                txtGrossWeight.Text = "";
                txtNetWeight.Text = "";
                txtNoOfPackages.Text = "";
                txtCBM.Text = "";
                txtFinalDestination.Text = "";
                txtSOB.Text = "";
                txtOriginalPort.Text = "";
                txtShippingLine.Text = "";
                txtETA.Text = "";
                txtReferences.Text = "";
                GetBLID();
                PopulateGridview();
                PopulateGridview1();
                SearchBar();
            }
            catch (Exception ex)
            {
                lblMessage.Visible = true;
                lblMessage.Text = ex.ToString();
            }

        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
           


        }
    }
}