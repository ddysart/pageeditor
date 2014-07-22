using System;
using System.Web.ModelBinding;
using PageEditor.Classes;
using Sitecore.Data.Items;

namespace PageEditor.Web.layouts.PageEditor.sublayouts
{
    public partial class FeaturetteLeft : System.Web.UI.UserControl   
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Item datasourceItem = new SublayoutParamHelper(this, false).DataSourceItem;

            Heading.Item = datasourceItem;
            Subheading.Item = datasourceItem;
            Image.Item = datasourceItem;
        }
    }
}