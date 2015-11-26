using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using Xrm;

namespace WebAppWalkthrough
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "BaselineProjectionService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select BaselineProjectionService.svc or BaselineProjectionService.svc.cs at the Solution Explorer and start debugging.
    public class BaselineProjectionService : IBaselineProjectionService
    {
        private XrmServiceContext context = null;
        public BaselineProjectionService()
        { 
            context = new XrmServiceContext("Xrm");
        }

        public List<CustomBaselineProjection> GetAllBaselineProjection()
        {
            return ObjectConverter.ConvertToBaselineProjection(context.new_baselineprojectionsSet.ToList());
        }

        public CustomBaselineProjection GetOneBaselineProjection(Guid id)
        {
            return ObjectConverter.ConvertToBaselineProjection(
                context.new_baselineprojectionsSet.Where(c=>c.Id == id).ToList()
                ).FirstOrDefault();
        }

        public void DeleteBaselineProjection(Guid id)
        {
            
        }

        public void CreateBaselineProjection(CustomBaselineProjection bp)
        {
            
        }

        public void UpdateBaselineProjection(CustomBaselineProjection bp)
        {
            using (var ctx = new XrmServiceContext("Xrm"))
            {
                var bps = (from s in ctx.new_baselineprojectionsSet
                            where s.Id == bp.Id
                            select s).FirstOrDefault();
                bps.new_name = bp.Name;


                bps.new_Year = bp.Year;
                bps.new_CA_Q1Actual = (int)bp.CA_Q1_A;
                bps.new_Q1_ca = (decimal)bp.CA_Q1_P;
                bps.new_CA_Q2Actual = (int)bp.CA_Q2_A;
                bps.new_Q2_ca = (decimal)bp.CA_Q2_P;
                bps.new_CA_Q3Actual = (int)bp.CA_Q3_A;
                bps.new_Q3_ca = (decimal)bp.CA_Q3_P;
                bps.new_CA_Q4Actual = (int)bp.CA_Q4_A;
                bps.new_Q4_ca = (decimal)bp.CA_Q4_P;


                bps.new_DB_Q1Actual = (int)bp.DB_Q1_A;
                bps.new_Q1_db = (decimal)bp.DB_Q1_P;
                bps.new_DB_Q2Actual = (int)bp.DB_Q2_A;
                bps.new_Q2_db = (decimal)bp.DB_Q2_P;
                bps.new_DB_Q3Actual = (int)bp.DB_Q3_A;
                bps.new_Q3_db = (decimal)bp.DB_Q3_P;
                bps.new_DB_Q4Actual = (int)bp.DB_Q4_A;
                bps.new_Q4_db = (decimal)bp.DB_Q4_P;

                ctx.UpdateObject(bps);
                ctx.SaveChanges();
            }
            
        }
    }
}
