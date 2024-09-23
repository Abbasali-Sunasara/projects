using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void events_Click(object sender, EventArgs e)
        {
            events.Text = "NO UPCOMING EVENTS AT THIS TIME !!";
        }
    }
}