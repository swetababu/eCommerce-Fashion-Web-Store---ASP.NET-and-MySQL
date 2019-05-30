<%--  
    Final Project - Fashion Merchandising Site
    Date Started - 13th July 2018
    Created By - Sweta Gupta (8252397)    
--%>

<%@ Page Title="Home - Fashion Merchandising Site" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SwetaGupta_FinalProject.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="header2" runat="server">
         </asp:Content>
    
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">

 

                   <!-- product range -->
			<div class="wrapper style2" id="main">
				<section class="container">
					<header class="major">
						<h2>Our Wide Range</h2>
						<span class="byline">FLAT 60% OFF ON YOUR FAVOURITE STYLES</span>
					</header>
					<div class="row no-collapse-1">
						<section class="4u">
							<a href="/Dresses" class="image feature"><img src="images/pic02.jpg" alt=""></a>
							<p>DRESSES - Everything you need.. from casual to cocktail parties</p>
                            <a href="/Dresses" class="font-weight-bold text-uppercase" style="text-decoration:none">View Range</a>
						</section>
						<section class="4u">
							<a href="/Tops" class="image feature"><img src="images/pic03.jpg" alt=""></a>
							<p>Tops - Browse our range from crop tops to formals, everything under one section</p>
                            <a href="/Tops" class="font-weight-bold text-uppercase" style="text-decoration:none">View Range</a>
						</section>
						<section class="4u">
							<a href="/Bottoms" class="image feature"><img src="images/pic04.jpg" alt=""></a>
							<p>Bottoms - Explore the best of trousers for every occasion and place</p>
                            <a href="/Bottoms" class="font-weight-bold text-uppercase" style="text-decoration:none">View Range</a>
						</section>
	
					</div>
				</section>
			</div>

		

     </asp:Content>