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
            var opps = xrm.OpportunitySet.ToList();
            this.OpportunityDropdown.DataSource = opps;
            this.OpportunityDropdown.DataBind();


            
        }

        protected void OpportunityDropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            var xrm = new XrmServiceContext("Xrm");

            var op = xrm.OpportunitySet.Where(c => c.Id == Guid.Parse(this.OpportunityDropdown.SelectedItem.Value));

            this.DetailsView1.DataSource = op;
            this.DetailsView1.DataBind();
        }
    }
}