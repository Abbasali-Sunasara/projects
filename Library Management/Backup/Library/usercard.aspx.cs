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
    public partial class usercard : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|Library.mdf;Integrated Security=True;User Instance=True"); 
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void seachbtn_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand(" select * from regtbl where id like'" + srcuserid.Text + "%'", con);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);

            useriddv.DataSource = ds;
            useriddv.DataBind();
        }

      
    }
}