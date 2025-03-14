using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Library
{
    public partial class userslist : System.Web.UI.Page
    {
    
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|Library.mdf;Integrated Security=True;User Instance=True");
    
    
    
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void deletebtn_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("  delete from regtbl where id like'" + deluserid.Text + "%'", con);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);

           //usergv.DataSource = ds;
            usergv.DataBind();

            
          deluserid.Text = "USER DELETED!";
        
        
        
        }

     
    }
}