using System;
using System.Web.ModelBinding;
using PageEditor.Classes;
using Sitecore.Data.Items;

namespace PageEditor.Web.layouts.PageEditor.sublayouts
{
    public partial class Featurette : System.Web.UI.UserControl   
    {
        public Item Model { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            Model = new SublayoutParamHelper(this, false).DataSourceItem;
            Heading.Item = Model;
            Image.Item = Model;
            Lead.Item = Model;
        }
    }
}