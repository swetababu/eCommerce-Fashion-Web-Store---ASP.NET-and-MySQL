<%--  
    Final Project - Fashion Merchandising Site
    Date Started - 13th July 2018
    Created By - Sweta Gupta (8252397)    
--%>

<%@ Page Title="Login Page - Fashion Merchandising Site" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SwetaGupta_FinalProject.Login" %>

<asp:Content ID="Content2" ContentPlaceHolderID="header1" runat="server">
 
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="body" runat="server">


     <div id="main" class="wrapper style1">
				<section class="container">
					<header class="major">
						<h2>User Log In <i class="fa fa-user"></i></h2>
					</header>
                </section>

           <div class="container mt-0 pt-0">
        <div class="card card-container">


               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [email_address], [password] FROM [users] WHERE (([email_address] = @email_address) AND ([password] = @password))">
    <SelectParameters>
        <asp:ControlParameter ControlID="txtUserName" Name="email_address" PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="txtPassword" Name="password" PropertyName="Text" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
           
            <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
            <p id="profile-name" class="profile-name-card"></p>
           
                <span id="reauth-email" class="reauth-email"></span>
               <asp:Label ID="lblUserName" runat="server" Text="Username / Email"></asp:Label>
                <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"></asp:TextBox> 
     <asp:RequiredFieldValidator ID="rfvtxtUserName" ErrorMessage="UserName is required" ControlToValidate="txtUserName" CssClass="text-danger" runat="server" Text="UserName is Required" Display="Dynamic" />

    
                <br />
            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtPassword" ErrorMessage="Password is required" ControlToValidate="txtPassword" CssClass="text-danger" runat="server" Text="Password is Required" Display="Dynamic" />
            <br />
                <div id="remember" class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me"> Remember me
                    </label>
                </div>
                <asp:Button ID="btnLogin" runat="server" Text="LogIn" CssClass="btn btn-outline-dark" OnClick="btnLogin_Click" />
               <asp:Label ID="lblError" runat="server" Text="" Visible="false" CssClass="text-danger"></asp:Label>
           <br />
            <a href="#" class="forgot-password">
                Forgot the password?
            </a>
        </div><!-- /card-container -->
    </div><!-- /container -->
         </div>
</asp:Content>




