using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Library
{
    public partial class Issuebook : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|Library.mdf;Integrated Security=True;User Instance=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void issue_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO Issuebk values  ('" + stdname.Text + "', '" + bookid.Text + "', '" + bkname.Text + "', '" + athrname.Text + "', '" + idate.Text + "', '" + contact.Text + "')", con);

            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();

            Response.Write(" insert successfull!!");
        }
    }
}