<%@ control language="C#" autoeventwireup="true" codebehind="Carousel.ascx.cs" inherits="PageEditor.Web.layouts.PageEditor.sublayouts.Carousel" %>
<div id="myCarousel" class="carousel slide">
    <div class="carousel-inner<%=Sitecore.Context.PageMode.IsPageEditor ? " edit" : string.Empty %>">
        <sc:placeholder runat="server" key="carousel-slides"></sc:placeholder>
    </div>
    <% if (!IsInEditingMode)
       { %>
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
    <% } %>
</div>
