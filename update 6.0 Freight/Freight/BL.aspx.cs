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
    public partial class BL : System.Web.UI.Page
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["Test"].ConnectionString;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SearchBar();
                GetDriverID();
            }
            txtJobNo.Text = Session["JobID"].ToString();
            txtPOD.Text = Session["POD"].ToString();
            txtPOL.Text = Session["POL"].ToString();
            txtFinalDestination.Text = Session["FinalDestination"].ToString();
            txtVesel.Text = Session["Vesel"].ToString();
            cmbLCLFCL.Text = Session["LCL_FCL"].ToString();
            txtShipper.Text = Session["Shipper"].ToString();
            txtShipperAdd.Text = Session["shipperAdd"].ToString();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtBLID.Text = "";
            txtShipper.Text = "";
            txtConsignee.Text = "";
            txtShipperAdd.Text = "";
            txtConsigneeAdd.Text = "";
            txtNotifyParty.Text = "";
            cmbFreight.Text = "";
            txtNotifyPartyAdd.Text = "";
            txtDiliveryAgent.Text = "";
            txtGrossWeight.Text = "";
            txtNetWeight.Text = "";
            txtNoOfPackages.Text = "";
            txtCBM.Text = "";
            txtPOL.Text = "";
            txtPOD.Text = "";
            txtPOR.Text = "";
            txtPOFD.Text = "";
            txtFinalDestination.Text = "";
            txtSOB.Text = "";
            txtDescription.Text = "";
            txtMarksandNumbers.Text = "";
            txtVesel.Text = "";
            txtVoyage.Text = "";
            cmbLCLFCL.Text = "";
            cmbTypeOfMovement.Text = "";
            SearchBar();
            GetDriverID();

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int BLID;
            if (txtBLID.Text == "")
            {
                BLID = 0;
            }
            else
            {
                BLID = Convert.ToInt32(txtBLID.Text);
            }
            int JobNo = Convert.ToInt32(txtJobNo.Text);
            string BLNo = txtBLNo.Text;
            string Shipper = txtShipper.Text;
            string ShipperAdd = txtShipperAdd.Text;
            string Consignee = txtConsignee.Text;
            string ConsigneeAdd = txtConsigneeAdd.Text;
            string NotifyParty = txtNotifyParty.Text;
            string NotifyPartyAdd = txtNotifyPartyAdd.Text;
            string DiliveryAgent = txtDiliveryAgent.Text;
            string FinalDestination = txtFinalDestination.Text;
            string Description = txtDescription.Text;
            double GrossWeight= Convert.ToDouble(txtGrossWeight.Text);
            double NetWeight = Convert.ToDouble(txtNetWeight.Text);
            int JNoOfPackagesobNo = Convert.ToInt32(txtNoOfPackages.Text);
            double CBM = Convert.ToDouble(txtCBM.Text);
            string Freight = cmbFreight.SelectedItem.Value;
            string SOBDate = txtSOB.Text;
            string POL = txtPOL.Text;
            string POD = txtPOD.Text;
            string POR = txtPOR.Text;
            string POFD = txtPOFD.Text;
            string Vesel = txtVesel.Text;
            string Voyage = txtVoyage.Text;
            string MarksandNumbers = txtMarksandNumbers.Text;
            string LCL_FCL = cmbLCLFCL.SelectedItem.Value;
            string TypeOfMovement = cmbTypeOfMovement.SelectedItem.Value;



            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                con.Open();
                SqlCommand sqlCmd = new SqlCommand("BLInsertEdit", con);
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
                sqlCmd.Parameters.AddWithValue("@DiliveryAgent", DiliveryAgent);
                sqlCmd.Parameters.AddWithValue("@FinalDestination", FinalDestination);
                sqlCmd.Parameters.AddWithValue("@Description", Description);
                sqlCmd.Parameters.AddWithValue("@GrossWeight", GrossWeight);
                sqlCmd.Parameters.AddWithValue("@NetWeight", NetWeight);
                sqlCmd.Parameters.AddWithValue("@NoOfPackages", JNoOfPackagesobNo);
                sqlCmd.Parameters.AddWithValue("@CBM", CBM);
                sqlCmd.Parameters.AddWithValue("@Freight", Freight);
                sqlCmd.Parameters.AddWithValue("@SOBDate", SOBDate);
                sqlCmd.Parameters.AddWithValue("@POL", POL);
                sqlCmd.Parameters.AddWithValue("@POD", POD);
                sqlCmd.Parameters.AddWithValue("@POR", POR);
                sqlCmd.Parameters.AddWithValue("@POFD", POFD);
                sqlCmd.Parameters.AddWithValue("@Vesel", Vesel);
                sqlCmd.Parameters.AddWithValue("@Voyage", Voyage);
                sqlCmd.Parameters.AddWithValue("@MarksandNumbers", MarksandNumbers);
                sqlCmd.Parameters.AddWithValue("@LCL_FCL", LCL_FCL);
                sqlCmd.Parameters.AddWithValue("@TypeOfMovement", TypeOfMovement);
                sqlCmd.ExecuteNonQuery();
                lblMessage.Visible = true;
                lblMessage.Text = "Succefully Create the BL";
                con.Close();

            }

            SearchBar();
            GetDriverID();
            txtBLID.Text = "";
            txtShipper.Text = "";
            txtConsignee.Text = "";
            txtShipperAdd.Text = "";
            txtConsigneeAdd.Text = "";
            txtNotifyParty.Text = "";
            cmbFreight.Text = "";
            txtNotifyPartyAdd.Text = "";
            txtDiliveryAgent.Text = "";
            txtGrossWeight.Text = "";
            txtNetWeight.Text = "";
            txtNoOfPackages.Text = "";
            txtCBM.Text = "";
            txtPOL.Text = "";
            txtPOD.Text = "";
            txtPOR.Text = "";
            txtPOFD.Text = "";
            txtFinalDestination.Text = "";
            txtSOB.Text = "";
            txtDescription.Text = "";
            txtMarksandNumbers.Text = "";
            txtVesel.Text = "";
            txtVoyage.Text = "";
            cmbLCLFCL.Text = "";
            cmbTypeOfMovement.Text = "";








        }
            
        protected void btnCreateBL_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string BL = cmbSearch.SelectedItem.Value;
            SqlConnection con = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from BL where BLID =" + BL + "", con);
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
            string DiliveryAgent = dt.Rows[0].Field<string>("DiliveryAgent");
            string FinalDestination = dt.Rows[0].Field<string>("FinalDestination");
            string Description = dt.Rows[0].Field<string>("Description");
            double GrossWeight = dt.Rows[0].Field<double>("GrossWeight");
            double NetWeight = dt.Rows[0].Field<double>("NetWeight");
            int NoOfPackageso = dt.Rows[0].Field<Int32>("NoOfPackages");
            double CBM = dt.Rows[0].Field<double>("CBM");
            string Freight = dt.Rows[0].Field<string>("Freight");
            string SOBDate = dt.Rows[0].Field<DateTime>("SOBDate").ToString();
            string POL = dt.Rows[0].Field<string>("POL");
            string POD = dt.Rows[0].Field<string>("POD");
            string POR = dt.Rows[0].Field<string>("POR");
            string POFD = dt.Rows[0].Field<string>("POFD");
            string Vesel = dt.Rows[0].Field<string>("Vesel");
            string Voyage = dt.Rows[0].Field<string>("Voyage");
            string MarksandNumbers = dt.Rows[0].Field<string>("MarksandNumbers");
            string LCL_FCL = dt.Rows[0].Field<string>("LCL_FCL");
            string TypeOfMovement = dt.Rows[0].Field<string>("TypeOfMovement");

            Session["BLID"]= BLID.ToString();
            txtBLID.Text = BLID.ToString();
            PopulateGridview();
            txtJobNo.Text = JobNo.ToString();
            txtBLNo.Text = BLNo;
            txtShipper.Text = Shipper;
            txtShipperAdd.Text = ShipperAdd;
            txtConsignee.Text = Consignee;
            txtConsigneeAdd.Text = ConsigneeAdd;
            txtNotifyParty.Text = NotifyParty;
            txtNotifyPartyAdd.Text = NotifyPartyAdd;
            txtDiliveryAgent.Text = DiliveryAgent;
            txtFinalDestination.Text = FinalDestination;
            txtDescription.Text = Description;
            txtGrossWeight.Text = GrossWeight.ToString();
            txtNetWeight.Text = NetWeight.ToString();
            txtNoOfPackages.Text = NoOfPackageso.ToString();
            txtCBM.Text = CBM.ToString();
            cmbFreight.Text = Freight;
            txtSOB.Text = SOBDate;
            txtPOL.Text = POL;
            txtPOD.Text = POD;
            txtPOR.Text = POR;
            txtPOFD.Text = POFD;
            txtVesel.Text = Vesel;
            txtVoyage.Text = Voyage;
            txtMarksandNumbers.Text = MarksandNumbers;
            cmbLCLFCL.Text = LCL_FCL;
            cmbTypeOfMovement.Text = TypeOfMovement;

        }



        void SearchBar()
        {
            string JobID = Session["JobID"].ToString();
            con = new SqlConnection(ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT BLID,BLNo FROM BL where JobNo="+ JobID + "" , con);
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

        void GetDriverID()
        {
            int DID = 1;
            

            con = new SqlConnection(ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select max (BLNo) from BL", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            DataRow row1 = dt.Rows[dt.Rows.Count - 1];

            string BLNO = dt.Rows[0]["Column1"].ToString();
            char[] spearator = { '/' };
            Int32 count = 2;

            String[] strlist = BLNO.Split(spearator,count, StringSplitOptions.None);

            DID = Convert.ToInt32(strlist[1].ToString()) + DID;

            txtBLNo.Text = strlist[0].ToString()+"/"+ DID.ToString();
        }


        void PopulateGridview()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(ConnectionString))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("select * from Container where BL_ID ='"+ Session["BLID"].ToString() + "'  and JobID ='"+ Session["JobID"].ToString() + "' ", sqlCon);
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

        protected void cmbSearch_SelectedIndexChanged(object sender, EventArgs e)
        {



        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }
    }
}