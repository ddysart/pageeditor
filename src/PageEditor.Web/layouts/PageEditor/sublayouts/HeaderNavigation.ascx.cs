using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Sitecore.Data.Items;

namespace PageEditor.Web.layouts.PageEditor.sublayouts
{
    public partial class HeaderNavigation : System.Web.UI.UserControl
    {
        public IEnumerable<Item> SubPages
        {
            get
            {
                Sitecore.Sites.SiteContext site = Sitecore.Context.Site; 
                Sitecore.Data.Items.Item item = Sitecore.Context.Database.GetItem(site.StartPath);
                return item.Children.ToList();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}