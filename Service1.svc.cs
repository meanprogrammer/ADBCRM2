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
        public List<CustomAccount> GetAllAccount()
        {
            var xrm = new XrmServiceContext("Xrm");
            var all = xrm.AccountSet.ToList();

            List<CustomAccount> accs = new List<CustomAccount>();
            foreach (Xrm.Account item in all)
            {
                CustomAccount converted = ObjectConverter.ConvertToReadableAccount(item);
                accs.Add(converted);
            }
            return accs;
        }

        public CustomAccount GetOneAccount(Guid id)
        {
            var xrm = new XrmServiceContext("Xrm");
            //return 
            Xrm.Account orig = xrm.AccountSet.Where(c => c.Id == id).FirstOrDefault();

            return ObjectConverter.ConvertToReadableAccount(orig);
        }

        public List<CustomOpportunity> GetAllOpportunity()
        {
            var xrm = new XrmServiceContext("Xrm");
            var all = xrm.OpportunitySet.ToList();

            List<CustomOpportunity> accs = new List<CustomOpportunity>();
            foreach (Xrm.Opportunity item in all)
            {
                CustomOpportunity converted = ObjectConverter.ConvertToReadableOpportunity(item);
                accs.Add(converted);
            }
            return accs;
        }

        public CustomOpportunity GetOneOpportunity(Guid id)
        {
            var xrm = new XrmServiceContext("Xrm");
            //return 
            Xrm.Opportunity orig = xrm.OpportunitySet.Where(c => c.Id == id).FirstOrDefault();

            return ObjectConverter.ConvertToReadableOpportunity(orig);
        }

        public bool UpdateOpportunity(Guid id, CustomOpportunity opp)
        {
            var xrm = new XrmServiceContext("Xrm");
            Xrm.Opportunity orig = xrm.OpportunitySet.Where(c => c.Id == id).FirstOrDefault();
            orig.Description = opp.Description;
            xrm.Update(orig);
            return true;
        }
    }

    

    [DataContract]
    public class CustomAccount {

        [DataMember]
        public Guid Id { get; set; }
     
         [DataMember]
        public string Name { get; set; }
    }

    [DataContract]
    public class CustomOpportunity
    {
        [DataMember]
        public Guid Id { get; set; }
        [DataMember]
        public Guid OpportunityId { get; set; }
        [DataMember]
        public string Name { get; set; }
        [DataMember]
        public string Description { get; set; }
        [DataMember]
        public string ProjectDescription { get; set; }
        [DataMember]
        public string ProjectRationale { get; set; }
        [DataMember]
        public List<CustomNSOCovenant> NSOCovenants { get; set; }
        [DataMember]
        public List<CustomSOVCovenant> SOVCovenants { get; set; }
        
    }

    [DataContract]
    public class CustomNSOCovenant 
    {
        [DataMember]
        public string CovenantDescription { get; set; }
        [DataMember]
        public Guid CovenantID { get; set; }
        [DataMember]
        public string Name { get; set; }
        [DataMember]
        public Guid ParentID { get; set; }
        [DataMember]
        public string ParentIDString { get; set; }
    }

    [DataContract]
    public class CustomSOVCovenant
    { 
        [DataMember]
        public string CovenantDescription { get; set; }
        [DataMember]
        public Guid CovenantID { get; set; }
        [DataMember]
        public string Name { get; set; }
        [DataMember]
        public Guid ParentID { get; set; }
        [DataMember]
        public string ParentIDString { get; set; }
    }
}
