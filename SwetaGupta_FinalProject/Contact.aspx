<%--  
    Final Project - Fashion Merchandising Site
    Date Started - 13th July 2018
    Created By - Sweta Gupta (8252397)    
--%>

<%@ Page Title="Contac Us - Fashion Merchandising Site" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SwetaGupta_FinalProject.Contact" %>

<asp:Content ID="Content2" ContentPlaceHolderID="header1" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">
    <div id="main" class="wrapper style1">
				<section class="container ">
					<header class="major">
						<h2>Get in touch with US <i class="fa fa-smile-o"></i></h2>
						<span class="byline">Happy to help..</span>
					</header>

                    <div class="row jumbotron jumbotron-sm">
                        
                        <div class="col-md-8">
            <div class="well well-sm">
                
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                <i class="fa fa-user"></i> Name</label>
                            <input type="text" class="form-control" id="name" placeholder="Enter name" required="required" />
                        </div>
                        <div class="form-group">
                            <label for="email">
                                <i class="fa fa-envelope"></i> Email Address</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                </span>
                                <input type="email" class="form-control" id="email" placeholder="Enter email" required="required" /></div>
                        </div>
                        <div class="form-group">
                            <label for="subject">
                                <i class="fa fa-edit"></i> Subject</label>
                            <select id="subject" name="subject" class="form-control" required="required">
                                <option value="na" selected="">Choose One:</option>
                                <option value="service">General Customer Service</option>
                                <option value="suggestions">Suggestions</option>
                                <option value="product">Product Support</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                               <i class="fa fa-pencil"></i>  Message</label>
                            <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                placeholder="Message"></textarea>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <asp:Button runat="server" CssClass="btn btn-outline-dark pull-right" id="btnContactUs" Text="Send Message" PostBackUrl="~/ThankYou">
                            </asp:Button>
                    </div>
                </div>
                
            </div>
        </div>
        <div class="col-md-4">
            
            <h2><i class="fa fa-globe"></i> Our office</h2>
            <address>
                <i class="fa fa-star"></i> <strong>Fashion Hub</strong><br>
                <i class="fa fa-building-o"></i> Unit 14, 96 Second Avenue<br>
                Kitchener, Ontario N2C 1N5<br>
                
                    <i class="fa fa-phone-square"></i> 
                (519) 577-0762
            </address>
            <address>
                <i class="fa fa-user"></i> <strong>Sweta Gupta</strong><br>
                <i class="fa fa-envelope"></i> <a href="mailto:info@fashionhub.com">info@fashionhub.com</a>
            </address>
            
        </div>
                    </div>

					
				</section>
			</div>


</asp:Content>

