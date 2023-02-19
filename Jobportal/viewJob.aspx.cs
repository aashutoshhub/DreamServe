using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jobportal
{
    public partial class viewJob : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {



            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();  //jobID,company_name,job_title,apply_link,description,last_date,company_image

            SqlCommand cmd = new SqlCommand("select * from jobList_tbl ", conn);

            //SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //sda.Fill(ds);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows == true)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }

            //GridView1.DataSource = ds.Tables[0];








            //if (!this.IsPostBack)
            //{
            //    //Populating a DataTable from database.
            //    DataTable dt = this.GetData();

            //    //Building an HTML string.
            //    StringBuilder html = new StringBuilder();


            //    //Table start.
            //    html.Append("<table border = '1'>");

            //    //Building the Header row.
            //    html.Append("<tr>");
            //    foreach (DataColumn column in dt.Columns)
            //    {
            //        html.Append("<th>");
            //        html.Append(column.ColumnName);
            //        html.Append("</th>");
            //    }
            //    html.Append("<th>");
            //    html.Append("Action");
            //    html.Append("</th>");

            //    html.Append("</tr>");


            //    //Building the Data rows.
            //    foreach (DataRow row in dt.Rows)
            //    {
            //        html.Append("<tr>");
            //        foreach (DataColumn column in dt.Columns)
            //        {
            //            html.Append("<td>");
            //            html.Append(row[column.ColumnName]);
            //            html.Append("</td>");
            //        }

            //        html.Append("<td>");
            //        html.Append("<Button id='btnUpdate' runat='server' >Update</Button>");
            //        html.Append("<Button id='btnDelete' runat='server' >Delete</Button>");
            //        html.Append("</td>");

            //        html.Append("</tr>");
            //    }

            //    //Table end.
            //    html.Append("</table>");


            //    //Append the HTML string to Placeholder.
            //   PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });


            // }




        }

        //private DataTable GetData()
        //{
        //    SqlConnection conn = new SqlConnection(strcon);
        //    conn.Open();

        //    SqlCommand cmd = new SqlCommand("select company_name,job_title,apply_link,description,last_date,company_image from newJob ", conn);

        //    SqlDataAdapter sda = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    sda.Fill(dt);

        //    return dt;
        //}
    }
}