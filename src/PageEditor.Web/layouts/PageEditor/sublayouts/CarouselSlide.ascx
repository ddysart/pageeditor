<%@ control language="C#" autoeventwireup="true" codebehind="CarouselSlide.ascx.cs" inherits="PageEditor.Web.layouts.PageEditor.sublayouts.CarouselSlide" debug="true" %>
<div class="item" style="background-image: url(<%=Model.SlideImage.Src %>)" >
    <div class="container">
        <div class="carousel-caption">
            <h1><%=Editable(slide => slide.Title) %></h1>
            <p class="lead"><%=Editable(slide => slide.Copy) %></p>
            <a class="btn btn-large btn-primary" href="<%=Model.Link.Url %>"><%=Editable(slide => slide.LinkText) %></a>
        </div>
    </div>
</div>
