using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SwetaGupta_FinalProject
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None; // setting for validations
        }

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            if (IsValid) // check for isValid
            {
                var parameters = SqlDataSource1.InsertParameters; // parameters from SQL Data Source Insert
                // assign parameter values from text-box values
               //  parameters["product_id"].DefaultValue =  txtProductID.Text;
                parameters["category_id"].DefaultValue = ddlCategoryID.SelectedItem.Value;
                parameters["product_name"].DefaultValue = txtProductName.Text;
                parameters["product_image"].DefaultValue = txtProductImage.Text;
                parameters["product_cost"].DefaultValue = txtProductCost.Text;
                parameters["available_sizes"].DefaultValue = txtAvaialbleSizes.Text;
                parameters["avaialble_colors"].DefaultValue = txtAvaialbleColors.Text;
                parameters["material_information"].DefaultValue = txtMaterialInfo.Text;
                parameters["description"].DefaultValue = txtProductDesc.Text;
                // try - catch block for exception handling
                try
                {
                    SqlDataSource1.Insert(); // call insert method
                    // setting text-box to blank
                    txtProductName.Text = "";
                    txtProductImage.Text = "";
                    txtProductCost.Text = "";
                    txtAvaialbleSizes.Text = "";
                    txtAvaialbleColors.Text = "";
                    txtMaterialInfo.Text = "";
                    txtProductDesc.Text = "";
                    // focus on text-box after insertion is successful
                    txtProductName.Focus();
                }
                catch (Exception ex)
                {
                    // display error is the insertion is not successful
                    lblAddError.Text = "There was an error in adding the product. " + ex.Message;
                }
            }
        }

        protected void GridView1_PreRender(object sender, EventArgs e)
        {
            GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        // handle exception if error occurs when row is updated
        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            if (e.Exception != null) // check for exception
            {
                lblGridError.Text = DatabaseErrorMessage(e.Exception.Message); // method to assign label text to error message
                e.ExceptionHandled = true;
                e.KeepInEditMode = true;
            }
            else if (e.AffectedRows == 0) // check for concurrency error
            {
                lblGridError.Text = ConcurrencyErrorMessage(); // assign label text to error message
            }
        }

        // handle exception if error occurs when row is deleted
        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            if (e.Exception != null)
            {
                lblGridError.Text = DatabaseErrorMessage(e.Exception.Message); // method to assign label text to error message
                e.ExceptionHandled = true;
            }
            else if (e.AffectedRows == 0) // check for concurrency error
            {
                lblGridError.Text = ConcurrencyErrorMessage(); // assign label text to error message
            }
        }
        // method definition for label error message display id any database error occurs
        private string DatabaseErrorMessage(string errorMsg)
        {
            return $"<b>A database error has occurred:</b> {errorMsg}"; // display error message if any database error occurs
        }
        // method definition for label error message display id any concurrency error occurs
        private string ConcurrencyErrorMessage()
        {
            return "Another user may have updated that category. " +
            "Please try again"; // display error message if any concurrency error occurs
        }
    }
}