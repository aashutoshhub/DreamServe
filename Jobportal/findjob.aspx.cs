using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Jobportal
{
    public partial class findjob : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            jobDataModel();
            
        }



        private void jobDataModel()
        {
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();

          
            SqlCommand cmd = new SqlCommand("select top(20) * from jobList_tbl order by jobID desc", conn);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);

            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }





    }
}