using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using Xrm;

namespace WebAppWalkthrough
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "SOVCovenant" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select SOVCovenant.svc or SOVCovenant.svc.cs at the Solution Explorer and start debugging.
    public class SOVCovenantService : ISOVCovenantService
    {
        private XrmServiceContext context = null;
        public SOVCovenantService()
        { 
            context = new XrmServiceContext("Xrm");
        }

        public List<CustomSOVCovenant> GetAllSOVCovenant()
        {
            List<CustomSOVCovenant> list = ObjectConverter.ConvertToSOVCovenant(context.new_covenantsSet.ToList());
            return list;
        }

        public CustomSOVCovenant GetOneSOVCovenant(Guid id)
        {
            List<CustomSOVCovenant> list = ObjectConverter.ConvertToSOVCovenant(context.new_covenantsSet.Where(c => c.Id == id).ToList());
            return list.FirstOrDefault();
        }
    }
}
