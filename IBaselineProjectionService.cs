using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace WebAppWalkthrough
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IBaselineProjectionService" in both code and config file together.
    [ServiceContract]
    public interface IBaselineProjectionService
    {
        [OperationContract]
        List<CustomBaselineProjection> GetAllBaselineProjection();

        [OperationContract]
        CustomBaselineProjection GetOneBaselineProjection(Guid id);

        [OperationContract]
        void DeleteBaselineProjection(Guid id);

        [OperationContract]
        void CreateBaselineProjection(CustomBaselineProjection bp);

        [OperationContract]
        void UpdateBaselineProjection(CustomBaselineProjection bp);
    }
}
