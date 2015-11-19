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
                CustomAccount converted = ObjConverter.ConvertToReadableAccount(item);
                accs.Add(converted);
            }
            return accs;
        }

        public CustomAccount GetOneAccount(Guid id)
        {
            var xrm = new XrmServiceContext("Xrm");
            //return 
            Xrm.Account orig = xrm.AccountSet.Where(c => c.Id == id).FirstOrDefault();
           
            return ObjConverter.ConvertToReadableAccount(orig);
        }

        public List<CustomOpportunity> GetAllOpportunity()
        {
            var xrm = new XrmServiceContext("Xrm");
            var all = xrm.OpportunitySet.ToList();

            List<CustomOpportunity> accs = new List<CustomOpportunity>();
            foreach (Xrm.Opportunity item in all)
            {
                CustomOpportunity converted = ObjConverter.ConvertToReadableOpportunity(item);
                accs.Add(converted);
            }
            return accs;
        }

        public CustomOpportunity GetOneOpportunity(Guid id)
        {
            var xrm = new XrmServiceContext("Xrm");
            //return 
            Xrm.Opportunity orig = xrm.OpportunitySet.Where(c => c.Id == id).FirstOrDefault();

            return ObjConverter.ConvertToReadableOpportunity(orig);
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

    static class ObjConverter
    {
        public static CustomAccount ConvertToReadableAccount(Xrm.Account orig)
        {
            CustomAccount ca = new CustomAccount();
            ca.Id = orig.Id;
            ca.Name = orig.Name;
            return ca;
        }

        public static CustomOpportunity ConvertToReadableOpportunity(Xrm.Opportunity orig)
        {
            CustomOpportunity co = new CustomOpportunity();
            co.Id = orig.Id;
            co.Name = orig.Name;
            co.Description = orig.Description;
            co.ProjectDescription = orig.new_ProjectDescription;
            co.ProjectRationale = orig.new_ProjectRationale;
            return co;

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
        public string Name { get; set; }
        [DataMember]
        public string Description { get; set; }
        [DataMember]
        public string ProjectDescription { get; set; }
        [DataMember]
        public string ProjectRationale { get; set; }
    }
}
