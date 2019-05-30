<%@ Page Title="Product Details - Fashion Merchandising Site" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="SwetaGupta_FinalProject.ProductDetail" %>

<asp:Content ID="Content2" ContentPlaceHolderID="header1" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">

     <div id="main" class="wrapper style1">
				<section class="container ">
					<header class="major">
						<h2>Product Details</h2>
                        <h3><a href="javascript:history.go(-1)" class="underline-none text-primary"><i class="fa fa-backward"></i> Go Back To Product Listing Page</a></h3>
					</header>
                </section>

            <div class="container">

                             <div class="card">
	                            <div class="row">
		                            <aside class="col-sm-5 border-right">
                            <article class="gallery-wrap"> 
                            <div class="img-big-wrap">
                              <div> <a href="#`">
                                  <asp:Image ID="imgProduct" runat="server" CssClass="w-100 h-auto"/>
                                  </a></div>
                            </div> <!-- slider-product.// -->
                           
                            </article> <!-- gallery-wrap .end// -->
		                            </aside>
		                            <aside class="col-sm-7">
                            <article class="card-body p-5">
	                            <h3 class="title mb-3">
                                    <asp:Label ID="lblProductName" runat="server" Text=""></asp:Label></h3>

                            <p class="price-detail-wrap"> 
	                            <span class="price h3 text-warning"> 
		                            <span class="currency">CAD $</span><span class="num"><asp:Label ID="lblProductPrice" runat="server" Text=""></asp:Label></span>
	                            </span> 
	                           
                            </p> <!-- price-detail-wrap .// -->
                            <dl class="item-property">
                              <dt class="font-weight-bold text-uppercase">Description</dt>
                              <dd><p> <asp:Label ID="lblDescription" runat="server" Text=""></asp:Label></p></dd>
                            </dl>

                                <dl class="item-property">
                              <dt class="font-weight-bold text-uppercase">Material Info</dt>
                              <dd><p> <asp:Label ID="lblMaterialInfo" runat="server" Text=""></asp:Label></p></dd>
                            </dl>

                            <hr>
                               <div class="row">
		                            <div class="col-sm-4">
			                            <dl class="param param-inline">
			                              <dt class="font-weight-bold text-uppercase">Size: </dt>
			                              <dd>
                                              <asp:DropDownList ID="ddlProductSize" runat="server" CssClass="form-control form-control-sm"></asp:DropDownList>

			                              </dd>
			                            </dl>  <!-- item-property .// -->
		                            </div> <!-- col.// -->

                                   <div class="col-sm-4">
			                            <dl class="param param-inline">
			                              <dt class="font-weight-bold text-uppercase">Color: </dt>
			                              <dd>
			  	                             <asp:DropDownList ID="ddlProductColor" runat="server" CssClass="form-control form-control-sm"></asp:DropDownList>
			                              </dd>
			                            </dl>  <!-- item-property .// -->
		                            </div> <!-- col.// -->

                                   <div class="col-sm-8">
			                            <dl class="param param-inline">
			                              <dt class="font-weight-bold text-uppercase">Quantity: </dt>
			                              <dd>
                                              
                                              <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control form-control-sm"></asp:TextBox> <br />
			  	                             <asp:RequiredFieldValidator ID="rfvQuantity" ControlToValidate="txtQuantity" runat="server" ErrorMessage="Quantity cannot be blank *" CssClass="text-danger" Text="Quantity cannot be blank"></asp:RequiredFieldValidator><br />
                                              <asp:RegularExpressionValidator ID="revQuantity" ValidationExpression="[1-9]+" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Enter Only Numeric Value" CssClass="text-danger"></asp:RegularExpressionValidator>
			                              </dd>
			                            </dl>  <!-- item-property .// -->
		                            </div> <!-- col.// -->
                                   <div class="col-sm-6">
                                       <asp:Button ID="txtAdToCart" CssClass="btn btn-lg btn-primary underline-none text-uppercase" OnClick="txtAddToCart_Click" runat="server" Text="Add to cart" />
                                       
                                      <%-- <asp:HyperLink ID="AddToCart" runat="server" NavigateUrl="/Cart" CssClass="btn btn-lg btn-primary underline-none text-uppercase"><i class="fa fa-shopping-cart"></i> 
                                           Add to cart</asp:HyperLink>--%>
                                    
                                       </div>
		                   </div>
	                            <hr>
	                           
                            </article> <!-- card-body.// -->
		                            </aside> <!-- col.// -->
	                            </div> <!-- row.// -->
                            </div> <!-- card.// -->


                            </div>
                            <!--container.//-->

         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>


            </div>


         
</asp:Content>

