using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SwetaGupta_FinalProject
{
    public partial class ProductDetail : System.Web.UI.Page
    {
        // create dataview and datarowview to store values
        DataView productDetails;
        DataRowView productRow;
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            // add values to pagefrom database
            int productID = Convert.ToInt32(Request.QueryString["productId"]);
            string productSize;
            string productColors;

            productDetails = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            productDetails.RowFilter = "product_id = '" + productID + "'";

            productRow = productDetails[0];

            lblProductName.Text = productRow["product_name"].ToString();
            lblProductPrice.Text = productRow["product_cost"].ToString().Substring(0, 5);
            lblMaterialInfo.Text = productRow["material_information"].ToString();
            lblDescription.Text = productRow["description"].ToString();
            imgProduct.ImageUrl = "Images/products/" + productRow["product_image"].ToString();

            productSize = productRow["available_sizes"].ToString();
            productColors = productRow["avaialble_colors"].ToString();
            // arrays for size and colors
            ArrayList productSizeArray = new ArrayList();
            productSizeArray.AddRange(productSize.Split(' '));
            for (int i = 0; i < productSizeArray.Count; i++)
            {
                ddlProductSize.Items.Insert(i, new ListItem(productSizeArray[i].ToString(), productSizeArray[i].ToString()));
            }

            ArrayList productColorArray = new ArrayList();
            productColorArray.AddRange(productColors.Split(' '));
            for (int i = 0; i < productColorArray.Count; i++)
            {
                ddlProductColor.Items.Insert(i, new ListItem(productColorArray[i].ToString(), productColorArray[i].ToString()));
            }



        }

        protected void txtAddToCart_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                DataTable productCart;
                // pass valuesto cartpage
                if (Session["cartsaved"] == null)
                {
                    productCart = new DataTable();
                    productCart.Columns.Add(new DataColumn("product_image"));
                    productCart.Columns.Add(new DataColumn("ProductName"));
                    productCart.Columns.Add(new DataColumn("ProductSize"));
                    productCart.Columns.Add(new DataColumn("ProductColor"));
                    productCart.Columns.Add(new DataColumn("ProductQuantity"));
                    productCart.Columns.Add(new DataColumn("ProductPrice"));
                }
                else
                {
                    productCart = (DataTable)Session["cartsaved"];
                }
                string add = "true";
                foreach(DataRow dr in productCart.Rows)
                {
                    if(dr["ProductName"].ToString() == lblProductName.Text)
                    {
                        add = "false";
                    }
                }
                if (add == "true")
                {
                    productCart.Rows.Add(productRow["product_image"].ToString(), lblProductName.Text, ddlProductSize.SelectedItem.Value, ddlProductColor.SelectedItem.Value, txtQuantity.Text, lblProductPrice.Text);
                    Session["cartsaved"] = productCart;
                    Response.Redirect("/Cart");
                }
               
            }
        }

        
    }
}