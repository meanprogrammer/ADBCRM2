using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using Xrm;

namespace WebAppWalkthrough
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IService1
    {

        public ResultType DoWork(string name)
        {
            return new ResultType() { Prop1 = "abc", Prop2="xyz" };
        }


        public Xrm.Opportunity GetOpportunityByName(string name)
        {
            var xrm = new XrmServiceContext("Xrm");

            //grab all contacts where the email address ends in @example.com
            var exampleContacts = xrm.OpportunitySet.Where(x => x.Name == "Bhutan: Road Network Project II").FirstOrDefault();
            return exampleContacts;
        }
    }
}
