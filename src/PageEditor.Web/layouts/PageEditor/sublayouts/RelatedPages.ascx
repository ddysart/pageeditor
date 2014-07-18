<%@ control language="C#" autoeventwireup="true" codebehind="RelatedPages.ascx.cs" inherits="PageEditor.Web.layouts.PageEditor.sublayouts.RelatedPages" %>
<hr/>

<div class="row">
    <% foreach (var relatedPage in Model.RelatedPages) 
        { %>

    <div class="span4">
        <img class="img-circle" data-src="http://placehold.it/140/">
        <h2><%=relatedPage.Title %></h2>
        <p><%=relatedPage.Description %></p>
        <p><a class="btn" href="<%=relatedPage.Url %>">View details »</a></p>
    </div>
           
    <%  } %>
</div>
