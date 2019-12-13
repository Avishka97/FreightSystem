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
    public partial class Dashboard : System.Web.UI.Page
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["Test"].ConnectionString;
        SqlConnection con;
        string a;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DriverChart(2019,"November");
                DriverChart2(2019, "November");
                DriverChart3();
                PopulateGridview();
            }
        }

        void  DriverChart(int year , string Month )
        {
            con = new SqlConnection(ConnectionString);
            con.Open();
            SqlCommand sqlCmd = new SqlCommand("NoOFJobsImportPIEChart", con);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@Year", year);
            sqlCmd.Parameters.AddWithValue("@Month", Month);
            sqlCmd.ExecuteNonQuery();
            SqlDataAdapter sda = new SqlDataAdapter(sqlCmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            Chart1.Series["Series1"].XValueMember = "Count";
            Chart1.Series["Series1"].YValueMembers = "Count";
            Chart1.DataSource = dt;
            Chart1.DataBind();
        }

        void DriverChart2(int year, string Month)
        {
            con = new SqlConnection(ConnectionString);
            con.Open();
            SqlCommand sqlCmd = new SqlCommand("RevenuformonthPIEChart", con);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@Year", year);
            sqlCmd.Parameters.AddWithValue("@Month", Month);
            sqlCmd.ExecuteNonQuery();
            SqlDataAdapter sda = new SqlDataAdapter(sqlCmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            Chart2.Series["Series1"].XValueMember = "NetRevenue";
            Chart2.Series["Series1"].YValueMembers = "NetRevenue";
            Chart2.DataSource = dt;
            Chart2.DataBind();
        }

        void DriverChart3()
        {
            con = new SqlConnection(ConnectionString);
            con.Open();
            SqlCommand sqlCmd = new SqlCommand("JobPIEChart", con);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.ExecuteNonQuery();
            SqlDataAdapter sda = new SqlDataAdapter(sqlCmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            Chart3.Series["Series1"].XValueMember = "Type";
            Chart3.Series["Series1"].YValueMembers = "JOBS";
            Chart3.DataSource = dt;
            Chart3.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DriverChart(Convert.ToInt32(cmdYear.SelectedItem.Text), cmbMonth.SelectedItem.Text);
            DriverChart2(Convert.ToInt32(cmbYear2.SelectedItem.Text), cmbmonth2.SelectedItem.Text);
            DriverChart3();
        }

        protected void btnrevenue_Click(object sender, EventArgs e)
        {
            DriverChart2(Convert.ToInt32(cmbYear2.SelectedItem.Text), cmbmonth2.SelectedItem.Text);
            DriverChart(Convert.ToInt32(cmdYear.SelectedItem.Text), cmbMonth.SelectedItem.Text);
            DriverChart3();
        }

        void PopulateGridview()
        {
            try
            {
                DataTable dtbl = new DataTable();
                using (SqlConnection sqlCon = new SqlConnection(ConnectionString))
                {
                    sqlCon.Open();
                    SqlDataAdapter sqlDa = new SqlDataAdapter("select * from RequestedJob where Status='1'", sqlCon);
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
    }
}