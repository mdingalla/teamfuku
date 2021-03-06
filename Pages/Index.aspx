﻿<%@ Reference VirtualPath="~masterurl/custom.master" %>
<%@ Page language="C#"   Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=16.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document" %>
<%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceholderID="PlaceHolderAdditionalPageHead" runat="server">
	<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>
	<PublishingWebControls:EditModePanel runat="server">
		<!-- Styles for edit mode only-->
		<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/editmode15.css %>"
			After="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>
	</PublishingWebControls:EditModePanel>
	<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/SiteAssets/css/mysite.css %>" After="corev15.css" runat="server"/>
	<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderMain" runat="server">
	<div class="container-fluid full-width" id="maincontent">
		<div class="introduction-area">
			<div class="header-box">
				<div class="header-text">
					<span class="header-greeting">Welcome to my site. I am</span>
					<h1 class="header-myname">Mark Dave Ingalla</h1>
					<p class="header-description">
						I do:</p>
						<ul class="nav header-skills">
							<li>\Website</li>
							<li>\SharePoint</li>
							<li>\Hybrid Mobile</li>
						</ul>
						<p class="header-description">
						Development
					</p>
				</div>
			</div>
		</div>

		<div class="skills-area section-area">
			<div class="container">
				<div class="area-header">
					<h1>Skills</h1>
				</div>
				<div class="row-fluid">
					<div class="col-md-4">
						<h2>Web Development</h2>
						<div>
							<ul>
								<li>ASP.NET MVC 3,4,5</li>
								<li>ASP.NET Web Forms</li>
								<li>C#</li>
								<li>Wordpress/PHP</li>
								<li>AngularJS, React TypeScript, Knockout</li>
								<li>Twitter Bootstrap,SASS, LESS</li>
								<li>Telerik DevTools</li>
							</ul>
						</div>
					</div>
					<div class="col-md-4">
						<h2>SharePoint Development</h2>
						<div>
							<ul>
								<li>SharePoint 2010, 2013 , Online</li>
								<li>Add-Ins formerly App Model</li>
								<li>WebPart</li>
								<li>InfoPath</li>
								<li>Workflow</li>
							</ul>
						</div>
					</div>
					<div class="col-md-4">
						<h2>Others</h2>
						<li>NodeJS</li>
						<li>Python</li>
						<li>Ionic , Cordova</li>
						<li>MSSQL, MySQL, Mongo</li>
						<li>npm, bower, Gulp</li>
						<li>Git,Mercurial,SVN</li>
					</div>
				</div>
			</div>
		</div>

		<div class="work-area section-area">
			<div class="container">
				<div class="area-header">
					<h1>Work Experience</h1>
				</div>

				<div class="row-fluid">
					<div class="col-md-4">
						<img class="img-responsive" src="https://avanade1130-public.sharepoint.com/_layouts/15/guestaccess.aspx?guestaccesstoken=kledgWfEKH7tc33hnkOdiU8qwaLVUMgr7a2%2fegmI01Q%3d&docid=05bf17a1ba5f3448aafa4b296f807e007"
						/>
					</div>
					<div class="col-md-8">
						<h3>Avanade/Accenture</h3>
						<p>2013 - 2016</p>
						<p>SharePoint Developer - Team Lead</p>
					</div>
				</div>

				<div class="row-fluid">
					<div class="col-md-4">
						<img class="img-responsive" src="https://avanade1130-public.sharepoint.com/_layouts/15/guestaccess.aspx?guestaccesstoken=QVA5%2fKcpzJLyT1yfqnJlear93iOlLOeQ4r0cuuWFiKE%3d&docid=062f5d39fe0784c24958c0951330e5656"
						/>
					</div>
					<div class="col-md-8">
						<h3>Upwork - formerly ODesk and Elance</h3>
						<p>2009 - 2013</p>
						<p>ASP.NET MVC / Javascript Developer</p>
					</div>
				</div>

			</div>
		</div>

		<div class="projects-area section-area">
			<div class="container">
				<div class="area-header">
					<h1>Projects</h1>
				</div>

			</div>
		</div>
			<PublishingWebControls:LayoutDivContainer runat="server" class="layout-col fullPageLayout  ms-verticalAlignTop">
				<PublishingWebControls:LayoutDivContainer runat="server" class="fullPageLayout-inner">
					<PublishingWebControls:RichHtmlField FieldName="PublishingPageContent" HasInitialFocus="True" MinimumEditHeight="400px" runat="server"/>
				</PublishingWebControls:LayoutDivContainer>
			</PublishingWebControls:LayoutDivContainer>
	</div>
	<script src="../SiteAssets/libs/angular/angular.min.js" ></script>
	<script src="../SiteAssets/libs/angular/angular-route.min.js" ></script>

	<script src="../SiteAssets/app/app.js" ></script>

</asp:Content>


   
