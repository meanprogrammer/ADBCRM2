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
    }

    [DataContract]
    public class CustomAccount {

        [DataMember]
        public Guid Id { get; set; }
     
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
