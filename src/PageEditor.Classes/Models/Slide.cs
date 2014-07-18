using System;
using Glass.Mapper.Sc.Configuration.Attributes;
using Glass.Mapper.Sc.Fields;

namespace PageEditor.Classes.Models
{
    [SitecoreType(AutoMap = true)]
    public class Slide
    {
        [SitecoreId]
        public virtual Guid Id { get; set; }
    
        [SitecoreField]
        public virtual string Title { get; set; }
        
        [SitecoreField(FieldName = "Slide Image")]
        public virtual Image SlideImage { get; set; }

        [SitecoreField]
        public virtual string Copy { get; set; }

        [SitecoreField]
        public virtual Link Link { get; set; }

        [SitecoreField(FieldName = "Link Text")]
        public virtual string LinkText { get; set; }
    }

}
