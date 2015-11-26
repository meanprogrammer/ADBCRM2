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
            co.OpportunityId = orig.OpportunityId.Value;
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
                cov.ParentID = (item.new_opportunity_new_nsocovenant != null) ? item.new_opportunity_new_nsocovenant.OpportunityId.Value : Guid.Empty;
                cov.ParentIDString = string.Format("{0}{1}", "__bo4200", cov.ParentID.ToString());
                nsos.Add(cov);
            }
            return nsos;
        }

        public static List<CustomBaselineProjection> ConvertToBaselineProjection(IEnumerable<new_baselineprojections> list)
        {
            List<CustomBaselineProjection> bps = new List<CustomBaselineProjection>();
            foreach (new_baselineprojections item in list)
            {
                CustomBaselineProjection projection = new CustomBaselineProjection();
                projection.Id = item.Id;
                projection.Name = item.new_name;
                projection.Year = item.new_Year.Value;
                projection.CA_Q1_A = (double)item.new_CA_Q1Actual;
                projection.CA_Q1_P = (double)item.new_Q1_ca;
                projection.CA_Q2_A = (double)item.new_CA_Q2Actual;
                projection.CA_Q2_P = (double)item.new_Q2_ca;
                projection.CA_Q3_A = (double)item.new_CA_Q3Actual;
                projection.CA_Q3_P = (double)item.new_Q3_ca;
                projection.CA_Q4_A = (double)item.new_CA_Q4Actual;
                projection.CA_Q4_P = (double)item.new_Q4_ca;
                projection.Total_CA_Per_Year_A = (double)item.new_TotalCAperYearActual;
                projection.Total_CA_Per_Year_P = (double)item.new_TotalCAperYear;

                projection.DB_Q1_A = (double)item.new_DB_Q1Actual;
                projection.DB_Q1_P = (double)item.new_Q1_db;
                projection.DB_Q2_A = (double)item.new_DB_Q2Actual;
                projection.DB_Q2_P = (double)item.new_Q2_db;
                projection.DB_Q3_A = (double)item.new_DB_Q3Actual;
                projection.DB_Q3_P = (double)item.new_Q3_db;
                projection.DB_Q4_A = (double)item.new_DB_Q4Actual;
                projection.DB_Q4_P = (double)item.new_Q4_db;
                projection.Total_DB_Per_Year_A = (double)item.new_TotalDisbPerYearActual;
                projection.Total_DB_Per_Year_P = (double)item.new_TotalDisbPerYear;

                bps.Add(projection);
            }
            return bps;
        }

        public static List<CustomSOVCovenant> ConvertToSOVCovenant(IEnumerable<new_covenants> list)
        {
            List<CustomSOVCovenant> nsos = new List<CustomSOVCovenant>();
            foreach (var item in list)
            {
                CustomSOVCovenant cov = new CustomSOVCovenant();
                cov.CovenantDescription = item.new_CovenantDescription;
                cov.CovenantID = item.new_covenantsId.Value;
                cov.Name = item.new_name;
                cov.ParentID = (item.new_opportunity_new_covenants != null) ? item.new_opportunity_new_covenants.Id : Guid.Empty;
                cov.ParentIDString = string.Format("{0}{1}","__bo4200",cov.ParentID.ToString());
                nsos.Add(cov);
            }
            return nsos;
        }
    }
}