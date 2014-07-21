<%@ control language="C#" autoeventwireup="true" codebehind="Featurette.ascx.cs" inherits="PageEditor.Web.layouts.PageEditor.sublayouts.Featurette" %>
<%@ Import Namespace="Glass.Mapper.Sc.RenderField" %>
<hr class="featurette-divider">

<div class="featurette">
    <sc:Image runat="server" Field="Image " ID="Image"/>
    <h2 class="featurette-heading"><sc:FieldRenderer runat="server" ID="Heading"/></h2>
    <p class="lead"><sc:FieldRenderer runat="server" ID="Lead"/></p>
</div>
