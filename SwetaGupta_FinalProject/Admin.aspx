<%@ Page Title="Admin Page - Fashion Merchandising Site" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="SwetaGupta_FinalProject.Admin" %>

<asp:Content ID="Content2" ContentPlaceHolderID="header1" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">


      <div id="main" class="wrapper style1">
				<section class="container ">
					<header class="major">
						<h2>Admin Page</h2>
					</header>
                    </section>

         
                            <%-- GridView  --%>
                         <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" 
                             AutoGenerateColumns="False" DataKeyNames="product_id" 
                             DataSourceID="SqlDataSource1" CssClass="table table-responsive p-5 table-borderless"
                             OnPreRender="GridView1_PreRender" OnRowDeleted="GridView1_RowDeleted" OnRowUpdated="GridView1_RowUpdated"
                             >
                             <Columns>
                               
                                <%-- <asp:BoundField DataField="product_id" HeaderText="product_id" ReadOnly="True" SortExpression="product_id" InsertVisible="False" /> --%>
                               
                                  <asp:TemplateField HeaderText="CATEGORY">
                                    <ItemTemplate>
                                        <asp:Label ID="lblcategory_id" runat="server"
                                        Text='<%# Bind("category_id") %>'></asp:Label>
                                    </ItemTemplate>
                                      <%-- edit template for name  --%>

                                    <EditItemTemplate>

                                       <asp:DropDownList ID="ddlCategoryIDgrid" SelectedValue='<%# Bind("category_id") %>' runat="server" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="category_name" DataValueField="category_id" AutoPostBack="True"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [categories]"></asp:SqlDataSource>
                                         <%-- validation  --%>
                                        <asp:RequiredFieldValidator
                                        ID="rfvGridcategory_id" runat="server"
                                        ControlToValidate="ddlCategoryIDgrid"
                                        Text="*" ErrorMessage="Product Category is a required field."
                                        ValidationGroup="ValidationSummary1" CssClass="text-danger">*</asp:RequiredFieldValidator>
                                    </EditItemTemplate>
                                 </asp:TemplateField>

                                 <asp:TemplateField HeaderText="PRODUCT NAME">
                                    <ItemTemplate>
                                        <asp:Label ID="lblproduct_name" runat="server"
                                        Text='<%# Bind("product_name") %>'></asp:Label>
                                    </ItemTemplate>
                                      <%-- edit template for name  --%>

                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtproduct_name" runat="server"
                                        Text='<%# Bind("product_name") %>'></asp:TextBox>
                                         <%-- validation  --%>
                                        <asp:RequiredFieldValidator
                                        ID="rfvGridproduct_name" runat="server"
                                        ControlToValidate="txtproduct_name"
                                        Text="*" ErrorMessage="Product Name is a required field."
                                        ValidationGroup="ValidationSummary1" CssClass="text-danger">*</asp:RequiredFieldValidator>
                                    </EditItemTemplate>
                                 </asp:TemplateField>

                                  <asp:TemplateField HeaderText="IMAGE">
                                    <ItemTemplate>
                                        <asp:Label ID="lblproduct_image" runat="server"
                                        Text='<%# Bind("product_image") %>'></asp:Label>
                                    </ItemTemplate>
                                      <%-- edit template for name  --%>

                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtproduct_image" runat="server"
                                        Text='<%# Bind("product_image") %>'></asp:TextBox>
                                         <%-- validation  --%>
                                        <asp:RequiredFieldValidator
                                        ID="rfvGridproduct_image" runat="server"
                                        ControlToValidate="txtproduct_image"
                                        Text="*" ErrorMessage="Product Image is a required field."
                                        ValidationGroup="ValidationSummary1" CssClass="text-danger">*</asp:RequiredFieldValidator>
                                        
                                    </EditItemTemplate>
                                 </asp:TemplateField>

                                  <asp:TemplateField HeaderText="PRICE">
                                    <ItemTemplate>
                                        <asp:Label ID="lblproduct_cost" runat="server"
                                        Text='<%# Bind("product_cost") %>'></asp:Label>
                                    </ItemTemplate>
                                      <%-- edit template for name  --%>

                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtproduct_cost" runat="server"
                                        Text='<%# Bind("product_cost") %>'></asp:TextBox>
                                         <%-- validation  --%>
                                        <asp:RequiredFieldValidator
                                        ID="rfvGridproduct_cost" runat="server"
                                        ControlToValidate="txtproduct_cost"
                                        Text="*" ErrorMessage="Product Cost is a required field."
                                        ValidationGroup="ValidationSummary1" CssClass="text-danger">*</asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="revproduct_cost" runat="server" 
                                            ValidationExpression="^\d{0,8}(\.\d{1,4})?$" ControlToValidate="txtproduct_cost" 
                                            Text="*" ErrorMessage="Please add numeric value." CssClass="text-danger"
                                            ValidationGroup="ValidationSummary1"></asp:RegularExpressionValidator>
                                    </EditItemTemplate>
                                 </asp:TemplateField>

                                   <asp:TemplateField HeaderText="SIZES">
                                    <ItemTemplate>
                                        <asp:Label ID="lblavailable_sizes" runat="server"
                                        Text='<%# Bind("available_sizes") %>'></asp:Label>
                                    </ItemTemplate>
                                      <%-- edit template for name  --%>

                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtavailable_sizes" runat="server"
                                        Text='<%# Bind("available_sizes") %>'></asp:TextBox>
                                         <%-- validation  --%>
                                        <asp:RequiredFieldValidator
                                        ID="rfvGridavailable_sizes" runat="server"
                                        ControlToValidate="txtavailable_sizes"
                                        Text="*" ErrorMessage="Product Sizes is a required field."
                                        ValidationGroup="ValidationSummary1" CssClass="text-danger">*</asp:RequiredFieldValidator>
                                    </EditItemTemplate>
                                 </asp:TemplateField>

                                  <asp:TemplateField HeaderText="COLORS">
                                    <ItemTemplate>
                                        <asp:Label ID="lblavaialble_colors" runat="server"
                                        Text='<%# Bind("avaialble_colors") %>'></asp:Label>
                                    </ItemTemplate>
                                      <%-- edit template for name  --%>

                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtavaialble_colors" runat="server"
                                        Text='<%# Bind("avaialble_colors") %>'></asp:TextBox>
                                         <%-- validation  --%>
                                        <asp:RequiredFieldValidator
                                        ID="rfvGridavaialble_colors" runat="server"
                                        ControlToValidate="txtavaialble_colors"
                                        Text="*" ErrorMessage="Product Sizes is a required field."
                                        ValidationGroup="ValidationSummary1" CssClass="text-danger">*</asp:RequiredFieldValidator>
                                    </EditItemTemplate>
                                 </asp:TemplateField>


                                   <asp:TemplateField HeaderText="MATERIAL">
                                    <ItemTemplate>
                                        <asp:Label ID="lblmaterial_information" runat="server"
                                        Text='<%# Bind("material_information") %>'></asp:Label>
                                    </ItemTemplate>
                                      <%-- edit template for name  --%>

                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtmaterial_information" runat="server"
                                        Text='<%# Bind("material_information") %>'></asp:TextBox>
                                         <%-- validation  --%>
                                        <asp:RequiredFieldValidator
                                        ID="rfvGridmaterial_information" runat="server"
                                        ControlToValidate="txtmaterial_information"
                                        Text="*" ErrorMessage="Product Material
                                            Information is a required field."
                                        ValidationGroup="ValidationSummary1" CssClass="text-danger">*</asp:RequiredFieldValidator>
                                    </EditItemTemplate>
                                 </asp:TemplateField>

                                  <asp:TemplateField HeaderText="DESCRIPTION">
                                    <ItemTemplate>
                                        <asp:Label ID="lbldescription" runat="server"
                                        Text='<%# Bind("description") %>'></asp:Label>
                                    </ItemTemplate>
                                      <%-- edit template for name  --%>

                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtdescription" runat="server"
                                        Text='<%# Bind("description") %>'></asp:TextBox>
                                         <%-- validation  --%>
                                        <asp:RequiredFieldValidator
                                        ID="rfvGriddescription" runat="server"
                                        ControlToValidate="txtdescription"
                                        Text="*" ErrorMessage="Product Description is a required field."
                                        ValidationGroup="ValidationSummary1" CssClass="text-danger">*</asp:RequiredFieldValidator>
                                    </EditItemTemplate>
                                 </asp:TemplateField>
                                
                                 <asp:CommandField ShowEditButton="True" ValidationGroup="ValidationSummary1"/>
                                 <asp:CommandField ShowDeleteButton="True" CausesValidation="false" />
                             </Columns>
                         </asp:GridView>
                              
                             <%-- validation summary for grid view errors  --%>
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                                    CssClass="summary text-danger"
                                    HeaderText="Please correct these entries:" ValidationGroup="ValidationSummary1" />

             <%-- label for showing database/concurrency errors  --%>
                                <asp:Label ID="lblGridError" runat="server" Text="" EnableViewState="False" CssClass="text-danger"></asp:Label>
            
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                             DeleteCommand="DELETE FROM [products] WHERE [product_id] = @original_product_id AND [category_id] = @original_category_id AND [product_name] = @original_product_name AND [product_image] = @original_product_image AND [product_cost] = @original_product_cost AND [available_sizes] = @original_available_sizes AND [avaialble_colors] = @original_avaialble_colors AND [material_information] = @original_material_information AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL))" 
                             InsertCommand="INSERT INTO [products] ([category_id], [product_name], [product_image], [product_cost], [available_sizes], [avaialble_colors], [material_information], [description]) VALUES (@category_id, @product_name, @product_image, @product_cost, @available_sizes, @avaialble_colors, @material_information, @description)" OldValuesParameterFormatString="original_{0}"
                             SelectCommand="SELECT * FROM [products] ORDER BY [product_id]" 
                             UpdateCommand="UPDATE [products] SET [category_id] = @category_id, [product_name] = @product_name, [product_image] = @product_image, [product_cost] = @product_cost, [available_sizes] = @available_sizes, [avaialble_colors] = @avaialble_colors, [material_information] = @material_information, [description] = @description WHERE [product_id] = @original_product_id AND [category_id] = @original_category_id AND [product_name] = @original_product_name AND [product_image] = @original_product_image AND [product_cost] = @original_product_cost AND [available_sizes] = @original_available_sizes AND [avaialble_colors] = @original_avaialble_colors AND [material_information] = @original_material_information AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL))">
                             <DeleteParameters>
                                 <asp:Parameter Name="original_product_id" Type="Int32" />
                                 <asp:Parameter Name="original_category_id" Type="Int32" />
                                 <asp:Parameter Name="original_product_name" Type="String" />
                                 <asp:Parameter Name="original_product_image" Type="String" />
                                 <asp:Parameter Name="original_product_cost" Type="Decimal" />
                                 <asp:Parameter Name="original_available_sizes" Type="String" />
                                 <asp:Parameter Name="original_avaialble_colors" Type="String" />
                                 <asp:Parameter Name="original_material_information" Type="String" />
                                 <asp:Parameter Name="original_description" Type="String" />
                             </DeleteParameters>
                             <InsertParameters>
                                 <asp:Parameter Name="category_id" Type="Int32" />
                                 <asp:Parameter Name="product_name" Type="String" />
                                 <asp:Parameter Name="product_image" Type="String" />
                                 <asp:Parameter Name="product_cost" Type="Decimal" />
                                 <asp:Parameter Name="available_sizes" Type="String" />
                                 <asp:Parameter Name="avaialble_colors" Type="String" />
                                 <asp:Parameter Name="material_information" Type="String" />
                                 <asp:Parameter Name="description" Type="String" />
                             </InsertParameters>
                             <UpdateParameters>
                                 <%-- <asp:ControlParameter Name="category_id" ControlId="ddlCategoryIDgrid" PropertyName="SelectedValue"/>--%>
                                  <asp:Parameter Name="category_id" Type="Int32" />
                                 <asp:Parameter Name="product_name" Type="String" />
                                 <asp:Parameter Name="product_image" Type="String" />
                                 <asp:Parameter Name="product_cost" Type="Decimal" />
                                 <asp:Parameter Name="available_sizes" Type="String" />
                                 <asp:Parameter Name="avaialble_colors" Type="String" />
                                 <asp:Parameter Name="material_information" Type="String" />
                                 <asp:Parameter Name="description" Type="String" />
                                 <asp:Parameter Name="original_product_id" Type="Int32" />
                                 <asp:Parameter Name="original_category_id" Type="Int32" />
                                 <asp:Parameter Name="original_product_name" Type="String" />
                                 <asp:Parameter Name="original_product_image" Type="String" />
                                 <asp:Parameter Name="original_product_cost" Type="Decimal" />
                                 <asp:Parameter Name="original_available_sizes" Type="String" />
                                 <asp:Parameter Name="original_avaialble_colors" Type="String" />
                                 <asp:Parameter Name="original_material_information" Type="String" />
                                 <asp:Parameter Name="original_description" Type="String" />
                             </UpdateParameters>
                         </asp:SqlDataSource>
                   
    <div class="container">
                            <div class="form-group">
                                <label class="font-weight-bold text-uppercase">To add a new product, enter product information and click Add Product</label>
                            </div>
                           

                         <div class="form-group">
                                <div class="row">
                                    <div class="col-md-3">
                                        <label for="ddlCategoryID" class="float-left">Category ID:</label>
                                </div>
                                
                                <div class="col-md-5">
                                    
                                    <asp:DropDownList ID="ddlCategoryID" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="category_name" DataValueField="category_id" AutoPostBack="True"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [categories]"></asp:SqlDataSource>
                                </div>
                                <div class="col-md-4">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" 
                                    ControlToValidate="ddlCategoryID" CssClass="text-danger"
                                    ErrorMessage="CategoryID is a required field." Text="* CategoryID is a required field." ValidationGroup="addvalidation">
                                </asp:RequiredFieldValidator>
                                </div>
                                </div>
                                
                            </div>

                         <%-- name field input  --%>
                        <div class="form-group">

                              <div class="row">
                                    <div class="col-md-3">
                                       <label for="txtProductName" class="float-left">Product Name:</label>
                                </div>
                                
                                <div class="col-md-5">
                                     <asp:TextBox ID="txtProductName" runat="server" CssClass="form-control" /> 
                                </div>
                                <div class="col-md-4">
                                       <asp:RequiredFieldValidator ID="rfvProductName" runat="server" Display="Dynamic" 
                                    ControlToValidate="txtProductName" CssClass="text-danger"
                                    ErrorMessage="Product Name is a required field." Text="* Product Name is a required field." ValidationGroup="addvalidation">
                                </asp:RequiredFieldValidator>
                                </div>
                                </div>
                                
                            </div>

                             <%-- image field input  --%>
                           
                       
                        <div class="form-group">

                              <div class="row">
                                    <div class="col-md-3">
                                        <label for="txtProductImage" class="float-left">Product Image:</label>
                                </div>
                                
                                <div class="col-md-5">
                                     <asp:TextBox ID="txtProductImage" runat="server" CssClass="form-control" />   
                                </div>
                                <div class="col-md-4">
                                       <asp:RequiredFieldValidator ID="rfvVersion" runat="server" Display="Dynamic" 
                                    ControlToValidate="txtProductImage" CssClass="text-danger"
                                    ErrorMessage="Product Image is a required field." Text="* Product Image is a required field." ValidationGroup="addvalidation">
                                </asp:RequiredFieldValidator>

                                </div>
                                </div>

                            </div>

                          <div class="form-group">

                              <div class="row">
                                    <div class="col-md-3">
                                        <label for="txtProductCost" class="float-left">Product Cost:</label>
                                </div>
                                
                                <div class="col-md-5">
                                     <asp:TextBox ID="txtProductCost" runat="server" CssClass="form-control" />   
                                </div>
                                <div class="col-md-4">
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" 
                                    ControlToValidate="txtProductCost" CssClass="text-danger"
                                    ErrorMessage="Product Cost is a required field." Text="* Product Cost is a required field." ValidationGroup="addvalidation">
                                </asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ValidationExpression="^[^-][0-9]$" ID="revtxtProductCost"  ValidationGroup="addvalidation" runat="server" ErrorMessage="Enter Only Numeric Value." ControlToValidate="txtProductCost" Text="* Enter Only Numeric Value"></asp:RegularExpressionValidator>

                                </div>
                                </div>

                            </div>

                         <div class="form-group">

                              <div class="row">
                                    <div class="col-md-3">
                                        <label for="txtAvaialbleSizes" class="float-left">Available Sizes:</label>
                                </div>
                                
                                <div class="col-md-5">
                                     <asp:TextBox ID="txtAvaialbleSizes" runat="server" CssClass="form-control" />   
                                </div>
                                <div class="col-md-4">
                                       <asp:RequiredFieldValidator ID="rfvtxtAvaialbleSizes" runat="server" Display="Dynamic" 
                                    ControlToValidate="txtAvaialbleSizes" CssClass="text-danger"
                                    ErrorMessage="Available Sizes is a required field." Text="* Available Sizes is a required field." ValidationGroup="addvalidation">
                                </asp:RequiredFieldValidator>

                                </div>
                                </div>

                            </div>

                          <div class="form-group">

                              <div class="row">
                                    <div class="col-md-3">
                                        <label for="txtAvaialbleColors" class="float-left">Available Colors:</label>
                                </div>
                                
                                <div class="col-md-5">
                                     <asp:TextBox ID="txtAvaialbleColors" runat="server" CssClass="form-control" />   
                                </div>
                                <div class="col-md-4">
                                       <asp:RequiredFieldValidator ID="rfvtxtAvaialbleColors" runat="server" Display="Dynamic" 
                                    ControlToValidate="txtAvaialbleColors" CssClass="text-danger"
                                    ErrorMessage="Available Colors is a required field." Text="* Available Colors is a required field." ValidationGroup="addvalidation">
                                </asp:RequiredFieldValidator>

                                </div>
                                </div>

                            </div>

                         <div class="form-group">

                              <div class="row">
                                    <div class="col-md-3">
                                        <label for="txtMaterialInfo" class="float-left">Material Information:</label>
                                </div>
                                
                                <div class="col-md-5">
                                     <asp:TextBox ID="txtMaterialInfo" runat="server" CssClass="form-control" />   
                                </div>
                                <div class="col-md-4">
                                       <asp:RequiredFieldValidator ID="rfvMaterialInformation" runat="server" Display="Dynamic" 
                                    ControlToValidate="txtMaterialInfo" CssClass="text-danger"
                                    ErrorMessage="Material Information is a required field." Text="* Material Information is a required field." ValidationGroup="addvalidation">
                                </asp:RequiredFieldValidator>

                                </div>
                                </div>

                            </div>

                        
                         <div class="form-group">

                              <div class="row">
                                    <div class="col-md-3">
                                        <label for="txtProductDesc" class="float-left">Product Description:</label>
                                </div>
                                
                                <div class="col-md-5">
                                     <asp:TextBox ID="txtProductDesc" runat="server" CssClass="form-control" />   
                                </div>
                                <div class="col-md-4">
                                       <asp:RequiredFieldValidator ID="rfvtxtProductDesc" runat="server" Display="Dynamic" 
                                    ControlToValidate="txtProductDesc" CssClass="text-danger"
                                    ErrorMessage=" Product Description is a required field." Text="* Product Description is a required field."  ValidationGroup="addvalidation">
                                </asp:RequiredFieldValidator>

                                </div>
                                </div>

                            </div>
                       
                       
                        

                            
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-3">

                                    </div>
                                    <div class="col-md-5">
                                    <asp:LinkButton ID="btnAddProduct" runat="server" Text="Add Product" OnClick="btnAddProduct_Click" CssClass="btn btn-primary underline-none p-2" ValidationGroup="addvalidation"/>  <%-- add product button  --%>
                                    </div>

                                    <asp:Label ID="lblAddError" runat="server" EnableViewState="False"></asp:Label>  <%-- label for displaying database/concurrency errors  --%>
                                </div>
                                
                                
                            </div>
                     </div>
          

         </div>
</asp:Content>

