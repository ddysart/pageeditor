using Sitecore.Data;
using Sitecore.Diagnostics;
using Sitecore.Pipelines.GetRenderingDatasource;
using Sitecore.Sites;
using Sitecore.Text;

namespace PageEditor.Classes
{
    public class CreateContentFolder
    {
        protected const string ContentFolderTemplateParam = "contentFolderTemplate";

        public void Process(GetRenderingDatasourceArgs args)
        {
            Assert.IsNotNull(args, "args");
            var rendering = new Sitecore.Data.Items.RenderingItem(args.RenderingItem);

            var urlString = new UrlString(rendering.Parameters);
            var contentFolder = urlString.Parameters[ContentFolderTemplateParam];
            
            if (string.IsNullOrEmpty(contentFolder)) return;
            
            if (!ID.IsID(contentFolder))
            {
                Log.Warn(string.Format("{0} for Rendering {1} contains improperly formatted ID: {2}", ContentFolderTemplateParam, args.RenderingItem.Name, contentFolder), this);
                return;
            }

            string datasourceLocation = args.RenderingItem["Datasource Location"];

            if (!string.IsNullOrEmpty(datasourceLocation) && 
                datasourceLocation.StartsWith("./") && 
                !string.IsNullOrEmpty(args.ContextItemPath))
            {
                var itemPath = args.ContextItemPath + datasourceLocation.Remove(0, 1);
                var contentFolderItem = args.ContentDatabase.GetItem(itemPath);
                var contextItem = args.ContentDatabase.GetItem(args.ContextItemPath);

                if (contentFolderItem != null || contextItem == null) return;
                
                string itemName = datasourceLocation.Remove(0, 2);
                
                using (new SiteContextSwitcher(SiteContextFactory.GetSiteContext("system")))
                {
                    contextItem.Add(itemName, new TemplateID(ID.Parse(contentFolder)));
                }
            }
        }
    }
}
