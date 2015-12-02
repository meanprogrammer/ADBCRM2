using Microsoft.Xrm.Sdk;
using Microsoft.Xrm.Sdk.Messages;
using Microsoft.Xrm.Sdk.Metadata;
using Microsoft.Xrm.Sdk.Query;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xrm;

namespace FindObject
{
    class Program
    {
        static void Main(string[] args)
        {
            var service = new XrmServiceContext("Xrm");
         /*   
            // Retrieve Metadata for all entities
            RetrieveAllEntitiesRequest allEntitiesRequest = new RetrieveAllEntitiesRequest();
            allEntitiesRequest.EntityFilters = EntityFilters.Attributes;
            allEntitiesRequest.RetrieveAsIfPublished = true;
            RetrieveAllEntitiesResponse allEntitiesResponse = (RetrieveAllEntitiesResponse)service.Execute(allEntitiesRequest);

            // Record ID to check
            Guid checkId = Guid.Parse("5b58a480-d18d-e511-80fb-3863bb2e7c20");

            string entityLogicalName = string.Empty;
            foreach (EntityMetadata entityMetadata in allEntitiesResponse.EntityMetadata)
            {
                try
                {
                    // Try to retrieve the record from the current entity
                    Entity test = service.Retrieve(entityMetadata.LogicalName, checkId, new ColumnSet(entityMetadata.PrimaryIdAttribute));
                    
                    // if the previous instruction didn't throw an exception means that the record exists.
                    entityLogicalName = entityMetadata.LogicalName;
                    break;
                }
                catch { }
            }
            if (entityLogicalName != string.Empty)
            {
                string foundMessage = string.Format("Record with ID {0} belongs to entity {1}", checkId.ToString(), entityLogicalName);
                Console.WriteLine(foundMessage);
            }
            else
            {
                string notFoundMessage = string.Format("Record with ID {0} not found in any entity", checkId.ToString());
                Console.WriteLine(notFoundMessage);
            }
            Console.ReadLine();
            */
            
            string id = "5b58a480-d18d-e511-80fb-3863bb2e7c20";
            string id2 = "79b3df74-2cb3-42b4-bd4a-d65754c28d78";
            int count = 0;
            var context = new XrmServiceContext("Xrm");
            using (context)
            {

                WriteAllAttribute<Dependency>(context.DependencySet);

                //var emps = context.promx_promx_team_promx_employeeSet.FirstOrDefault();
                /*
                WriteAllAttribute<promx_activityrecord>(context.promx_activityrecordSet);
                WriteAllAttribute<promx_activityrecordtype>(context.promx_activityrecordtypeSet);
                WriteAllAttribute<promx_budgetnotification_promx_project>(context.promx_budgetnotification_promx_projectSet);
                WriteAllAttribute<promx_budgetnotification>(context.promx_budgetnotificationSet);
                WriteAllAttribute<promx_closure>(context.promx_closureSet);
                WriteAllAttribute<promx_costcenter>(context.promx_costcenterSet);
                WriteAllAttribute<promx_dayoff_promx_nonbusinessday>(context.promx_dayoff_promx_nonbusinessdaySet);
                WriteAllAttribute<promx_dayoff>(context.promx_dayoffSet);
                WriteAllAttribute<promx_employeeinproject>(context.promx_employeeinprojectSet);
                WriteAllAttribute<promx_employee>(context.promx_employeeSet);
                WriteAllAttribute<promx_employeetype>(context.promx_employeetypeSet);
                WriteAllAttribute<promx_expense>(context.promx_expenseSet);
                WriteAllAttribute<promx_expensetype>(context.promx_expensetypeSet);
                WriteAllAttribute<promx_internalcostrate>(context.promx_internalcostrateSet);
                WriteAllAttribute<promx_invoice_relateto_project>(context.promx_invoice_relateto_projectSet);
                WriteAllAttribute<promx_item>(context.promx_itemSet);
                WriteAllAttribute<promx_location>(context.promx_locationSet);
                WriteAllAttribute<promx_nonbusinessday_promx_project>(context.promx_nonbusinessday_promx_projectSet);
                WriteAllAttribute<promx_nonbusinessday>(context.promx_nonbusinessdaySet);
                WriteAllAttribute<promx_proglobalconfiguration>(context.promx_proglobalconfigurationSet);
                WriteAllAttribute<promx_projectrelation>(context.promx_projectrelationSet);
                WriteAllAttribute<promx_project>(context.promx_projectSet);
                WriteAllAttribute<promx_projecttemplate>(context.promx_projecttemplateSet);
                WriteAllAttribute<promx_projecttype>(context.promx_projecttypeSet);
                WriteAllAttribute<promx_promx_project_promx_activityrecordtype>(context.promx_promx_project_promx_activityrecordtypeSet);
                WriteAllAttribute<promx_promx_team_promx_employee>(context.promx_promx_team_promx_employeeSet);
                WriteAllAttribute<promx_promx_team_promx_project>(context.promx_promx_team_promx_projectSet);
                WriteAllAttribute<promx_proratetable>(context.promx_proratetableSet);
                WriteAllAttribute<promx_prositemap_resource_allocation>(context.promx_prositemap_resource_allocationSet);
                WriteAllAttribute<promx_report_skin>(context.promx_report_skinSet);
                WriteAllAttribute<promx_rmlitelicense>(context.promx_rmlitelicenseSet);
                WriteAllAttribute<promx_serviceitem>(context.promx_serviceitemSet);
                WriteAllAttribute<promx_serviceitemtype>(context.promx_serviceitemtypeSet);
                WriteAllAttribute<promx_sitemap_bulk_booking>(context.promx_sitemap_bulk_bookingSet);
                WriteAllAttribute<promx_sitemap_employee_gantt>(context.promx_sitemap_employee_ganttSet);
                WriteAllAttribute<promx_sitemap_fast_time_track>(context.promx_sitemap_fast_time_trackSet);
                WriteAllAttribute<promx_sitemap_gantt_chart>(context.promx_sitemap_gantt_chartSet);
                WriteAllAttribute<promx_sitemap_invoicing>(context.promx_sitemap_invoicingSet);
                WriteAllAttribute<promx_sitemap_project_cockpit>(context.promx_sitemap_project_cockpitSet);
                WriteAllAttribute<promx_sitemap_project_controlling>(context.promx_sitemap_project_controllingSet);
                WriteAllAttribute<promx_sitemap_project_planning>(context.promx_sitemap_project_planningSet);
                WriteAllAttribute<promx_sitemap_project_template_editor>(context.promx_sitemap_project_template_editorSet);
                WriteAllAttribute<promx_sitemap_project_tree>(context.promx_sitemap_project_treeSet);
                WriteAllAttribute<promx_sitemap_resource_planning>(context.promx_sitemap_resource_planningSet);
                WriteAllAttribute<promx_sitemap_rm>(context.promx_sitemap_rmSet);
                WriteAllAttribute<promx_sitemap_skill_management>(context.promx_sitemap_skill_managementSet);
                WriteAllAttribute<promx_sitemap_time_tracking_approval>(context.promx_sitemap_time_tracking_approvalSet);
                WriteAllAttribute<promx_sitemap_time_tracking_manager>(context.promx_sitemap_time_tracking_managerSet);
                WriteAllAttribute<promx_sitemap_time_tracking>(context.promx_sitemap_time_trackingSet);
                WriteAllAttribute<promx_sitemap_workload>(context.promx_sitemap_workloadSet);
                WriteAllAttribute<promx_skillassignment>(context.promx_skillassignmentSet);
                WriteAllAttribute<promx_skillcategory>(context.promx_skillcategorySet);
                WriteAllAttribute<promx_skill>(context.promx_skillSet);
                WriteAllAttribute<promx_team>(context.promx_teamSet);
                WriteAllAttribute<promx_timeunit>(context.promx_timeunitSet);
                WriteAllAttribute<promx_userconfiguration>(context.promx_userconfigurationSet);
                WriteAllAttribute<promx_valueaddedtax>(context.promx_valueaddedtaxSet);
                WriteAllAttribute<promx_workingtimemodel>(context.promx_workingtimemodelSet);
                
                
                WriteAllAttribute<AccountLeads>(context.AccountLeadsSet);
                WriteAllAttribute<Account>(context.AccountSet);
                WriteAllAttribute<ActivityMimeAttachment>(context.ActivityMimeAttachmentSet);
                WriteAllAttribute<ActivityParty>(context.ActivityPartySet);
                WriteAllAttribute<ActivityPointer>(context.ActivityPointerSet);
                WriteAllAttribute<Annotation>(context.AnnotationSet);
                WriteAllAttribute<AnnualFiscalCalendar>(context.AnnualFiscalCalendarSet);
                WriteAllAttribute<Appointment>(context.AppointmentSet);
                WriteAllAttribute<AsyncOperation>(context.AsyncOperationSet);
                WriteAllAttribute<AttributeMap>(context.AttributeMapSet);
                WriteAllAttribute<Audit>(context.AuditSet);
                WriteAllAttribute<BulkDeleteFailure>(context.BulkDeleteFailureSet);
                WriteAllAttribute<BulkDeleteOperation>(context.BulkDeleteOperationSet);
                WriteAllAttribute<BulkOperationLog>(context.BulkOperationLogSet);
                WriteAllAttribute<BulkOperation>(context.BulkOperationSet);
                WriteAllAttribute<BusinessUnitNewsArticle>(context.BusinessUnitNewsArticleSet);
                WriteAllAttribute<BusinessUnit>(context.BusinessUnitSet);
                WriteAllAttribute<Calendar>(context.CalendarSet);
                WriteAllAttribute<CampaignActivityItem>(context.CampaignActivityItemSet);
                WriteAllAttribute<CampaignActivity>(context.CampaignActivitySet);
                WriteAllAttribute<CampaignItem>(context.CampaignItemSet);
                WriteAllAttribute<CampaignResponse>(context.CampaignResponseSet);
                WriteAllAttribute<Campaign>(context.CampaignSet);
                WriteAllAttribute<ChannelPropertyGroup>(context.ChannelPropertyGroupSet);
                WriteAllAttribute<ChannelProperty>(context.ChannelPropertySet);
                WriteAllAttribute<ColumnMapping>(context.ColumnMappingSet);
                WriteAllAttribute<CompetitorProduct>(context.CompetitorProductSet);
                WriteAllAttribute<CompetitorSalesLiterature>(context.CompetitorSalesLiteratureSet);
                WriteAllAttribute<Competitor>(context.CompetitorSet);
                WriteAllAttribute<ConnectionRoleAssociation>(context.ConnectionRoleAssociationSet);
                WriteAllAttribute<ConnectionRoleObjectTypeCode>(context.ConnectionRoleObjectTypeCodeSet);
                WriteAllAttribute<ConnectionRole>(context.ConnectionRoleSet);
                WriteAllAttribute<Connection>(context.ConnectionSet);
                WriteAllAttribute<ConstraintBasedGroup>(context.ConstraintBasedGroupSet);
                WriteAllAttribute<ContactInvoices>(context.ContactInvoicesSet);
                WriteAllAttribute<ContactLeads>(context.ContactLeadsSet);
                WriteAllAttribute<ContactOrders>(context.ContactOrdersSet);
                WriteAllAttribute<ContactQuotes>(context.ContactQuotesSet);
                WriteAllAttribute<Contact>(context.ContactSet);
                WriteAllAttribute<ContractDetail>(context.ContractDetailSet);
                WriteAllAttribute<Contract>(context.ContractSet);
                WriteAllAttribute<ContractTemplate>(context.ContractTemplateSet);
                WriteAllAttribute<ConvertRuleItem>(context.ConvertRuleItemSet);
                WriteAllAttribute<ConvertRule>(context.ConvertRuleSet);
                WriteAllAttribute<CustomerAddress>(context.CustomerAddressSet);
                WriteAllAttribute<CustomerOpportunityRole>(context.CustomerOpportunityRoleSet);
                WriteAllAttribute<CustomerRelationship>(context.CustomerRelationshipSet);
                WriteAllAttribute<Dependency>(context.DependencySet);
                WriteAllAttribute<Discount>(context.DiscountSet);
                WriteAllAttribute<DiscountType>(context.DiscountTypeSet);
                WriteAllAttribute<DisplayString>(context.DisplayStringSet);
                WriteAllAttribute<DuplicateRecord>(context.DuplicateRecordSet);
                WriteAllAttribute<DuplicateRuleCondition>(context.DuplicateRuleConditionSet);
                WriteAllAttribute<DuplicateRule>(context.DuplicateRuleSet);
                WriteAllAttribute<DynamicPropertyAssociation>(context.DynamicPropertyAssociationSet);
                WriteAllAttribute<DynamicPropertyInstance>(context.DynamicPropertyInstanceSet);
                WriteAllAttribute<DynamicPropertyOptionSetItem>(context.DynamicPropertyOptionSetItemSet);
                WriteAllAttribute<DynamicProperty>(context.DynamicPropertySet);
                WriteAllAttribute<EmailServerProfile>(context.EmailServerProfileSet);
                WriteAllAttribute<Email>(context.EmailSet);
                WriteAllAttribute<EntitlementChannel>(context.EntitlementChannelSet);
                WriteAllAttribute<EntitlementContacts>(context.EntitlementContactsSet);
                WriteAllAttribute<EntitlementProducts>(context.EntitlementProductsSet);
                WriteAllAttribute<Entitlement>(context.EntitlementSet);
                WriteAllAttribute<EntitlementTemplateChannel>(context.EntitlementTemplateChannelSet);
                WriteAllAttribute<EntitlementTemplateProducts>(context.EntitlementTemplateProductsSet);
                WriteAllAttribute<EntitlementTemplate>(context.EntitlementTemplateSet);
                WriteAllAttribute<EntityMap>(context.EntityMapSet);
                WriteAllAttribute<Equipment>(context.EquipmentSet);
                WriteAllAttribute<ExchangeSyncIdMapping>(context.ExchangeSyncIdMappingSet);
                WriteAllAttribute<Fax>(context.FaxSet);
                WriteAllAttribute<FieldPermission>(context.FieldPermissionSet);
                WriteAllAttribute<FieldSecurityProfile>(context.FieldSecurityProfileSet);
                WriteAllAttribute<FixedMonthlyFiscalCalendar>(context.FixedMonthlyFiscalCalendarSet);
                WriteAllAttribute<GoalRollupQuery>(context.GoalRollupQuerySet);
                WriteAllAttribute<Goal>(context.GoalSet);
                WriteAllAttribute<HierarchyRule>(context.HierarchyRuleSet);
                WriteAllAttribute<HierarchySecurityConfiguration>(context.HierarchySecurityConfigurationSet);
                WriteAllAttribute<ImportEntityMapping>(context.ImportEntityMappingSet);
                WriteAllAttribute<ImportFile>(context.ImportFileSet);
                WriteAllAttribute<ImportJob>(context.ImportJobSet);
                WriteAllAttribute<ImportLog>(context.ImportLogSet);
                WriteAllAttribute<ImportMap>(context.ImportMapSet);
                WriteAllAttribute<Import>(context.ImportSet);
                WriteAllAttribute<IncidentKnowledgeBaseRecord>(context.IncidentKnowledgeBaseRecordSet);
                WriteAllAttribute<IncidentResolution>(context.IncidentResolutionSet);
                WriteAllAttribute<Incident>(context.IncidentSet);
                WriteAllAttribute<InvalidDependency>(context.InvalidDependencySet);
                WriteAllAttribute<InvoiceDetail>(context.InvoiceDetailSet);
                WriteAllAttribute<Invoice>(context.InvoiceSet);
                WriteAllAttribute<IsvConfig>(context.IsvConfigSet);
                WriteAllAttribute<KbArticleComment>(context.KbArticleCommentSet);
                WriteAllAttribute<KbArticle>(context.KbArticleSet);
                WriteAllAttribute<KbArticleTemplate>(context.KbArticleTemplateSet);
                WriteAllAttribute<KnowledgeBaseRecord>(context.KnowledgeBaseRecordSet);
                WriteAllAttribute<LeadAddress>(context.LeadAddressSet);
                WriteAllAttribute<LeadCompetitors>(context.LeadCompetitorsSet);
                WriteAllAttribute<LeadProduct>(context.LeadProductSet);
                WriteAllAttribute<Lead>(context.LeadSet);
                WriteAllAttribute<Letter>(context.LetterSet);
                WriteAllAttribute<License>(context.LicenseSet);
                WriteAllAttribute<ListMember>(context.ListMemberSet);
                WriteAllAttribute<List>(context.ListSet);

                
                WriteAllAttribute<LookUpMapping>(context.LookUpMappingSet);
                
                
                    WriteAllAttribute<Mailbox>(context.MailboxSet);
                    WriteAllAttribute<MailboxStatistics>(context.MailboxStatisticsSet);
                    WriteAllAttribute<MailboxTrackingFolder>(context.MailboxTrackingFolderSet);
                    WriteAllAttribute<MailMergeTemplate>(context.MailMergeTemplateSet);
                    WriteAllAttribute<Metric>(context.MetricSet);
                    WriteAllAttribute<MonthlyFiscalCalendar>(context.MonthlyFiscalCalendarSet);
                    WriteAllAttribute<msdyn_new_baselineprojections_knowledgeba>(context.msdyn_new_baselineprojections_knowledgebaSet);
                    WriteAllAttribute<msdyn_new_cofinancing_knowledgebaserecord>(context.msdyn_new_cofinancing_knowledgebaserecordSet);
                    WriteAllAttribute<msdyn_new_commercialcofinancign_knowledge>(context.msdyn_new_commercialcofinancign_knowledgeSet);
                    WriteAllAttribute<msdyn_new_covenants_knowledgebaserecord>(context.msdyn_new_covenants_knowledgebaserecordSet);
                    WriteAllAttribute<msdyn_new_createnewrecord_knowledgebasere>(context.msdyn_new_createnewrecord_knowledgebasereSet);
                    WriteAllAttribute<Resource>(context.ResourceSet);
                    WriteAllAttribute<promx_promx_team_promx_employee>(context.promx_promx_team_promx_employeeSet);
                
                */


            }
            string[] files = Directory.GetFiles(@"C:\Users\VD2\AttribLogs\");
            foreach (string f in files)
            {
                string content = File.ReadAllText(f);
                if (content.Contains(id) || content.Contains(id2))
                {
                    Console.WriteLine("Found in {0}", f);
                    Console.ReadLine();
                }
            }
            

        }

        static void WriteAllAttribute<T>(IQueryable<T> list) where T : Microsoft.Xrm.Client.CrmEntity
        {
                StringBuilder builder = new StringBuilder();
                foreach (var item in list)
                {
                    try
                    {
                        builder.AppendFormat("========================================================{0}", Environment.NewLine);
                        builder.AppendFormat("Entity ID : {0}{1}", item.Id, Environment.NewLine);

                        AttributeCollection attrs = item.Attributes;
                        foreach (var a in attrs)
                        {
                            if (a.Value is EntityReference)
                            {
                                builder.AppendLine("=============EntityReference===============");
                                EntityReference r = a.Value as EntityReference;
                                if (r != null)
                                {
                                    builder.AppendLine(r.LogicalName);
                                }
                                builder.AppendLine("=============EntityReference===============");
                            }

                            Console.WriteLine("{0} - {1}", a.Key, a.Value.ToString());
                            builder.AppendFormat("{0} - {1}{2}", a.Key, a.Value.ToString(), Environment.NewLine);
                        }
                        builder.AppendFormat("========================================================{0}", Environment.NewLine);
                        File.AppendAllText(string.Format(@"C:\Users\VD2\AttribLogs\{0}.txt", typeof(T).ToString()), builder.ToString());
                        builder.Clear();
                    }
                    catch (Exception)
                    {
                        //swallow
                    }

                    
                }
                
                
                
                
                Console.WriteLine("Done Writing");
            
        }
    }
}
