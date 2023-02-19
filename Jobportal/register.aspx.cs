using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Jobportal
{
    public partial class register : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signup_Click(object sender, EventArgs e)
        {
            if (validateForm() & checkEmail())
            {
                SqlConnection conn = new SqlConnection(strcon);
                conn.Open();

                SqlCommand cmd = new SqlCommand("insert into registration_tbl (name,email,password) values (@name,@email,@password)", conn);
                cmd.Parameters.AddWithValue("@name", name.Value);
                cmd.Parameters.AddWithValue("@email", email.Value);
                cmd.Parameters.AddWithValue("@password", pass.Value);

                cmd.ExecuteNonQuery();

                conn.Close();
                Response.Redirect("login.aspx");
            }
           

        }

        private bool checkEmail()
        {
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();

            SqlCommand cmd = new SqlCommand("select email from registration_tbl", conn);
            cmd.ExecuteNonQuery();

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (email.Value.Equals(dr["email"].ToString()))
                {
                    Response.Write("<script>alert('This email address is already registered!!'); </script>");
                   
                    return false;
                }
            }
            conn.Close();
         return true;


        }

        private bool validateForm()
        {
            if (name.Value == "")
            {
                Label1.Text = "*Name field cannot be empty!!";
                Label1.ForeColor=System.Drawing.Color.Red;
                return false;
            }else if (email.Value == "" )
            {
                Label1.Text = "*Email field cannot be empty!!";
                Label1.ForeColor = System.Drawing.Color.Red;
                return false;
            }
            else if (pass.Value.Length < 4)
            {
                Label1.Text = "*Password cannot be lass than 3 characters!!";
                Label1.ForeColor = System.Drawing.Color.Red;
                return false;
            }else if(pass.Value != re_pass.Value)
            {
                Label1.Text = "Password and Re-password are not same !!";
                Label1.ForeColor = System.Drawing.Color.Red;
                return false;
            }

            return true;
        }
    }
}