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
                bps.new_name = "sample";
                ctx.UpdateObject(bps);
                ctx.SaveChanges();
            }
            
        }
    }
}
