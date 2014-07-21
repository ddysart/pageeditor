<%@ control language="C#" autoeventwireup="true" codebehind="Carousel.ascx.cs" inherits="PageEditor.Web.layouts.PageEditor.sublayouts.Carousel" %>
<div id="myCarousel" class="carousel slide">
    <div class="carousel-inner <%=IsInEditingMode ? "edit" : string.Empty %>">
        <!-- begin carousel-slides -->
        <sc:placeholder runat="server" key="carousel-slides"></sc:placeholder>
        <!-- end carousel-slides -->
    </div>
    <% if (!IsInEditingMode)
       { %>
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
    <% } %>
</div>
