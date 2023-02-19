using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Jobportal
{
    public partial class login : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signin_Click(object sender, EventArgs e)
        {
            if (validateForm())
            {
                SqlConnection conn = new SqlConnection(strcon);
                conn.Open();

                SqlCommand cmd = new SqlCommand("select * from registration_tbl where email=@email and password=@password;", conn);

                cmd.Parameters.AddWithValue("@email", email.Value);
                cmd.Parameters.AddWithValue("@password", pass.Value);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);

                cmd.ExecuteNonQuery();

                conn.Close();

                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    var adminEmail = dr["email"].ToString();
                    var adminPassword = dr["password"].ToString();
                    if(adminEmail == "admin@gmail.com" & adminPassword=="adminadmin") {
                        Response.Redirect("Dboard.aspx");
                    }
                    else
                    {
                        Response.Redirect("home.aspx");
                    }
                }

                //if (dt.Rows.Count > 0)
                //{
                //    Response.Redirect("home.aspx");
                //}
                //else
                //{
                //    // Response.Write("<script>alert('Invalid Credentials'); </script>");
                //    email.Value = "";
                //    pass.Value = "";
                //    Label1.Text = "Invalid Credentials!!";
                //    Label1.ForeColor = System.Drawing.Color.Red;
                //}
            }
            

        }

        private bool validateForm()
        {
             if (email.Value == "")
            {
                Label1.Text = "*Email field cannot be empty!!";
                Label1.ForeColor = System.Drawing.Color.Red;
                return false;
            }
            else if (pass.Value == "")
            {
                Label1.Text = "*Password field cannot be empty";
                Label1.ForeColor = System.Drawing.Color.Red;
                return false;
            }
          
            return true;
        }
    }
}