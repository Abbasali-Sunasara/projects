using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library
{
    public partial class Books : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void isubtn_Click(object sender, EventArgs e)
        {
           
        }

        protected void rtnbtn_Click(object sender, EventArgs e)
        {

           
        }

        protected void ibtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Issuebook.aspx");
        }

        protected void rbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Returnbook.aspx");
        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Records.aspx");
        }
    }
}