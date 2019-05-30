<%@ Page Title="Shopping Cart - Fashion Merchandising Site" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="SwetaGupta_FinalProject.Cart" %>

<asp:Content ID="Content2" ContentPlaceHolderID="header1" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">

     <div id="main" class="wrapper style1">
				<section class="container">
					<header class="major">
						<h2>Your Shopping Cart <i class="fa fa-shopping-cart"></i></h2>
					</header>
                </section>

         <div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-12 col-md-offset-1">


             
            <asp:GridView ID="GridView1" AutoGenerateColumns="false" runat="server" CssClass="table table-responsive table-light">
                <Columns>
                   <%-- data displayed in cart --%>
                    <asp:TemplateField HeaderText="Product Image">

                        <ItemTemplate >
                            <asp:Image ID="ProductImg" CssClass="img-thumbnail w-25" runat="server" ImageUrl=<%# "/Images/products/" +  Eval("[product_image]") %>/>
                         </ItemTemplate>
  </asp:TemplateField>
             
                     
                         <asp:TemplateField HeaderText="Product Name">
                            <ItemTemplate>
                                <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                             </ItemTemplate>
                          </asp:TemplateField>

                         <asp:TemplateField HeaderText="Size">
                        <ItemTemplate>
                            <asp:Label ID="lblProductSize" runat="server" Text='<%# Eval("ProductSize") %>'></asp:Label>
                         </ItemTemplate>
                             </asp:TemplateField>

                              <asp:TemplateField HeaderText="Color">
                        <ItemTemplate>
                            <asp:Label ID="lblProductColor" runat="server" Text='<%# Eval("ProductColor") %>'></asp:Label>
                         </ItemTemplate>
                             </asp:TemplateField>

                                   <asp:TemplateField HeaderText="Quantity">
                        <ItemTemplate>
                            <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("ProductQuantity") %>'></asp:Label>
                         </ItemTemplate>
                                 </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Price">
                         <ItemTemplate>
                            <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("ProductPrice") %>'></asp:Label>
                         </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

            </asp:GridView>
          
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>


            <asp:Button ID="btnContinueShipping" PostBackUrl="javascript:history.go(-2)" runat="server" Text="Continue Shopping" CssClass="btn btn-primary p-3" /> <%--redirect to product listing page --%>
            <asp:Button ID="btnCheckOut" OnClick="btnCheckOut_Click" runat="server" Text="CheckOut" CssClass="btn btn-primary p-3"/>


    </div>
</div>
</div>
         </div>
</asp:Content>

