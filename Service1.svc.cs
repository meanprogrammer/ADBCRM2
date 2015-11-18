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

        public CustomAccount GetOneAccount(int id)
        {
            var xrm = new XrmServiceContext("Xrm");
            //return 
            Xrm.Account orig = xrm.AccountSet.Where(c => c.Name.Contains("Bhutan")).FirstOrDefault();
           
            return ObjConverter.ConvertToReadableAccount(orig);
        }
    }

    static class ObjConverter
    {
        public static CustomAccount ConvertToReadableAccount(Xrm.Account orig)
        {
            CustomAccount ca = new CustomAccount();
            ca.AccountId = orig.AccountId;
            ca.Name = orig.Name;
            return ca;
        }
    }

    [DataContract]
    public class CustomAccount {

        [DataMember]
        public int ReadId { get; set; }
        [DataMember]
        public Guid Id { get; set; }
        [DataMember]
        public Guid? AccountId { get; set; }
        [DataMember]
        public string Name { get; set; }
    }

    public class CustomOpp 
    {
        public int ID { get; set; }
        public string Lastname { get; set; }
        public string FirstName { get; set; }
        public string MI { get; set; }
    }
}
