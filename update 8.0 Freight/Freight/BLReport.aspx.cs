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
    public partial class BLReport : System.Web.UI.Page
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["Test"].ConnectionString;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GETDATA();
            }
        }

        private void GETDATA()
        {
            con = new SqlConnection(ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("Select * from BL where BLID ='" + Session["BLID"].ToString() + "' and JobNo='" + Session["JobNo"].ToString() + "' ", con);

            DataTable dt = new DataTable("Table2");
            da.Fill(dt);
            
            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("ReportBLSAMPLE.rdlc");
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", dt));
            ReportViewer1.LocalReport.Refresh();
        }


        private void GETDATA1()
        {
            con = new SqlConnection(ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("Select * from BL where BLID ='" + Session["BLID"].ToString() + "' and JobNo='" + Session["JobNo"].ToString() + "' ", con);

            DataTable dt = new DataTable("Table2");
            da.Fill(dt);

            ReportViewer2.ProcessingMode = ProcessingMode.Local;
            ReportViewer2.LocalReport.ReportPath = Server.MapPath("ReportAttachedSheet.rdlc");
            ReportViewer2.LocalReport.DataSources.Clear();
            ReportViewer2.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", dt));
            ReportViewer2.LocalReport.Refresh();
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            GETDATA1();

            con = new SqlConnection(ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("Select * from BL where BLID ='" + Session["BLID"].ToString() + "' and JobNo='" + Session["JobNo"].ToString() + "' ", con);

            DataTable dt = new DataTable("Table2");
            da.Fill(dt);

            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("ReportBLforAttachedSheet.rdlc");
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", dt));
            ReportViewer1.LocalReport.Refresh();

            

        }
    }
}