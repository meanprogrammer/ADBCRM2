using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using Xrm;

namespace WebAppWalkthrough
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "NSOCovenantService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select NSOCovenantService.svc or NSOCovenantService.svc.cs at the Solution Explorer and start debugging.
    public class NSOCovenantService : INSOCovenantService
    {
        private XrmServiceContext context = null;
        public NSOCovenantService() { 
            context = new XrmServiceContext("Xrm");
        }

        public List<CustomNSOCovenant> GetAllNSOCovenant()
        {
            List<CustomNSOCovenant> list = ObjectConverter.ConvertToNSOCovenant(context.new_nsocovenantSet.ToList());
            return list;
        }

        public CustomNSOCovenant GetOneNSOCovenant(Guid id)
        {
            var single = context.new_nsocovenantSet.Where(c => c.new_nsocovenantId == id);
            return ObjectConverter.ConvertToNSOCovenant(single).FirstOrDefault();
        }

        
    }
}
