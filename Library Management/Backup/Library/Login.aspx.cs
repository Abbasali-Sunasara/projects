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

        protected void loginbtn_Click(object sender, EventArgs e)
        {

            if (Email.Text == "Admin" && Password.Text == "1234")
            {

                Response.Redirect("Records.aspx");

            }
            else
            {

                Email.Text = "";
                Password.Text = "";
                loginbtn.Text = "USERNAME OR PASSWORD INCORRECT";
            
            }
            
        }

        protected void userlistbtn_Click(object sender, EventArgs e)
        {



            if (Email.Text == "Admin" && Password.Text == "1234")
            {

                Response.Redirect("userslist.aspx");

            }
            else
            {

                Email.Text = "";
                Password.Text = "";
                userlistbtn.Text = "USERNAME OR PASSWORD INCORRECT";
            }


        }
    }

}