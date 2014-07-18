<%@ control language="C#" autoeventwireup="true" codebehind="Featurette.ascx.cs" inherits="PageEditor.Web.layouts.PageEditor.sublayouts.Featurette" %>
<%@ Import Namespace="Glass.Mapper.Sc.RenderField" %>
<hr class="featurette-divider">

<div class="featurette">
    <%=RenderImage(x => x.Image, new ImageParameters{MaxWidth = 200, MaxHeight = 200, Class = "featurette-image pull-right"}, true) %>
    <h2 class="featurette-heading"><%=Editable(x => x.Heading) %></h2>
    <p class="lead"><%=Editable(x => x.Subheading) %></p>
</div>
