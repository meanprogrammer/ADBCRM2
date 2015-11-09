<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm_LinqDataSource.aspx.cs" Inherits="WebAppWalkthrough.WebForm_LinqDataSource" %>

<asp:Content ContentPlaceHolderID="HeadContent" runat="server" >
</asp:Content>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
	<!--This example lists all contacts from the CRM system -->
	<asp:LinqDataSource ID="Contacts" ContextTypeName="Xrm.XrmServiceContext" TableName="OpportunitySet" runat="server" EntityTypeName="" />
	<asp:GridView DataSourceID="Contacts" AutoGenerateColumns="False" runat="server">
		<Columns>
			<asp:BoundField DataField="ActualCloseDate" HeaderText="ActualCloseDate" SortExpression="ActualCloseDate" />
            <asp:BoundField DataField="ActualValue" HeaderText="ActualValue" SortExpression="ActualValue" />
            <asp:BoundField DataField="ActualValue_Base" HeaderText="ActualValue_Base" ReadOnly="True" SortExpression="ActualValue_Base" />
            <asp:BoundField DataField="BudgetAmount" HeaderText="BudgetAmount" SortExpression="BudgetAmount" />
            <asp:BoundField DataField="BudgetAmount_Base" HeaderText="BudgetAmount_Base" ReadOnly="True" SortExpression="BudgetAmount_Base" />
            <asp:BoundField DataField="BudgetStatus" HeaderText="BudgetStatus" SortExpression="BudgetStatus" />
            <asp:CheckBoxField DataField="CaptureProposalFeedback" HeaderText="CaptureProposalFeedback" SortExpression="CaptureProposalFeedback" />
            <asp:BoundField DataField="CloseProbability" HeaderText="CloseProbability" SortExpression="CloseProbability" />
            <asp:CheckBoxField DataField="CompleteFinalProposal" HeaderText="CompleteFinalProposal" SortExpression="CompleteFinalProposal" />
            <asp:CheckBoxField DataField="CompleteInternalReview" HeaderText="CompleteInternalReview" SortExpression="CompleteInternalReview" />
            <asp:CheckBoxField DataField="ConfirmInterest" HeaderText="ConfirmInterest" SortExpression="ConfirmInterest" />
            <asp:BoundField DataField="CreatedOn" HeaderText="CreatedOn" ReadOnly="True" SortExpression="CreatedOn" />
            <asp:BoundField DataField="CurrentSituation" HeaderText="CurrentSituation" SortExpression="CurrentSituation" />
            <asp:BoundField DataField="CustomerNeed" HeaderText="CustomerNeed" SortExpression="CustomerNeed" />
            <asp:BoundField DataField="CustomerPainPoints" HeaderText="CustomerPainPoints" SortExpression="CustomerPainPoints" />
            <asp:CheckBoxField DataField="DecisionMaker" HeaderText="DecisionMaker" SortExpression="DecisionMaker" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:CheckBoxField DataField="DevelopProposal" HeaderText="DevelopProposal" SortExpression="DevelopProposal" />
            <asp:BoundField DataField="DiscountAmount" HeaderText="DiscountAmount" SortExpression="DiscountAmount" />
            <asp:BoundField DataField="DiscountAmount_Base" HeaderText="DiscountAmount_Base" ReadOnly="True" SortExpression="DiscountAmount_Base" />
            <asp:BoundField DataField="DiscountPercentage" HeaderText="DiscountPercentage" SortExpression="DiscountPercentage" />
            <asp:BoundField DataField="EstimatedCloseDate" HeaderText="EstimatedCloseDate" SortExpression="EstimatedCloseDate" />
            <asp:BoundField DataField="EstimatedValue" HeaderText="EstimatedValue" SortExpression="EstimatedValue" />
            <asp:BoundField DataField="EstimatedValue_Base" HeaderText="EstimatedValue_Base" ReadOnly="True" SortExpression="EstimatedValue_Base" />
            <asp:CheckBoxField DataField="EvaluateFit" HeaderText="EvaluateFit" SortExpression="EvaluateFit" />
            <asp:BoundField DataField="ExchangeRate" HeaderText="ExchangeRate" ReadOnly="True" SortExpression="ExchangeRate" />
            <asp:CheckBoxField DataField="FileDebrief" HeaderText="FileDebrief" SortExpression="FileDebrief" />
            <asp:BoundField DataField="FinalDecisionDate" HeaderText="FinalDecisionDate" SortExpression="FinalDecisionDate" />
            <asp:BoundField DataField="FreightAmount" HeaderText="FreightAmount" SortExpression="FreightAmount" />
            <asp:BoundField DataField="FreightAmount_Base" HeaderText="FreightAmount_Base" ReadOnly="True" SortExpression="FreightAmount_Base" />
            <asp:CheckBoxField DataField="IdentifyCompetitors" HeaderText="IdentifyCompetitors" SortExpression="IdentifyCompetitors" />
            <asp:CheckBoxField DataField="IdentifyCustomerContacts" HeaderText="IdentifyCustomerContacts" SortExpression="IdentifyCustomerContacts" />
            <asp:CheckBoxField DataField="IdentifyPursuitTeam" HeaderText="IdentifyPursuitTeam" SortExpression="IdentifyPursuitTeam" />
            <asp:BoundField DataField="ImportSequenceNumber" HeaderText="ImportSequenceNumber" SortExpression="ImportSequenceNumber" />
            <asp:BoundField DataField="InitialCommunication" HeaderText="InitialCommunication" SortExpression="InitialCommunication" />
            <asp:CheckBoxField DataField="IsRevenueSystemCalculated" HeaderText="IsRevenueSystemCalculated" SortExpression="IsRevenueSystemCalculated" />
            <asp:BoundField DataField="ModifiedOn" HeaderText="ModifiedOn" ReadOnly="True" SortExpression="ModifiedOn" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Need" HeaderText="Need" SortExpression="Need" />
            <asp:BoundField DataField="new_ADBAmount" HeaderText="new_ADBAmount" SortExpression="new_ADBAmount" />
            <asp:BoundField DataField="new_ADBSource" HeaderText="new_ADBSource" SortExpression="new_ADBSource" />
            <asp:CheckBoxField DataField="new_AdditionalFinancing" HeaderText="new_AdditionalFinancing" SortExpression="new_AdditionalFinancing" />
            <asp:BoundField DataField="new_AddProjectClassification" HeaderText="new_AddProjectClassification" SortExpression="new_AddProjectClassification" />
            <asp:BoundField DataField="new_AddSafeguardsCategorization" HeaderText="new_AddSafeguardsCategorization" SortExpression="new_AddSafeguardsCategorization" />
            <asp:CheckBoxField DataField="new_AddTeamMember" HeaderText="new_AddTeamMember" SortExpression="new_AddTeamMember" />
            <asp:BoundField DataField="new_AgreementSectionNo" HeaderText="new_AgreementSectionNo" SortExpression="new_AgreementSectionNo" />
            <asp:BoundField DataField="new_ApprovalLevel" HeaderText="new_ApprovalLevel" SortExpression="new_ApprovalLevel" />
            <asp:BoundField DataField="new_AssistanceType" HeaderText="new_AssistanceType" SortExpression="new_AssistanceType" />
            <asp:BoundField DataField="new_AttachConceptPaper" HeaderText="new_AttachConceptPaper" SortExpression="new_AttachConceptPaper" />
            <asp:BoundField DataField="new_AttachPAM" HeaderText="new_AttachPAM" SortExpression="new_AttachPAM" />
            <asp:CheckBoxField DataField="new_AttachProjectDocument" HeaderText="new_AttachProjectDocument" SortExpression="new_AttachProjectDocument" />
            <asp:BoundField DataField="new_AttachRRP" HeaderText="new_AttachRRP" SortExpression="new_AttachRRP" />
            <asp:BoundField DataField="new_Borrower" HeaderText="new_Borrower" SortExpression="new_Borrower" />
            <asp:BoundField DataField="new_CategoryType" HeaderText="new_CategoryType" SortExpression="new_CategoryType" />
            <asp:BoundField DataField="new_Cofinance" HeaderText="new_Cofinance" SortExpression="new_Cofinance" />
            <asp:BoundField DataField="new_cofinance_Base" HeaderText="new_cofinance_Base" ReadOnly="True" SortExpression="new_cofinance_Base" />
            <asp:BoundField DataField="new_CompiledDate" HeaderText="new_CompiledDate" SortExpression="new_CompiledDate" />
            <asp:BoundField DataField="new_ConductMRM" HeaderText="new_ConductMRM" SortExpression="new_ConductMRM" />
            <asp:BoundField DataField="new_Country" HeaderText="new_Country" SortExpression="new_Country" />
            <asp:BoundField DataField="new_CRPICM" HeaderText="new_CRPICM" SortExpression="new_CRPICM" />
            <asp:BoundField DataField="new_Department" HeaderText="new_Department" SortExpression="new_Department" />
            <asp:BoundField DataField="new_Division" HeaderText="new_Division" SortExpression="new_Division" />
            <asp:BoundField DataField="new_DivisionRole" HeaderText="new_DivisionRole" SortExpression="new_DivisionRole" />
            <asp:BoundField DataField="new_DVACofinancingAmount" HeaderText="new_DVACofinancingAmount" ReadOnly="True" SortExpression="new_DVACofinancingAmount" />
            <asp:BoundField DataField="new_EffectivenessDate" HeaderText="new_EffectivenessDate" SortExpression="new_EffectivenessDate" />
            <asp:BoundField DataField="new_ExpectedApprovalYear" HeaderText="new_ExpectedApprovalYear" SortExpression="new_ExpectedApprovalYear" />
            <asp:BoundField DataField="new_FinalReviewICM" HeaderText="new_FinalReviewICM" SortExpression="new_FinalReviewICM" />
            <asp:BoundField DataField="new_Funder" HeaderText="new_Funder" SortExpression="new_Funder" />
            <asp:BoundField DataField="new_FundSource" HeaderText="new_FundSource" SortExpression="new_FundSource" />
            <asp:BoundField DataField="new_Govt" HeaderText="new_Govt" SortExpression="new_Govt" />
            <asp:BoundField DataField="new_govt_Base" HeaderText="new_govt_Base" ReadOnly="True" SortExpression="new_govt_Base" />
            <asp:BoundField DataField="new_Grants" HeaderText="new_Grants" SortExpression="new_Grants" />
            <asp:BoundField DataField="new_grants_Base" HeaderText="new_grants_Base" ReadOnly="True" SortExpression="new_grants_Base" />
            <asp:CheckBoxField DataField="new_Guarantee" HeaderText="new_Guarantee" SortExpression="new_Guarantee" />
            <asp:BoundField DataField="new_IndicativeProduct" HeaderText="new_IndicativeProduct" SortExpression="new_IndicativeProduct" />
            <asp:BoundField DataField="new_LastPDSUpdate" HeaderText="new_LastPDSUpdate" SortExpression="new_LastPDSUpdate" />
            <asp:BoundField DataField="new_LetterofNoObjection" HeaderText="new_LetterofNoObjection" SortExpression="new_LetterofNoObjection" />
            <asp:BoundField DataField="new_Loans" HeaderText="new_Loans" SortExpression="new_Loans" />
            <asp:BoundField DataField="new_loans_Base" HeaderText="new_loans_Base" ReadOnly="True" SortExpression="new_loans_Base" />
            <asp:BoundField DataField="new_M_ConceptClearance" HeaderText="new_M_ConceptClearance" SortExpression="new_M_ConceptClearance" />
            <asp:BoundField DataField="new_MApprovalDate" HeaderText="new_MApprovalDate" SortExpression="new_MApprovalDate" />
            <asp:BoundField DataField="new_MEffectivityDate" HeaderText="new_MEffectivityDate" SortExpression="new_MEffectivityDate" />
            <asp:BoundField DataField="new_MFactFinding" HeaderText="new_MFactFinding" SortExpression="new_MFactFinding" />
            <asp:BoundField DataField="new_MMRM" HeaderText="new_MMRM" SortExpression="new_MMRM" />
            <asp:BoundField DataField="new_ModeofFinancialAssistance" HeaderText="new_ModeofFinancialAssistance" SortExpression="new_ModeofFinancialAssistance" />
            <asp:BoundField DataField="new_MSigningDate" HeaderText="new_MSigningDate" SortExpression="new_MSigningDate" />
            <asp:BoundField DataField="new_NonDVACofinancingAmount" HeaderText="new_NonDVACofinancingAmount" ReadOnly="True" SortExpression="new_NonDVACofinancingAmount" />
            <asp:BoundField DataField="new_NSCoreSector" HeaderText="new_NSCoreSector" SortExpression="new_NSCoreSector" />
            <asp:BoundField DataField="new_NSOProcessingCategory" HeaderText="new_NSOProcessingCategory" SortExpression="new_NSOProcessingCategory" />
            <asp:BoundField DataField="new_NSProjectType" HeaderText="new_NSProjectType" SortExpression="new_NSProjectType" />
            <asp:BoundField DataField="new_OCR" HeaderText="new_OCR" SortExpression="new_OCR" />
            <asp:BoundField DataField="new_ocr_Base" HeaderText="new_ocr_Base" ReadOnly="True" SortExpression="new_ocr_Base" />
            <asp:BoundField DataField="new_OtherAmount" HeaderText="new_OtherAmount" SortExpression="new_OtherAmount" />
            <asp:BoundField DataField="new_OtherSource" HeaderText="new_OtherSource" SortExpression="new_OtherSource" />
            <asp:BoundField DataField="new_ParagraphNo" HeaderText="new_ParagraphNo" SortExpression="new_ParagraphNo" />
            <asp:CheckBoxField DataField="new_PercentFinancing" HeaderText="new_PercentFinancing" SortExpression="new_PercentFinancing" />
            <asp:BoundField DataField="new_PipelineCategory" HeaderText="new_PipelineCategory" SortExpression="new_PipelineCategory" />
            <asp:BoundField DataField="new_PRFApproval" HeaderText="new_PRFApproval" SortExpression="new_PRFApproval" />
            <asp:BoundField DataField="new_PrimaryTheme" HeaderText="new_PrimaryTheme" SortExpression="new_PrimaryTheme" />
            <asp:BoundField DataField="new_ProcessingCategory" HeaderText="new_ProcessingCategory" SortExpression="new_ProcessingCategory" />
            <asp:BoundField DataField="new_ProcessingScenario" HeaderText="new_ProcessingScenario" SortExpression="new_ProcessingScenario" />
            <asp:BoundField DataField="new_ProductType" HeaderText="new_ProductType" SortExpression="new_ProductType" />
            <asp:BoundField DataField="new_ProjectDescription" HeaderText="new_ProjectDescription" SortExpression="new_ProjectDescription" />
            <asp:BoundField DataField="new_ProjectEndDate" HeaderText="new_ProjectEndDate" SortExpression="new_ProjectEndDate" />
            <asp:BoundField DataField="new_ProjectGroupName" HeaderText="new_ProjectGroupName" SortExpression="new_ProjectGroupName" />
            <asp:BoundField DataField="new_ProjectName" HeaderText="new_ProjectName" SortExpression="new_ProjectName" />
            <asp:BoundField DataField="new_ProjectNumber" HeaderText="new_ProjectNumber" SortExpression="new_ProjectNumber" />
            <asp:BoundField DataField="new_ProjectRationale" HeaderText="new_ProjectRationale" SortExpression="new_ProjectRationale" />
            <asp:BoundField DataField="new_ProjectSource" HeaderText="new_ProjectSource" SortExpression="new_ProjectSource" />
            <asp:BoundField DataField="new_ProjectStage" HeaderText="new_ProjectStage" SortExpression="new_ProjectStage" />
            <asp:BoundField DataField="new_Rating" HeaderText="new_Rating" SortExpression="new_Rating" />
            <asp:BoundField DataField="new_Region" HeaderText="new_Region" SortExpression="new_Region" />
            <asp:BoundField DataField="new_Remarks" HeaderText="new_Remarks" SortExpression="new_Remarks" />
            <asp:BoundField DataField="new_ResponsibleDivision" HeaderText="new_ResponsibleDivision" SortExpression="new_ResponsibleDivision" />
            <asp:BoundField DataField="new_RRPApproval" HeaderText="new_RRPApproval" SortExpression="new_RRPApproval" />
            <asp:BoundField DataField="new_Sector" HeaderText="new_Sector" SortExpression="new_Sector" />
            <asp:BoundField DataField="new_SetupBaseline" HeaderText="new_SetupBaseline" SortExpression="new_SetupBaseline" />
            <asp:BoundField DataField="new_SetupCovenants" HeaderText="new_SetupCovenants" SortExpression="new_SetupCovenants" />
            <asp:BoundField DataField="new_SigningDate" HeaderText="new_SigningDate" SortExpression="new_SigningDate" />
            <asp:BoundField DataField="new_SO_ADB" HeaderText="new_SO_ADB" ReadOnly="True" SortExpression="new_SO_ADB" />
            <asp:BoundField DataField="new_SO_ADBSubsectorAllocated" HeaderText="new_SO_ADBSubsectorAllocated" ReadOnly="True" SortExpression="new_SO_ADBSubsectorAllocated" />
            <asp:BoundField DataField="new_SO_Cofinancing" HeaderText="new_SO_Cofinancing" ReadOnly="True" SortExpression="new_SO_Cofinancing" />
            <asp:BoundField DataField="new_SO_Counterpart" HeaderText="new_SO_Counterpart" ReadOnly="True" SortExpression="new_SO_Counterpart" />
            <asp:BoundField DataField="new_SO_TotalProjectFinancing" HeaderText="new_SO_TotalProjectFinancing" ReadOnly="True" SortExpression="new_SO_TotalProjectFinancing" />
            <asp:BoundField DataField="new_StepStatus" HeaderText="new_StepStatus" SortExpression="new_StepStatus" />
            <asp:BoundField DataField="new_StrategicAgenda" HeaderText="new_StrategicAgenda" SortExpression="new_StrategicAgenda" />
            <asp:BoundField DataField="new_SubmitAFSAPA" HeaderText="new_SubmitAFSAPA" SortExpression="new_SubmitAFSAPA" />
            <asp:BoundField DataField="new_SubmitChangeRequest" HeaderText="new_SubmitChangeRequest" SortExpression="new_SubmitChangeRequest" />
            <asp:CheckBoxField DataField="new_SubmittoDirector" HeaderText="new_SubmittoDirector" SortExpression="new_SubmittoDirector" />
            <asp:BoundField DataField="new_SubSector" HeaderText="new_SubSector" SortExpression="new_SubSector" />
            <asp:BoundField DataField="new_SubTotal" HeaderText="new_SubTotal" SortExpression="new_SubTotal" />
            <asp:BoundField DataField="new_subtotal_Base" HeaderText="new_subtotal_Base" ReadOnly="True" SortExpression="new_subtotal_Base" />
            <asp:BoundField DataField="new_TargetClassification" HeaderText="new_TargetClassification" SortExpression="new_TargetClassification" />
            <asp:BoundField DataField="new_Total" HeaderText="new_Total" SortExpression="new_Total" />
            <asp:BoundField DataField="new_total_Base" HeaderText="new_total_Base" ReadOnly="True" SortExpression="new_total_Base" />
            <asp:BoundField DataField="new_TotalCofinancingAmount" HeaderText="new_TotalCofinancingAmount" ReadOnly="True" SortExpression="new_TotalCofinancingAmount" />
            <asp:CheckBoxField DataField="new_Update" HeaderText="new_Update" SortExpression="new_Update" />
            <asp:CheckBoxField DataField="new_UpdateDMF" HeaderText="new_UpdateDMF" SortExpression="new_UpdateDMF" />
            <asp:BoundField DataField="new_UpdateDMFProgress" HeaderText="new_UpdateDMFProgress" SortExpression="new_UpdateDMFProgress" />
            <asp:BoundField DataField="new_UpdateProjectClassification" HeaderText="new_UpdateProjectClassification" SortExpression="new_UpdateProjectClassification" />
            <asp:BoundField DataField="new_UpdateProjectInformation" HeaderText="new_UpdateProjectInformation" SortExpression="new_UpdateProjectInformation" />
            <asp:CheckBoxField DataField="new_UpdateProjectOverview" HeaderText="new_UpdateProjectOverview" SortExpression="new_UpdateProjectOverview" />
            <asp:BoundField DataField="new_UpdateSafeguardsCategorization" HeaderText="new_UpdateSafeguardsCategorization" SortExpression="new_UpdateSafeguardsCategorization" />
            <asp:BoundField DataField="new_UpdateTechIssuesProblem" HeaderText="new_UpdateTechIssuesProblem" SortExpression="new_UpdateTechIssuesProblem" />
            <asp:BoundField DataField="new_UploadApprovedNegotiationMin" HeaderText="new_UploadApprovedNegotiationMin" SortExpression="new_UploadApprovedNegotiationMin" />
            <asp:CheckBoxField DataField="new_UploadApprovedNegotiationMinutes" HeaderText="new_UploadApprovedNegotiationMinutes" SortExpression="new_UploadApprovedNegotiationMinutes" />
            <asp:BoundField DataField="new_UploadClearanceonLegalAgreemnt" HeaderText="new_UploadClearanceonLegalAgreemnt" SortExpression="new_UploadClearanceonLegalAgreemnt" />
            <asp:BoundField DataField="new_UploadConfirmationofLoanEffectivenss" HeaderText="new_UploadConfirmationofLoanEffectivenss" SortExpression="new_UploadConfirmationofLoanEffectivenss" />
            <asp:CheckBoxField DataField="new_UploadDraftLegalAgreement" HeaderText="new_UploadDraftLegalAgreement" SortExpression="new_UploadDraftLegalAgreement" />
            <asp:BoundField DataField="new_UploadDraftLegalAgreemnt" HeaderText="new_UploadDraftLegalAgreemnt" SortExpression="new_UploadDraftLegalAgreemnt" />
            <asp:BoundField DataField="new_UploadMRMMin" HeaderText="new_UploadMRMMin" SortExpression="new_UploadMRMMin" />
            <asp:BoundField DataField="new_UploadRRPDoc" HeaderText="new_UploadRRPDoc" SortExpression="new_UploadRRPDoc" />
            <asp:BoundField DataField="new_UploadSignedLegalAgreemnt" HeaderText="new_UploadSignedLegalAgreemnt" SortExpression="new_UploadSignedLegalAgreemnt" />
            <asp:BoundField DataField="new_XARR" HeaderText="new_XARR" SortExpression="new_XARR" />
            <asp:BoundField DataField="new_Year" HeaderText="new_Year" SortExpression="new_Year" />
            <asp:BoundField DataField="new_YearofPPTA" HeaderText="new_YearofPPTA" SortExpression="new_YearofPPTA" />
            <asp:BoundField DataField="OpportunityId" HeaderText="OpportunityId" SortExpression="OpportunityId" />
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
            <asp:BoundField DataField="OpportunityRatingCode" HeaderText="OpportunityRatingCode" SortExpression="OpportunityRatingCode" />
            <asp:BoundField DataField="OverriddenCreatedOn" HeaderText="OverriddenCreatedOn" SortExpression="OverriddenCreatedOn" />
            <asp:CheckBoxField DataField="ParticipatesInWorkflow" HeaderText="ParticipatesInWorkflow" SortExpression="ParticipatesInWorkflow" />
            <asp:CheckBoxField DataField="PresentFinalProposal" HeaderText="PresentFinalProposal" SortExpression="PresentFinalProposal" />
            <asp:CheckBoxField DataField="PresentProposal" HeaderText="PresentProposal" SortExpression="PresentProposal" />
            <asp:BoundField DataField="PricingErrorCode" HeaderText="PricingErrorCode" SortExpression="PricingErrorCode" />
            <asp:BoundField DataField="PriorityCode" HeaderText="PriorityCode" SortExpression="PriorityCode" />
            <asp:BoundField DataField="ProcessId" HeaderText="ProcessId" SortExpression="ProcessId" />
            <asp:BoundField DataField="ProposedSolution" HeaderText="ProposedSolution" SortExpression="ProposedSolution" />
            <asp:BoundField DataField="PurchaseProcess" HeaderText="PurchaseProcess" SortExpression="PurchaseProcess" />
            <asp:BoundField DataField="PurchaseTimeframe" HeaderText="PurchaseTimeframe" SortExpression="PurchaseTimeframe" />
            <asp:CheckBoxField DataField="PursuitDecision" HeaderText="PursuitDecision" SortExpression="PursuitDecision" />
            <asp:BoundField DataField="QualificationComments" HeaderText="QualificationComments" SortExpression="QualificationComments" />
            <asp:BoundField DataField="QuoteComments" HeaderText="QuoteComments" SortExpression="QuoteComments" />
            <asp:CheckBoxField DataField="ResolveFeedback" HeaderText="ResolveFeedback" SortExpression="ResolveFeedback" />
            <asp:BoundField DataField="SalesStage" HeaderText="SalesStage" SortExpression="SalesStage" />
            <asp:BoundField DataField="SalesStageCode" HeaderText="SalesStageCode" SortExpression="SalesStageCode" />
            <asp:BoundField DataField="ScheduleFollowup_Prospect" HeaderText="ScheduleFollowup_Prospect" SortExpression="ScheduleFollowup_Prospect" />
            <asp:BoundField DataField="ScheduleFollowup_Qualify" HeaderText="ScheduleFollowup_Qualify" SortExpression="ScheduleFollowup_Qualify" />
            <asp:BoundField DataField="ScheduleProposalMeeting" HeaderText="ScheduleProposalMeeting" SortExpression="ScheduleProposalMeeting" />
            <asp:CheckBoxField DataField="SendThankYouNote" HeaderText="SendThankYouNote" SortExpression="SendThankYouNote" />
            <asp:BoundField DataField="StageId" HeaderText="StageId" SortExpression="StageId" />
            <asp:BoundField DataField="StateCode" HeaderText="StateCode" SortExpression="StateCode" />
            <asp:BoundField DataField="StatusCode" HeaderText="StatusCode" SortExpression="StatusCode" />
            <asp:BoundField DataField="StepId" HeaderText="StepId" SortExpression="StepId" />
            <asp:BoundField DataField="StepName" HeaderText="StepName" SortExpression="StepName" />
            <asp:BoundField DataField="TimeLine" HeaderText="TimeLine" SortExpression="TimeLine" />
            <asp:BoundField DataField="TimeZoneRuleVersionNumber" HeaderText="TimeZoneRuleVersionNumber" SortExpression="TimeZoneRuleVersionNumber" />
            <asp:BoundField DataField="TotalAmount" HeaderText="TotalAmount" SortExpression="TotalAmount" />
            <asp:BoundField DataField="TotalAmount_Base" HeaderText="TotalAmount_Base" ReadOnly="True" SortExpression="TotalAmount_Base" />
            <asp:BoundField DataField="TotalAmountLessFreight" HeaderText="TotalAmountLessFreight" SortExpression="TotalAmountLessFreight" />
            <asp:BoundField DataField="TotalAmountLessFreight_Base" HeaderText="TotalAmountLessFreight_Base" ReadOnly="True" SortExpression="TotalAmountLessFreight_Base" />
            <asp:BoundField DataField="TotalDiscountAmount" HeaderText="TotalDiscountAmount" SortExpression="TotalDiscountAmount" />
            <asp:BoundField DataField="TotalDiscountAmount_Base" HeaderText="TotalDiscountAmount_Base" ReadOnly="True" SortExpression="TotalDiscountAmount_Base" />
            <asp:BoundField DataField="TotalLineItemAmount" HeaderText="TotalLineItemAmount" SortExpression="TotalLineItemAmount" />
            <asp:BoundField DataField="TotalLineItemAmount_Base" HeaderText="TotalLineItemAmount_Base" ReadOnly="True" SortExpression="TotalLineItemAmount_Base" />
            <asp:BoundField DataField="TotalLineItemDiscountAmount" HeaderText="TotalLineItemDiscountAmount" SortExpression="TotalLineItemDiscountAmount" />
            <asp:BoundField DataField="TotalLineItemDiscountAmount_Base" HeaderText="TotalLineItemDiscountAmount_Base" ReadOnly="True" SortExpression="TotalLineItemDiscountAmount_Base" />
            <asp:BoundField DataField="TotalTax" HeaderText="TotalTax" SortExpression="TotalTax" />
            <asp:BoundField DataField="TotalTax_Base" HeaderText="TotalTax_Base" ReadOnly="True" SortExpression="TotalTax_Base" />
            <asp:BoundField DataField="TraversedPath" HeaderText="TraversedPath" SortExpression="TraversedPath" />
            <asp:BoundField DataField="UTCConversionTimeZoneCode" HeaderText="UTCConversionTimeZoneCode" SortExpression="UTCConversionTimeZoneCode" />
            <asp:BoundField DataField="VersionNumber" HeaderText="VersionNumber" ReadOnly="True" SortExpression="VersionNumber" />
            <asp:BoundField DataField="LogicalName" HeaderText="LogicalName" SortExpression="LogicalName" />
            <asp:BoundField DataField="EntityState" HeaderText="EntityState" SortExpression="EntityState" />
		</Columns>
	</asp:GridView>
</asp:Content>
