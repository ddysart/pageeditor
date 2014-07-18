<%@ control language="C#" autoeventwireup="true" codebehind="MainContainer.ascx.cs" inherits="PageEditor.Web.layouts.PageEditor.sublayouts.MainContainer" %>
<div class="navbar-wrapper">
    <sc:placeholder runat="server" Key="navigation-bar"></sc:placeholder>
</div>

<sc:placeholder runat="server" Key="page-header"></sc:placeholder>

<div class="container marketing">
    
    <div class="row">
        <h1><sc:Text runat="server" Field="Title"></sc:Text></h1>
        <sc:text runat="server" Field="Body Copy"></sc:text>
    </div>

    <sc:placeholder runat="server" Key="main-container"></sc:placeholder>


    <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2014 Derek Dysart · <a href="#">Privacy</a> · <a href="#">Terms</a></p>
    </footer>

</div>
