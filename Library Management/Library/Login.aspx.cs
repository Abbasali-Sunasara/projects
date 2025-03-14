using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void userlistbtn_Click(object sender, EventArgs e)
        {



            if (Email.Text == "Admin" && Password.Text == "1234")
            {

                Response.Redirect("userslist.aspx");

            }
            else
            {

                Email.Text = null;
                Password.Text = null;
                userlistbtn.Text = "USERNAME OR PASSWORD INCORRECT";
            }


        }
    }

}