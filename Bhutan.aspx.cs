using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Xrm;

namespace WebAppWalkthrough
{
    public partial class Bhutan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var xrm = new XrmServiceContext("Xrm");

            //grab all contacts where the email address ends in @example.com
            var exampleContacts = xrm.OpportunitySet.Where(c => c.Id == Guid.Parse("573b99ed-bf50-e511-80ee-3863bb2eb8d8"));

            this.DetailsView1.DataSource = exampleContacts;
            this.DetailsView1.DataBind();
        }
    }
}