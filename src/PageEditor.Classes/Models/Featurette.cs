using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Glass.Mapper.Sc.Configuration.Attributes;
using Glass.Mapper.Sc.Fields;

namespace PageEditor.Classes.Models
{
    [SitecoreType(AutoMap = true)]
    public class Featurette
    {

        public virtual string Heading { get; set; }
        public virtual string Subheading { get; set; }
        public virtual Image Image { get; set; }
    }
}
