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
    public partial class Import : System.Web.UI.Page
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["Test"].ConnectionString;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtJobID.Text = Session["JobID"].ToString();
                txtBlID.Text = "0";
                GetBLID();
                PopulateGridview();
                SearchBar();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string BL = cmbSearch.SelectedItem.Value;
            SqlConnection con = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from ImportBL where BLID =" + BL + "", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            //Connection open here   
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();

            int BLID = dt.Rows[0].Field<Int32>("BLID");
            int JobNo = dt.Rows[0].Field<Int32>("JobNo");
            string BLNo = dt.Rows[0].Field<string>("BLNo");
            string Shipper = dt.Rows[0].Field<string>("Shipper");
            string ShipperAdd = dt.Rows[0].Field<string>("ShipperAdd");
            string Consignee = dt.Rows[0].Field<string>("Consignee");
            string ConsigneeAdd = dt.Rows[0].Field<string>("ConsigneeAdd");
            string NotifyParty = dt.Rows[0].Field<string>("NotifyParty");
            string NotifyPartyAdd = dt.Rows[0].Field<string>("NotifyPartyAdd");
            string MarksandNumbers = dt.Rows[0].Field<string>("MarksandNumbers");
            string Description = dt.Rows[0].Field<string>("Description");
            double GrossWeight = dt.Rows[0].Field<double>("GrossWeight");
            double NetWeight = dt.Rows[0].Field<double>("NetWeight");
            int NoOfPackageso = dt.Rows[0].Field<Int32>("NoOfPackages");
            string ETA = dt.Rows[0].Field<DateTime>("ETA").ToString();
            string SOBDate = dt.Rows[0].Field<DateTime>("SOBDate").ToString();
            string POL = dt.Rows[0].Field<string>("POL");
            string POD = dt.Rows[0].Field<string>("POD");
            string Vesel = dt.Rows[0].Field<string>("Vesel");
            string Voyage = dt.Rows[0].Field<string>("Voyage");

            Session["BLID"] = BLID.ToString();
            txtBlID.Text = BLID.ToString();
            txtCBLID.Text = BLID.ToString();
            PopulateGridview();
            txtJobID.Text = JobNo.ToString();
            txtBLNO.Text = BLNo;
            txtShipper.Text = Shipper;
            txtShipperAdd.Text = ShipperAdd;
            txtConsignee.Text = Consignee;
            txtConsigneeAdd.Text = ConsigneeAdd;
            txtNotifyParty.Text = NotifyParty;
            txtNotifyPartyAdd.Text = NotifyPartyAdd;
            txtMarksandNumbers.Text = MarksandNumbers;
            txtMainDescription.Text = Description;
            txtGrossWeight.Text = GrossWeight.ToString();
            txtNetWeight.Text = NetWeight.ToString();
            txtPackages.Text = NoOfPackageso.ToString();
            txtETA.Text = ETA;
            txtSOB.Text = SOBDate;
            txtPOL.Text = POL;
            txtPOD.Text = POD;
            txtVesel.Text = Vesel;
            txtVoyage.Text = Voyage;
            
        }

        void PopulateGridview()
        {
            int BL_ID = Convert.ToInt32(txtCBLID.Text);
            int JobID = Convert.ToInt32(Session["JobID"].ToString());
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(ConnectionString))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("select * from ContainerImport where BL_ID ='" + BL_ID + "' and JobID ='"+ JobID + "'", sqlCon);
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
        
        void SearchBar()
        {
            string JobID = Session["JobID"].ToString();
            con = new SqlConnection(ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT BLID,BLNo FROM ImportBL where JobNo=" + JobID + "", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            cmbSearch.DataSource = dt;
            cmbSearch.DataBind();
            cmbSearch.DataTextField = "BLNo";
            cmbSearch.DataValueField = "BLID";
            cmbSearch.DataBind();

        }

        void GetBLID()
        {
            int DID = 1;


            con = new SqlConnection(ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select max (BLID) from ImportBL", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            DataRow row1 = dt.Rows[dt.Rows.Count - 1];

            DID = Convert.ToInt32(dt.Rows[0]["Column1"].ToString()) + DID;

            txtCBLID.Text = DID.ToString();
        }


        protected void btnClearAll_Click(object sender, EventArgs e)
        {
            txtConsignee.Text = "";
            txtConsigneeAdd.Text = "";
            txtShipper.Text = "";
            txtShipperAdd.Text = "";
            txtNotifyParty.Text = "";
            txtNotifyPartyAdd.Text = "";
            txtBlID.Text = "";
            txtVesel.Text = "";
            txtVoyage.Text = "";
            txtSOB.Text = "";
            txtETA.Text = "";
            txtPOL.Text = "";
            txtPOD.Text = "";
            txtBLNO.Text = "";
            txtPackages.Text = "";
            txtNetWeight.Text = "";
            txtGrossWeight.Text = "";
            txtMainDescription.Text = "";
            txtMarksandNumbers.Text = "";
            txtBlID.Text = "0";
            GetBLID();
            PopulateGridview();
        }

        protected void btnsavejob_Click(object sender, EventArgs e)
        {

            int BLID;
            if (txtBlID.Text == "")
            {
                BLID = 0;
            }
            else
            {
                BLID = Convert.ToInt32(txtBlID.Text);
            }
            int JobNo = Convert.ToInt32(txtJobID.Text);
            string BLNo = txtBLNO.Text;
            string Shipper = txtShipper.Text;
            string ShipperAdd = txtShipperAdd.Text;
            string Consignee = txtConsignee.Text;
            string ConsigneeAdd = txtConsigneeAdd.Text;
            string NotifyParty = txtNotifyParty.Text;
            string NotifyPartyAdd = txtNotifyPartyAdd.Text;
            string MarksandNumbers = txtMarksandNumbers.Text;
            string Description = txtMainDescription.Text;
            double GrossWeight = Convert.ToDouble(txtGrossWeight.Text);
            double NetWeight = Convert.ToDouble(txtNetWeight.Text);
            int JNoOfPackagesobNo = Convert.ToInt32(txtPackages.Text);
            string ETA = txtETA.Text;
            string SOBDate = txtSOB.Text;
            string POL = txtPOL.Text;
            string POD = txtPOD.Text;
            string Vesel = txtVesel.Text;
            string Voyage = txtVoyage.Text;

            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                con.Open();
                SqlCommand sqlCmd = new SqlCommand("ImporBLInsertEdit", con);
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@BLID", BLID);
                sqlCmd.Parameters.AddWithValue("@JobNo", JobNo);
                sqlCmd.Parameters.AddWithValue("@BLNo", BLNo);
                sqlCmd.Parameters.AddWithValue("@Shipper", Shipper);
                sqlCmd.Parameters.AddWithValue("@ShipperAdd", ShipperAdd);
                sqlCmd.Parameters.AddWithValue("@Consignee", Consignee);
                sqlCmd.Parameters.AddWithValue("@ConsigneeAdd", ConsigneeAdd);
                sqlCmd.Parameters.AddWithValue("@NotifyParty", NotifyParty);
                sqlCmd.Parameters.AddWithValue("@NotifyPartyAdd", NotifyPartyAdd);
                sqlCmd.Parameters.AddWithValue("@MarksandNumbers", MarksandNumbers);
                sqlCmd.Parameters.AddWithValue("@Description", Description);
                sqlCmd.Parameters.AddWithValue("@GrossWeight", GrossWeight);
                sqlCmd.Parameters.AddWithValue("@NetWeight", NetWeight);
                sqlCmd.Parameters.AddWithValue("@NoOfPackages", JNoOfPackagesobNo);
                sqlCmd.Parameters.AddWithValue("@ETA", ETA);
                sqlCmd.Parameters.AddWithValue("@SOBDate", SOBDate);
                sqlCmd.Parameters.AddWithValue("@POL", POL);
                sqlCmd.Parameters.AddWithValue("@POD", POD);
                sqlCmd.Parameters.AddWithValue("@Vesel", Vesel);
                sqlCmd.Parameters.AddWithValue("@Voyage", Voyage);
                sqlCmd.ExecuteNonQuery();
                lblMessage.Visible = true;
                lblMessage.Text = "Succefully Create the BL";
                con.Close();

            }

            txtConsignee.Text = "";
            txtConsigneeAdd.Text = "";
            txtShipper.Text = "";
            txtShipperAdd.Text = "";
            txtNotifyParty.Text = "";
            txtNotifyPartyAdd.Text = "";
            txtBlID.Text = "";
            txtVesel.Text = "";
            txtVoyage.Text = "";
            txtSOB.Text = "";
            txtETA.Text = "";
            txtPOL.Text = "";
            txtPOD.Text = "";
            txtBLNO.Text = "";
            txtPackages.Text = "";
            txtNetWeight.Text = "";
            txtGrossWeight.Text = "";
            txtMainDescription.Text = "";
            txtMarksandNumbers.Text = "";
            txtBlID.Text = "0";
            GetBLID();
            PopulateGridview();
            



        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName.Equals("AddNew"))
            {
                using (SqlConnection con = new SqlConnection(ConnectionString))
                {
                    con.Open();
                    SqlCommand sqlCmd = new SqlCommand("ImportContainerInsertEdit", con);
                    sqlCmd.CommandType = CommandType.StoredProcedure;


                    int ContainerID;
                    if ((GridView1.FooterRow.FindControl("lblFEContainerID") as Label).Text.Trim() == "")
                    {
                        ContainerID = 0;
                    }
                    else
                    {
                        ContainerID = Convert.ToInt32(GridView1.FooterRow.FindControl("lblFEContainerID") as Label);
                    }
                    int BL_ID = Convert.ToInt32(txtCBLID.Text);
                    int JobID = Convert.ToInt32(txtJobID.Text);
                    string ContainerNO = (GridView1.FooterRow.FindControl("txtEContainerNO") as TextBox).Text.Trim();
                    string ContainerSize = (GridView1.FooterRow.FindControl("cmbEContainerSize") as DropDownList).Text.Trim();
                    string ContainerType = (GridView1.FooterRow.FindControl("cmbEContainerType") as DropDownList).Text.Trim();
                    string SeallNo = (GridView1.FooterRow.FindControl("txtESeallNo") as TextBox).Text.Trim();
                    string TotalPackages = (GridView1.FooterRow.FindControl("txtETotalPackages") as TextBox).Text.Trim();
                    string PackageType = (GridView1.FooterRow.FindControl("txtEPackageType") as TextBox).Text.Trim();
                    float TotalGrossWeight = float.Parse((GridView1.FooterRow.FindControl("txtETotalGrossWeight") as TextBox).Text.Trim());
                    float TotalNetWeight = float.Parse((GridView1.FooterRow.FindControl("txtETotalNetWeight") as TextBox).Text.Trim());
                    float TotalCBM = float.Parse((GridView1.FooterRow.FindControl("txtETotalCBM") as TextBox).Text.Trim());
                    string COMMODITY = (GridView1.FooterRow.FindControl("txtECOMMODITY") as TextBox).Text.Trim();
                    float TMP = float.Parse((GridView1.FooterRow.FindControl("txtETMP") as TextBox).Text.Trim());
                    string Remark = (GridView1.FooterRow.FindControl("txtERemark") as TextBox).Text.Trim();


                    sqlCmd.Parameters.AddWithValue("@ContainerID", ContainerID);
                    sqlCmd.Parameters.AddWithValue("@BL_ID", BL_ID);
                    sqlCmd.Parameters.AddWithValue("@JobID", JobID);
                    sqlCmd.Parameters.AddWithValue("@ContainerNO", ContainerNO);
                    sqlCmd.Parameters.AddWithValue("@ContainerSize", ContainerSize);
                    sqlCmd.Parameters.AddWithValue("@ContainerType", ContainerType);
                    sqlCmd.Parameters.AddWithValue("@SeallNo", SeallNo);
                    sqlCmd.Parameters.AddWithValue("@TotalPackages", TotalPackages);
                    sqlCmd.Parameters.AddWithValue("@PackageType", PackageType);
                    sqlCmd.Parameters.AddWithValue("@TotalGrossWeight", TotalGrossWeight);
                    sqlCmd.Parameters.AddWithValue("@TotalNetWeight", TotalNetWeight);
                    sqlCmd.Parameters.AddWithValue("@TotalCBM", TotalCBM);
                    sqlCmd.Parameters.AddWithValue("@COMMODITY", COMMODITY);
                    sqlCmd.Parameters.AddWithValue("@TMP", TMP);
                    sqlCmd.Parameters.AddWithValue("@Remark", Remark);
                    sqlCmd.ExecuteNonQuery();
                    con.Close();
                    PopulateGridview();
                }

            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            PopulateGridview();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            PopulateGridview();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                con.Open();
                SqlCommand sqlCmd = new SqlCommand("ImportContainerInsertEdit", con);
                sqlCmd.CommandType = CommandType.StoredProcedure;


                int ContainerID = Convert.ToInt32((GridView1.Rows[e.RowIndex].FindControl("lblEContainerID") as Label).Text.Trim());
                int BL_ID = Convert.ToInt32(txtCBLID.Text);
                int JobID = Convert.ToInt32(txtJobID.Text);
                string ContainerNO = (GridView1.Rows[e.RowIndex].FindControl("txtContainerNO") as TextBox).Text.Trim();
                string ContainerSize = (GridView1.Rows[e.RowIndex].FindControl("cmbContainerSize") as DropDownList).Text.Trim();
                string ContainerType = (GridView1.Rows[e.RowIndex].FindControl("cmbContainerType") as DropDownList).Text.Trim();
                string SeallNo = (GridView1.Rows[e.RowIndex].FindControl("txtSeallNo") as TextBox).Text.Trim();
                string TotalPackages = (GridView1.Rows[e.RowIndex].FindControl("txtTotalPackages") as TextBox).Text.Trim();
                string PackageType = (GridView1.Rows[e.RowIndex].FindControl("txtPackageType") as TextBox).Text.Trim();
                float TotalGrossWeight = float.Parse((GridView1.Rows[e.RowIndex].FindControl("txtTotalGrossWeight") as TextBox).Text.Trim());
                float TotalNetWeight = float.Parse((GridView1.Rows[e.RowIndex].FindControl("txtTotalNetWeight") as TextBox).Text.Trim());
                float TotalCBM = float.Parse((GridView1.Rows[e.RowIndex].FindControl("txtTotalCBM") as TextBox).Text.Trim());
                string COMMODITY = (GridView1.Rows[e.RowIndex].FindControl("txtCOMMODITY") as TextBox).Text.Trim();
                float TMP = float.Parse((GridView1.Rows[e.RowIndex].FindControl("txtTMP") as TextBox).Text.Trim());
                string Remark = (GridView1.Rows[e.RowIndex].FindControl("txtRemark") as TextBox).Text.Trim();


                sqlCmd.Parameters.AddWithValue("@ContainerID", ContainerID);
                sqlCmd.Parameters.AddWithValue("@BL_ID", BL_ID);
                sqlCmd.Parameters.AddWithValue("@JobID", JobID);
                sqlCmd.Parameters.AddWithValue("@ContainerNO", ContainerNO);
                sqlCmd.Parameters.AddWithValue("@ContainerSize", ContainerSize);
                sqlCmd.Parameters.AddWithValue("@ContainerType", ContainerType);
                sqlCmd.Parameters.AddWithValue("@SeallNo", SeallNo);
                sqlCmd.Parameters.AddWithValue("@TotalPackages", TotalPackages);
                sqlCmd.Parameters.AddWithValue("@PackageType", PackageType);
                sqlCmd.Parameters.AddWithValue("@TotalGrossWeight", TotalGrossWeight);
                sqlCmd.Parameters.AddWithValue("@TotalNetWeight", TotalNetWeight);
                sqlCmd.Parameters.AddWithValue("@TotalCBM", TotalCBM);
                sqlCmd.Parameters.AddWithValue("@COMMODITY", COMMODITY);
                sqlCmd.Parameters.AddWithValue("@TMP", TMP);
                sqlCmd.Parameters.AddWithValue("@Remark", Remark);
                sqlCmd.ExecuteNonQuery();
                GridView1.EditIndex = -1;
                PopulateGridview();
                con.Close();
                PopulateGridview();
            }

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                con.Open();
                String QUERY = "DELETE FROM ContainerImport where ContainerID = @ContainerID";
                SqlCommand sqlCmd = new SqlCommand(QUERY, con);
                sqlCmd.Parameters.AddWithValue("@ContainerID", Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()));
                sqlCmd.ExecuteNonQuery();
                PopulateGridview();
                con.Close();
            }
        }
    }
}