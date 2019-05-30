<%@ Page Title="Bottoms - Fashion Merchandising Hub" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Dresses.aspx.cs" Inherits="SwetaGupta_FinalProject.Dresses" %>

<asp:Content ID="Content2" ContentPlaceHolderID="header1" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">

      <div id="main" class="wrapper style1">
				<section class="container ">
					<header class="major">
						<h2>BOTTOMS</h2>
						<span class="byline">From Denim To Cotton <i class="fa fa-heart"></i></span> 
					</header>
                </section>

          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              SelectCommand="SELECT * FROM [products] WHERE ([category_id] = @category_id) ORDER BY [product_id]">
              <SelectParameters>
                  <asp:Parameter DefaultValue="3" Name="category_id" Type="Int32" />
              </SelectParameters>
                </asp:SqlDataSource>

            <div class="container">
	<div class="row">

        
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div class="col-sm-4">
                    <article class="col-item">
                        <%-- display data from database  --%>
                        <div class="photo">
                              <img src='/Images/products/<%# Eval("product_image") %>' 
                            alt='<%# Eval("product_name") %>' class="img-responsive" />
                        </div>


                        <div class="info">
        			<div class="row">
        				<div class="price-details col-md-12">
        					<h1><%# Eval("product_name") %></h1>
                            <p>
                                <br />
                               
                                <span class="price-new"><%# Eval("product_cost","{0:c}") %></span> <br />
                                <strong>Sizes: </strong> <%# Eval("available_sizes") %> <br />
                                <strong>Colors:</strong> <%# Eval("avaialble_colors") %> <br />
                                <strong>Material Info:</strong> <br /> <%# Eval("material_information") %>
                                  

                            </p>
        					

        				</div>
        			</div>
                            <%--buy now button which redirects to product detail page --%>
        			<div class="separator clear-left">
        				<p class="btn-add">
        					<asp:HyperLink NavigateUrl=' <%# "~/ProductDetail?productId=" + Eval("product_id") %>' runat="server"> <i class="fa fa-shopping-cart"></i> BUY NOW </asp:HyperLink>
        				</p>
        			</div>
        			<div class="clearfix"></div>
        		</div>


                    </article>

                   
                </div>
            </ItemTemplate>
        </asp:Repeater>
    
     
	</div>
</div>

         </div>

</asp:Content>

