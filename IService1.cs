using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.Text;
using Xrm;

namespace WebAppWalkthrough
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    //[AspNetCompatibilityRequirements(RequirementsMode=AspNetCompatibilityRequirementsMode.Allowed)]
    public interface IService1
    {
        [OperationContract]
        ResultType DoWork(string name);

        [OperationContract]
        CustomOpp GetOpportunityByNameGetOpportunityByName(string name, int id);
    }
    public class ResultType
    {
        public string Prop1 { get; set; }
        public string Prop2 { get; set; }
    }
}
