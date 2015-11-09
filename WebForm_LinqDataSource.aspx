<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm_LinqDataSource.aspx.cs" Inherits="WebAppWalkthrough.WebForm_LinqDataSource" %>

<asp:Content ContentPlaceHolderID="HeadContent" runat="server" >
</asp:Content>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
	<!--This example lists all contacts from the CRM system -->
	<asp:LinqDataSource ID="Contacts" ContextTypeName="Xrm.XrmServiceContext" TableName="ContactSet" runat="server" EntityTypeName="" />
	<asp:GridView DataSourceID="Contacts" AutoGenerateColumns="False" runat="server">
		<Columns>
			<asp:BoundField DataField="AccountRoleCode" HeaderText="AccountRoleCode" SortExpression="AccountRoleCode" />
            <asp:BoundField DataField="Address1_AddressId" HeaderText="Address1_AddressId" SortExpression="Address1_AddressId" />
            <asp:BoundField DataField="Address1_AddressTypeCode" HeaderText="Address1_AddressTypeCode" SortExpression="Address1_AddressTypeCode" />
            <asp:BoundField DataField="Address1_City" HeaderText="Address1_City" SortExpression="Address1_City" />
            <asp:BoundField DataField="Address1_Composite" HeaderText="Address1_Composite" ReadOnly="True" SortExpression="Address1_Composite" />
            <asp:BoundField DataField="Address1_Country" HeaderText="Address1_Country" SortExpression="Address1_Country" />
            <asp:BoundField DataField="Address1_County" HeaderText="Address1_County" SortExpression="Address1_County" />
            <asp:BoundField DataField="Address1_Fax" HeaderText="Address1_Fax" SortExpression="Address1_Fax" />
            <asp:BoundField DataField="Address1_FreightTermsCode" HeaderText="Address1_FreightTermsCode" SortExpression="Address1_FreightTermsCode" />
            <asp:BoundField DataField="Address1_Latitude" HeaderText="Address1_Latitude" SortExpression="Address1_Latitude" />
            <asp:BoundField DataField="Address1_Line1" HeaderText="Address1_Line1" SortExpression="Address1_Line1" />
            <asp:BoundField DataField="Address1_Line2" HeaderText="Address1_Line2" SortExpression="Address1_Line2" />
            <asp:BoundField DataField="Address1_Line3" HeaderText="Address1_Line3" SortExpression="Address1_Line3" />
            <asp:BoundField DataField="Address1_Longitude" HeaderText="Address1_Longitude" SortExpression="Address1_Longitude" />
            <asp:BoundField DataField="Address1_Name" HeaderText="Address1_Name" SortExpression="Address1_Name" />
            <asp:BoundField DataField="Address1_PostalCode" HeaderText="Address1_PostalCode" SortExpression="Address1_PostalCode" />
            <asp:BoundField DataField="Address1_PostOfficeBox" HeaderText="Address1_PostOfficeBox" SortExpression="Address1_PostOfficeBox" />
            <asp:BoundField DataField="Address1_PrimaryContactName" HeaderText="Address1_PrimaryContactName" SortExpression="Address1_PrimaryContactName" />
            <asp:BoundField DataField="Address1_ShippingMethodCode" HeaderText="Address1_ShippingMethodCode" SortExpression="Address1_ShippingMethodCode" />
            <asp:BoundField DataField="Address1_StateOrProvince" HeaderText="Address1_StateOrProvince" SortExpression="Address1_StateOrProvince" />
            <asp:BoundField DataField="Address1_Telephone1" HeaderText="Address1_Telephone1" SortExpression="Address1_Telephone1" />
            <asp:BoundField DataField="Address1_Telephone2" HeaderText="Address1_Telephone2" SortExpression="Address1_Telephone2" />
            <asp:BoundField DataField="Address1_Telephone3" HeaderText="Address1_Telephone3" SortExpression="Address1_Telephone3" />
            <asp:BoundField DataField="Address1_UPSZone" HeaderText="Address1_UPSZone" SortExpression="Address1_UPSZone" />
            <asp:BoundField DataField="Address1_UTCOffset" HeaderText="Address1_UTCOffset" SortExpression="Address1_UTCOffset" />
            <asp:BoundField DataField="Address2_AddressId" HeaderText="Address2_AddressId" SortExpression="Address2_AddressId" />
            <asp:BoundField DataField="Address2_AddressTypeCode" HeaderText="Address2_AddressTypeCode" SortExpression="Address2_AddressTypeCode" />
            <asp:BoundField DataField="Address2_City" HeaderText="Address2_City" SortExpression="Address2_City" />
            <asp:BoundField DataField="Address2_Composite" HeaderText="Address2_Composite" ReadOnly="True" SortExpression="Address2_Composite" />
            <asp:BoundField DataField="Address2_Country" HeaderText="Address2_Country" SortExpression="Address2_Country" />
            <asp:BoundField DataField="Address2_County" HeaderText="Address2_County" SortExpression="Address2_County" />
            <asp:BoundField DataField="Address2_Fax" HeaderText="Address2_Fax" SortExpression="Address2_Fax" />
            <asp:BoundField DataField="Address2_FreightTermsCode" HeaderText="Address2_FreightTermsCode" SortExpression="Address2_FreightTermsCode" />
            <asp:BoundField DataField="Address2_Latitude" HeaderText="Address2_Latitude" SortExpression="Address2_Latitude" />
            <asp:BoundField DataField="Address2_Line1" HeaderText="Address2_Line1" SortExpression="Address2_Line1" />
            <asp:BoundField DataField="Address2_Line2" HeaderText="Address2_Line2" SortExpression="Address2_Line2" />
            <asp:BoundField DataField="Address2_Line3" HeaderText="Address2_Line3" SortExpression="Address2_Line3" />
            <asp:BoundField DataField="Address2_Longitude" HeaderText="Address2_Longitude" SortExpression="Address2_Longitude" />
            <asp:BoundField DataField="Address2_Name" HeaderText="Address2_Name" SortExpression="Address2_Name" />
            <asp:BoundField DataField="Address2_PostalCode" HeaderText="Address2_PostalCode" SortExpression="Address2_PostalCode" />
            <asp:BoundField DataField="Address2_PostOfficeBox" HeaderText="Address2_PostOfficeBox" SortExpression="Address2_PostOfficeBox" />
            <asp:BoundField DataField="Address2_PrimaryContactName" HeaderText="Address2_PrimaryContactName" SortExpression="Address2_PrimaryContactName" />
            <asp:BoundField DataField="Address2_ShippingMethodCode" HeaderText="Address2_ShippingMethodCode" SortExpression="Address2_ShippingMethodCode" />
            <asp:BoundField DataField="Address2_StateOrProvince" HeaderText="Address2_StateOrProvince" SortExpression="Address2_StateOrProvince" />
            <asp:BoundField DataField="Address2_Telephone1" HeaderText="Address2_Telephone1" SortExpression="Address2_Telephone1" />
            <asp:BoundField DataField="Address2_Telephone2" HeaderText="Address2_Telephone2" SortExpression="Address2_Telephone2" />
            <asp:BoundField DataField="Address2_Telephone3" HeaderText="Address2_Telephone3" SortExpression="Address2_Telephone3" />
            <asp:BoundField DataField="Address2_UPSZone" HeaderText="Address2_UPSZone" SortExpression="Address2_UPSZone" />
            <asp:BoundField DataField="Address2_UTCOffset" HeaderText="Address2_UTCOffset" SortExpression="Address2_UTCOffset" />
            <asp:BoundField DataField="Address3_AddressId" HeaderText="Address3_AddressId" SortExpression="Address3_AddressId" />
            <asp:BoundField DataField="Address3_AddressTypeCode" HeaderText="Address3_AddressTypeCode" SortExpression="Address3_AddressTypeCode" />
            <asp:BoundField DataField="Address3_City" HeaderText="Address3_City" SortExpression="Address3_City" />
            <asp:BoundField DataField="Address3_Composite" HeaderText="Address3_Composite" ReadOnly="True" SortExpression="Address3_Composite" />
            <asp:BoundField DataField="Address3_Country" HeaderText="Address3_Country" SortExpression="Address3_Country" />
            <asp:BoundField DataField="Address3_County" HeaderText="Address3_County" SortExpression="Address3_County" />
            <asp:BoundField DataField="Address3_Fax" HeaderText="Address3_Fax" SortExpression="Address3_Fax" />
            <asp:BoundField DataField="Address3_FreightTermsCode" HeaderText="Address3_FreightTermsCode" SortExpression="Address3_FreightTermsCode" />
            <asp:BoundField DataField="Address3_Latitude" HeaderText="Address3_Latitude" SortExpression="Address3_Latitude" />
            <asp:BoundField DataField="Address3_Line1" HeaderText="Address3_Line1" SortExpression="Address3_Line1" />
            <asp:BoundField DataField="Address3_Line2" HeaderText="Address3_Line2" SortExpression="Address3_Line2" />
            <asp:BoundField DataField="Address3_Line3" HeaderText="Address3_Line3" SortExpression="Address3_Line3" />
            <asp:BoundField DataField="Address3_Longitude" HeaderText="Address3_Longitude" SortExpression="Address3_Longitude" />
            <asp:BoundField DataField="Address3_Name" HeaderText="Address3_Name" SortExpression="Address3_Name" />
            <asp:BoundField DataField="Address3_PostalCode" HeaderText="Address3_PostalCode" SortExpression="Address3_PostalCode" />
            <asp:BoundField DataField="Address3_PostOfficeBox" HeaderText="Address3_PostOfficeBox" SortExpression="Address3_PostOfficeBox" />
            <asp:BoundField DataField="Address3_PrimaryContactName" HeaderText="Address3_PrimaryContactName" SortExpression="Address3_PrimaryContactName" />
            <asp:BoundField DataField="Address3_ShippingMethodCode" HeaderText="Address3_ShippingMethodCode" SortExpression="Address3_ShippingMethodCode" />
            <asp:BoundField DataField="Address3_StateOrProvince" HeaderText="Address3_StateOrProvince" SortExpression="Address3_StateOrProvince" />
            <asp:BoundField DataField="Address3_Telephone1" HeaderText="Address3_Telephone1" SortExpression="Address3_Telephone1" />
            <asp:BoundField DataField="Address3_Telephone2" HeaderText="Address3_Telephone2" SortExpression="Address3_Telephone2" />
            <asp:BoundField DataField="Address3_Telephone3" HeaderText="Address3_Telephone3" SortExpression="Address3_Telephone3" />
            <asp:BoundField DataField="Address3_UPSZone" HeaderText="Address3_UPSZone" SortExpression="Address3_UPSZone" />
            <asp:BoundField DataField="Address3_UTCOffset" HeaderText="Address3_UTCOffset" SortExpression="Address3_UTCOffset" />
            <asp:BoundField DataField="Aging30" HeaderText="Aging30" ReadOnly="True" SortExpression="Aging30" />
            <asp:BoundField DataField="Aging30_Base" HeaderText="Aging30_Base" ReadOnly="True" SortExpression="Aging30_Base" />
            <asp:BoundField DataField="Aging60" HeaderText="Aging60" ReadOnly="True" SortExpression="Aging60" />
            <asp:BoundField DataField="Aging60_Base" HeaderText="Aging60_Base" ReadOnly="True" SortExpression="Aging60_Base" />
            <asp:BoundField DataField="Aging90" HeaderText="Aging90" ReadOnly="True" SortExpression="Aging90" />
            <asp:BoundField DataField="Aging90_Base" HeaderText="Aging90_Base" ReadOnly="True" SortExpression="Aging90_Base" />
            <asp:BoundField DataField="Anniversary" HeaderText="Anniversary" SortExpression="Anniversary" />
            <asp:BoundField DataField="AnnualIncome" HeaderText="AnnualIncome" SortExpression="AnnualIncome" />
            <asp:BoundField DataField="AnnualIncome_Base" HeaderText="AnnualIncome_Base" ReadOnly="True" SortExpression="AnnualIncome_Base" />
            <asp:BoundField DataField="AssistantName" HeaderText="AssistantName" SortExpression="AssistantName" />
            <asp:BoundField DataField="AssistantPhone" HeaderText="AssistantPhone" SortExpression="AssistantPhone" />
            <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
            <asp:BoundField DataField="Business2" HeaderText="Business2" SortExpression="Business2" />
            <asp:BoundField DataField="Callback" HeaderText="Callback" SortExpression="Callback" />
            <asp:BoundField DataField="ChildrensNames" HeaderText="ChildrensNames" SortExpression="ChildrensNames" />
            <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />
            <asp:BoundField DataField="ContactId" HeaderText="ContactId" SortExpression="ContactId" />
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
            <asp:BoundField DataField="CreatedOn" HeaderText="CreatedOn" ReadOnly="True" SortExpression="CreatedOn" />
            <asp:BoundField DataField="CreditLimit" HeaderText="CreditLimit" SortExpression="CreditLimit" />
            <asp:BoundField DataField="CreditLimit_Base" HeaderText="CreditLimit_Base" ReadOnly="True" SortExpression="CreditLimit_Base" />
            <asp:CheckBoxField DataField="CreditOnHold" HeaderText="CreditOnHold" SortExpression="CreditOnHold" />
            <asp:BoundField DataField="CustomerSizeCode" HeaderText="CustomerSizeCode" SortExpression="CustomerSizeCode" />
            <asp:BoundField DataField="CustomerTypeCode" HeaderText="CustomerTypeCode" SortExpression="CustomerTypeCode" />
            <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:CheckBoxField DataField="DoNotBulkEMail" HeaderText="DoNotBulkEMail" SortExpression="DoNotBulkEMail" />
            <asp:CheckBoxField DataField="DoNotBulkPostalMail" HeaderText="DoNotBulkPostalMail" SortExpression="DoNotBulkPostalMail" />
            <asp:CheckBoxField DataField="DoNotEMail" HeaderText="DoNotEMail" SortExpression="DoNotEMail" />
            <asp:CheckBoxField DataField="DoNotFax" HeaderText="DoNotFax" SortExpression="DoNotFax" />
            <asp:CheckBoxField DataField="DoNotPhone" HeaderText="DoNotPhone" SortExpression="DoNotPhone" />
            <asp:CheckBoxField DataField="DoNotPostalMail" HeaderText="DoNotPostalMail" SortExpression="DoNotPostalMail" />
            <asp:CheckBoxField DataField="DoNotSendMM" HeaderText="DoNotSendMM" SortExpression="DoNotSendMM" />
            <asp:BoundField DataField="EducationCode" HeaderText="EducationCode" SortExpression="EducationCode" />
            <asp:BoundField DataField="EMailAddress1" HeaderText="EMailAddress1" SortExpression="EMailAddress1" />
            <asp:BoundField DataField="EMailAddress2" HeaderText="EMailAddress2" SortExpression="EMailAddress2" />
            <asp:BoundField DataField="EMailAddress3" HeaderText="EMailAddress3" SortExpression="EMailAddress3" />
            <asp:BoundField DataField="EmployeeId" HeaderText="EmployeeId" SortExpression="EmployeeId" />
            <asp:BoundField DataField="EntityImage_Timestamp" HeaderText="EntityImage_Timestamp" ReadOnly="True" SortExpression="EntityImage_Timestamp" />
            <asp:BoundField DataField="EntityImage_URL" HeaderText="EntityImage_URL" ReadOnly="True" SortExpression="EntityImage_URL" />
            <asp:BoundField DataField="EntityImageId" HeaderText="EntityImageId" ReadOnly="True" SortExpression="EntityImageId" />
            <asp:BoundField DataField="ExchangeRate" HeaderText="ExchangeRate" ReadOnly="True" SortExpression="ExchangeRate" />
            <asp:BoundField DataField="ExternalUserIdentifier" HeaderText="ExternalUserIdentifier" SortExpression="ExternalUserIdentifier" />
            <asp:BoundField DataField="FamilyStatusCode" HeaderText="FamilyStatusCode" SortExpression="FamilyStatusCode" />
            <asp:BoundField DataField="Fax" HeaderText="Fax" SortExpression="Fax" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="FtpSiteUrl" HeaderText="FtpSiteUrl" SortExpression="FtpSiteUrl" />
            <asp:BoundField DataField="FullName" HeaderText="FullName" ReadOnly="True" SortExpression="FullName" />
            <asp:BoundField DataField="GenderCode" HeaderText="GenderCode" SortExpression="GenderCode" />
            <asp:BoundField DataField="GovernmentId" HeaderText="GovernmentId" SortExpression="GovernmentId" />
            <asp:BoundField DataField="HasChildrenCode" HeaderText="HasChildrenCode" SortExpression="HasChildrenCode" />
            <asp:BoundField DataField="Home2" HeaderText="Home2" SortExpression="Home2" />
            <asp:BoundField DataField="ImportSequenceNumber" HeaderText="ImportSequenceNumber" SortExpression="ImportSequenceNumber" />
            <asp:CheckBoxField DataField="IsBackofficeCustomer" HeaderText="IsBackofficeCustomer" SortExpression="IsBackofficeCustomer" />
            <asp:BoundField DataField="JobTitle" HeaderText="JobTitle" SortExpression="JobTitle" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="LastUsedInCampaign" HeaderText="LastUsedInCampaign" SortExpression="LastUsedInCampaign" />
            <asp:BoundField DataField="LeadSourceCode" HeaderText="LeadSourceCode" SortExpression="LeadSourceCode" />
            <asp:BoundField DataField="ManagerName" HeaderText="ManagerName" SortExpression="ManagerName" />
            <asp:BoundField DataField="ManagerPhone" HeaderText="ManagerPhone" SortExpression="ManagerPhone" />
            <asp:CheckBoxField DataField="Merged" HeaderText="Merged" ReadOnly="True" SortExpression="Merged" />
            <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" SortExpression="MiddleName" />
            <asp:BoundField DataField="MobilePhone" HeaderText="MobilePhone" SortExpression="MobilePhone" />
            <asp:BoundField DataField="ModifiedOn" HeaderText="ModifiedOn" ReadOnly="True" SortExpression="ModifiedOn" />
            <asp:BoundField DataField="NickName" HeaderText="NickName" SortExpression="NickName" />
            <asp:BoundField DataField="NumberOfChildren" HeaderText="NumberOfChildren" SortExpression="NumberOfChildren" />
            <asp:BoundField DataField="OverriddenCreatedOn" HeaderText="OverriddenCreatedOn" SortExpression="OverriddenCreatedOn" />
            <asp:BoundField DataField="Pager" HeaderText="Pager" SortExpression="Pager" />
            <asp:CheckBoxField DataField="ParticipatesInWorkflow" HeaderText="ParticipatesInWorkflow" SortExpression="ParticipatesInWorkflow" />
            <asp:BoundField DataField="PaymentTermsCode" HeaderText="PaymentTermsCode" SortExpression="PaymentTermsCode" />
            <asp:BoundField DataField="PreferredAppointmentDayCode" HeaderText="PreferredAppointmentDayCode" SortExpression="PreferredAppointmentDayCode" />
            <asp:BoundField DataField="PreferredAppointmentTimeCode" HeaderText="PreferredAppointmentTimeCode" SortExpression="PreferredAppointmentTimeCode" />
            <asp:BoundField DataField="PreferredContactMethodCode" HeaderText="PreferredContactMethodCode" SortExpression="PreferredContactMethodCode" />
            <asp:BoundField DataField="ProcessId" HeaderText="ProcessId" SortExpression="ProcessId" />
            <asp:BoundField DataField="Salutation" HeaderText="Salutation" SortExpression="Salutation" />
            <asp:BoundField DataField="ShippingMethodCode" HeaderText="ShippingMethodCode" SortExpression="ShippingMethodCode" />
            <asp:BoundField DataField="SpousesName" HeaderText="SpousesName" SortExpression="SpousesName" />
            <asp:BoundField DataField="StageId" HeaderText="StageId" SortExpression="StageId" />
            <asp:BoundField DataField="StateCode" HeaderText="StateCode" SortExpression="StateCode" />
            <asp:BoundField DataField="StatusCode" HeaderText="StatusCode" SortExpression="StatusCode" />
            <asp:BoundField DataField="SubscriptionId" HeaderText="SubscriptionId" SortExpression="SubscriptionId" />
            <asp:BoundField DataField="Suffix" HeaderText="Suffix" SortExpression="Suffix" />
            <asp:BoundField DataField="Telephone1" HeaderText="Telephone1" SortExpression="Telephone1" />
            <asp:BoundField DataField="Telephone2" HeaderText="Telephone2" SortExpression="Telephone2" />
            <asp:BoundField DataField="Telephone3" HeaderText="Telephone3" SortExpression="Telephone3" />
            <asp:BoundField DataField="TerritoryCode" HeaderText="TerritoryCode" SortExpression="TerritoryCode" />
            <asp:BoundField DataField="TimeZoneRuleVersionNumber" HeaderText="TimeZoneRuleVersionNumber" SortExpression="TimeZoneRuleVersionNumber" />
            <asp:BoundField DataField="TraversedPath" HeaderText="TraversedPath" SortExpression="TraversedPath" />
            <asp:BoundField DataField="UTCConversionTimeZoneCode" HeaderText="UTCConversionTimeZoneCode" SortExpression="UTCConversionTimeZoneCode" />
            <asp:BoundField DataField="VersionNumber" HeaderText="VersionNumber" ReadOnly="True" SortExpression="VersionNumber" />
            <asp:BoundField DataField="WebSiteUrl" HeaderText="WebSiteUrl" SortExpression="WebSiteUrl" />
            <asp:BoundField DataField="YomiFirstName" HeaderText="YomiFirstName" SortExpression="YomiFirstName" />
            <asp:BoundField DataField="YomiFullName" HeaderText="YomiFullName" ReadOnly="True" SortExpression="YomiFullName" />
            <asp:BoundField DataField="YomiLastName" HeaderText="YomiLastName" SortExpression="YomiLastName" />
            <asp:BoundField DataField="YomiMiddleName" HeaderText="YomiMiddleName" SortExpression="YomiMiddleName" />
            <asp:BoundField DataField="LogicalName" HeaderText="LogicalName" SortExpression="LogicalName" />
            <asp:BoundField DataField="EntityState" HeaderText="EntityState" SortExpression="EntityState" />
		</Columns>
	</asp:GridView>
</asp:Content>
