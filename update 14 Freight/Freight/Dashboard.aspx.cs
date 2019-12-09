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

        protected void Button1_Click(object sender, EventArgs e)
        {
            DriverChart(Convert.ToInt32(cmdYear.SelectedItem.Text), cmbMonth.SelectedItem.Text);
        }
    }
}