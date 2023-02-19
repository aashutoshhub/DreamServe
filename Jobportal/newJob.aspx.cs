using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Jobportal
{
    public partial class newJob : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            
        }

        protected void btnPost_Click(object sender, EventArgs e)
        {
            //if (!companyImage.HasFile)
            //{
            //    Label1.Text = "Please Select image file";
            //}
            //else
            //{
                //int length = companyImage.PostedFile.ContentLength;
                //byte[] pic = new byte[length];

                //companyImage.PostedFile.InputStream.Read(pic, 0, length);

              
                    //button post 
                    SqlConnection conn = new SqlConnection(strcon);
                    conn.Open();

                    SqlCommand cmd = new SqlCommand("insert into jobList_tbl (company_name,job_title,apply_link,description,last_date,company_image) " +
                        "values (@company_name,@job_title,@apply_link,@description,@last_date,@company_image)", conn);
                    cmd.Parameters.AddWithValue("@company_name", companyName.Text.ToString());
                    cmd.Parameters.AddWithValue("@job_title", jobTitle.Text.ToString());
                    cmd.Parameters.AddWithValue("@apply_link", applyLink.Text.ToString());
                    cmd.Parameters.AddWithValue("@description", txtDescription.Value.ToString());
                    cmd.Parameters.AddWithValue("@last_date", inputDate.Value.ToString());
                    cmd.Parameters.AddWithValue("@company_image", companyImage.Text.ToString());

                 int t= cmd.ExecuteNonQuery();


                if (t > 0)
                {
                    Response.Write("<script>alert('Data has submitted successfully')</script>");
                }

                conn.Close();
               
               

               // Label1.Text = "image Uploaded successfull";
                

             //}

           
        }
    }
}