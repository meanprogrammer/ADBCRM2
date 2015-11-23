using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace WebAppWalkthrough
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "INSOCovenantService" in both code and config file together.
    [ServiceContract]
    public interface INSOCovenantService
    {
        [OperationContract]
        List<CustomNSOCovenant> GetAllNSOCovenant();

        [OperationContract]
        CustomNSOCovenant GetOneNSOCovenant(Guid id);
    }
}
