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
    public partial class ReportViewerImport : System.Web.UI.Page
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["Test"].ConnectionString;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    GETDATA();
                }
            }
            catch (Exception ex)
            {

                lblMessage.Visible = true;
                lblMessage.Text = ex.ToString();
            }
        }
        void GETDATA()
        {
            try
            {
                if (Session["Report"].ToString() == "Manifest")
                {
                    con = new SqlConnection(ConnectionString);
                    SqlDataAdapter da = new SqlDataAdapter("Select * from ImportBL where JobNo='" + Session["JobNo"].ToString() + "' ", con);
                    DataTable dt = new DataTable("Table2");
                    da.Fill(dt);

                    SqlDataAdapter da1 = new SqlDataAdapter("Select * from MasterBLImport where JobID='" + Session["JobNo"].ToString() + "' ", con);
                    DataTable dt1 = new DataTable("Table3");
                    da1.Fill(dt1);

                    ReportViewer1.ProcessingMode = ProcessingMode.Local;
                    ReportViewer1.LocalReport.ReportPath = Server.MapPath("ReportManifest.rdlc");
                    ReportViewer1.LocalReport.DataSources.Clear();
                    ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", dt));
                    ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet2", dt1));
                    ReportViewer1.LocalReport.Refresh();
                    ReportViewer1.SizeToReportContent = true; // Fit report to screen
                    ReportViewer1.ZoomMode = ZoomMode.FullPage;
                }
                else if (Session["Report"].ToString() == "ArrivalNotice")
                {
                    con = new SqlConnection(ConnectionString);
                    SqlDataAdapter da = new SqlDataAdapter("Select * from ImportBL where JobNo='" + Session["JobNo"].ToString() + "' ", con);
                    DataTable dt = new DataTable("Table2");
                    da.Fill(dt);

                    ReportViewer1.ProcessingMode = ProcessingMode.Local;
                    ReportViewer1.LocalReport.ReportPath = Server.MapPath("ReportArrivalNotice.rdlc");
                    ReportViewer1.LocalReport.DataSources.Clear();
                    ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", dt));
                    ReportViewer1.LocalReport.Refresh();
                    ReportViewer1.SizeToReportContent = true; // Fit report to screen
                    ReportViewer1.ZoomMode = ZoomMode.FullPage;
                }
                else if (Session["Report"].ToString() == "Invoice")
                {
                    //Session["BLID"]
                   // Session["JobNo"]
                    con = new SqlConnection(ConnectionString);
                    SqlDataAdapter da = new SqlDataAdapter("Select * from Invoice where InvoiceID='" + Session["InvoiceID"].ToString() + "' ", con);
                    DataTable dt = new DataTable("Table2");
                    da.Fill(dt);
                    con = new SqlConnection(ConnectionString);
                    SqlDataAdapter da1 = new SqlDataAdapter("Select * from BillItems where InvoiceID='" + Session["InvoiceID"].ToString() + "' ", con);
                    DataTable dt1 = new DataTable("Table3");
                    da1.Fill(dt1);
                    con = new SqlConnection(ConnectionString);
                    SqlDataAdapter da2 = new SqlDataAdapter("Select * from BillableItems where InvoiceID='" + Session["InvoiceID"].ToString() + "' ", con);
                    DataTable dt2 = new DataTable("Table4");
                    da2.Fill(dt2);

                    ReportViewer1.ProcessingMode = ProcessingMode.Local;
                    ReportViewer1.LocalReport.ReportPath = Server.MapPath("ReportInvoice.rdlc");
                    ReportViewer1.LocalReport.DataSources.Clear();
                    ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", dt));
                    ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet2", dt1));
                    ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet3", dt2));
                    ReportViewer1.LocalReport.Refresh();
                    ReportViewer1.SizeToReportContent = true; // Fit report to screen
                    ReportViewer1.ZoomMode = ZoomMode.FullPage;
                }

            }
            catch (Exception ex)
            {

                lblMessage.Visible = true;
                lblMessage.Text = ex.ToString();
            }


        }
    }
}