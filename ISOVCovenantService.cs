using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace WebAppWalkthrough
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "ISOVCovenant" in both code and config file together.
    [ServiceContract]
    public interface ISOVCovenantService
    {
        [OperationContract]
        List<CustomSOVCovenant> GetAllSOVCovenant();

        [OperationContract]
        CustomSOVCovenant GetOneSOVCovenant(Guid id);
    }
}
