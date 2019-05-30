using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SwetaGupta_FinalProject
{
    public partial class Cart : System.Web.UI.Page
    {

        
        protected void Page_Load(object sender, EventArgs e)
        {
                GridView1.DataSource = (DataTable)Session["cartsaved"];
                GridView1.DataBind();
            
        }

      
        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
           
            if(Session["loggedIn"] == null)
            {
                Response.Redirect("/Login");
            }
            else
            {
                Session["cartsaved"] = null;
                Response.Redirect("/OrderPlaced");
                
            }
            


        }
    }
}