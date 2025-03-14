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
    public partial class Records : System.Web.UI.Page
    
    {


        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|Library.mdf;Integrated Security=True;User Instance=True");
            
       
        
        
        protected void Page_Load(object sender, EventArgs e)
        {

           
            
            SqlCommand cmd = new SqlCommand("select *  from Issuebk  ", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet dt = new DataSet();
            sda.Fill(dt);
         //  issuerecords.DataSource = dt;
           issuerecords.DataBind();


           SqlCommand cmd2 = new SqlCommand("select *  from Returnbk  ", con);
           SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
           DataSet dt2 = new DataSet();
           sda2.Fill(dt2);
           //  returnrecords.DataSource = dt;
           //returnrecords.DataBind();



        }

        protected void issuerecords_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void issuerecords_SelectedIndexChanged1(object sender, EventArgs e)
        {






        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       
    }
}