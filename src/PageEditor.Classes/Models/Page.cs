using System;
using System.Collections.Generic;
using Glass.Mapper.Sc.Configuration;
using Glass.Mapper.Sc.Configuration.Attributes;

namespace PageEditor.Classes.Models
{
    [SitecoreType(AutoMap = true)]
    public class Page
    {
        [SitecoreId]
        public virtual Guid Id { get; set; }

        [SitecoreInfo(SitecoreInfoType.Url)]
        public virtual string Url { get; set; }

        [SitecoreField]
        public virtual string Title { get; set; }

        [SitecoreField(FieldName = "Body Copy")]
        public virtual string BodyCopy { get; set; }

        [SitecoreField]
        public virtual string Description { get; set; }

        [SitecoreField(FieldName = "Related Pages")]
        public virtual IEnumerable<Page> RelatedPages { get; set; } 

    }
}
