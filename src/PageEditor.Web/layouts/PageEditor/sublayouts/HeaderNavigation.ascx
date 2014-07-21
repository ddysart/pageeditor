<%@ control language="C#" autoeventwireup="true" codebehind="HeaderNavigation.ascx.cs" inherits="PageEditor.Web.layouts.PageEditor.sublayouts.HeaderNavigation" %>
<%@ Import Namespace="Sitecore.Links" %>
<div class="container">
    <div class="navbar navbar-inverse">
        <div class="navbar-inner">
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="brand" href="#">Editor Site</a>
            <!-- Responsive Navbar Part 2: Place all navbar contents you want collapsed withing .navbar-collapse.collapse. -->
            <div class="nav-collapse collapse">
                <ul class="nav">
                    <li><a href="/">Home</a></li>
                    <% foreach (var child in SubPages)
                       { %>
                    <li><a href="<%=LinkManager.GetItemUrl(child) %>"><%= child["Title"] %></a></li>
                           
                    <% } %>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
        <!-- /.navbar-inner -->
    </div>
    <!-- /.navbar -->

</div>
