using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Library
{
    public partial class Register : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|Library.mdf;Integrated Security=True;User Instance=True");
      
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registerbtn_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO regtbl values  ('" + fname.Text + "', '" + lname.Text + "', '" + email.Text + "', '" + pincode.Text + "', '" + address.Text + "', '" + validdate.Text + "')", con);

            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();

            registerbtn.Text = "USER REGISTERED !";
            //Response.Write(" insert successfull!!");

            fname.Text="";
            lname.Text = "";
            email.Text = "";
            pincode.Text = "";
            address.Text = "";
            validdate.Text = "";

        
        
        }


       
    }
}