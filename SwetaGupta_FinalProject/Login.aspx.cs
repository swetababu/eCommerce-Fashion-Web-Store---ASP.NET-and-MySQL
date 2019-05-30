using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SwetaGupta_FinalProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            // check if the user is logged in or not
            if (Request.QueryString["action"] == "logout")
            {
                Session["loggedIn"] = null;
            }

            // check if the user is logged in or not
            if (Session["loggedIn"] != null)
            {
                Response.Redirect("/Cart");
            }
            txtUserName.Focus(); // set focus on textbox
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // if user is not logged in
            if(Session["loggedIn"] == null)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from users where email_address =@email_address and Password=@password", con);
                cmd.Parameters.AddWithValue("@email_address", txtUserName.Text);
                cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)

                {
                    Session["loggedIn"] = true; // set session to true if login is successful
                    Response.Redirect("/Cart"); //redirect to cart page

                }

                else

                {

                    lblError.Visible = true;
                    lblError.Text = "Incorrect user name or password! Please try again."; // if login fails
                    txtUserName.Focus();
                }
            }
           
        }
    }
}