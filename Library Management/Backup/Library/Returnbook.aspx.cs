using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Library
{
    public partial class Returnbook : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|Library.mdf;Integrated Security=True;User Instance=True");
        
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void returnbk_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("INSERT INTO Returnbk values  ('" + stdname.Text + "', '" + bookid.Text + "', '" + bookname.Text + "', '" + athrname.Text + "', '" + rdate.Text + "' )", con);

            con.Open();
            cmd.ExecuteNonQuery();
           
           

            SqlCommand cmd1 = new SqlCommand("Delete from Issuebk where Book_id='" + bookid.Text + "'", con);
            cmd1.ExecuteNonQuery();

            con.Close();

            Response.Write(" return successfull!!");
        
        }
    }
}