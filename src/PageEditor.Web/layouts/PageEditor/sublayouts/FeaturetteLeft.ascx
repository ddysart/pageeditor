<%@ control language="C#" autoeventwireup="true" codebehind="FeaturetteLeft.ascx.cs" inherits="PageEditor.Web.layouts.PageEditor.sublayouts.FeaturetteLeft" %>
<%@ Import Namespace="Glass.Mapper.Sc.RenderField" %>
<hr class="featurette-divider">

<div class="featurette">
    <sc:Image runat="server" Field="Image" ID="Image" CssClass="featurette-image pull-left" Width="200" Height="200" AllowStretch="false"/>
    <h2 class="featurette-heading"><sc:text runat="server" Field="Heading" ID="Heading"></sc:text></h2>
    <p class="lead"><sc:text runat="server" Field="subheading" ID="Subheading"></sc:text></p>
</div>
