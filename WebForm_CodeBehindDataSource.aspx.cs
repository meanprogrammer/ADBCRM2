﻿using System;
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
            var exampleContacts = xrm.OpportunitySet.ToList();

            ContactsGridView.DataSource = exampleContacts;
            ContactsGridView.DataBind();
        } 
	}
}