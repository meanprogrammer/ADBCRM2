using System;
using System.Linq;
using Xrm;

namespace WebAppWalkthrough
{
	public partial class WebForm_CodeBehind : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			
		}

        protected void Button1_Click(object sender, EventArgs e)
        {
            var xrm = new XrmServiceContext("Xrm");

            //grab all contacts where the email address ends in @example.com
            var exampleContacts = xrm.OpportunitySet.Where(x => x.Name == TextBox1.Text.Trim());

            var single = exampleContacts.FirstOrDefault();

            Literal1.Text = (single.new_opportunity_new_covenants_projectid == null || single.new_opportunity_new_covenants_projectid.Count() == 0) ? "0" : single.new_opportunity_new_covenants_projectid.Count().ToString();

            ContactsGridView.DataSource = exampleContacts;
            ContactsGridView.DataBind();
        }
	}
}