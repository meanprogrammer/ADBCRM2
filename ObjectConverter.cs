using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Xrm;

namespace WebAppWalkthrough
{
    public static class ObjectConverter
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

            //orig.cov

            return co;

        }

        public static List<CustomNSOCovenant> ConvertToNSOCovenant(IEnumerable<new_nsocovenant> list)
        {
            List<CustomNSOCovenant> nsos = new List<CustomNSOCovenant>();
            foreach (var item in list)
            {
                CustomNSOCovenant cov = new CustomNSOCovenant();
                cov.CovenantDescription = item.new_Description;
                cov.CovenantID = item.new_nsocovenantId.Value;
                cov.Name = item.new_name;
                nsos.Add(cov);
            }
            return nsos;
        }

        public static List<CustomSOVCovenant> ConvertToSOVCovenant(IEnumerable<new_covenants> list)
        {
            List<CustomSOVCovenant> nsos = new List<CustomSOVCovenant>();
            foreach (var item in list)
            {
                CustomSOVCovenant cov = new CustomSOVCovenant();
                cov.CovenantDescription = item.new_CovenantDescription;
                cov.CovenantID = item.new_CovenantID.Value;
                cov.Name = item.new_name;
                nsos.Add(cov);
            }
            return nsos;
        }
    }
}