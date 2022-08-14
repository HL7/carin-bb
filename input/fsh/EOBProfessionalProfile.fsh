Profile: C4BBExplanationOfBenefitProfessionalNonClinician
Parent: C4BB-ExplanationOfBenefit
Id: C4BB-ExplanationOfBenefit-Professional-NonClinician
Title: "C4BB ExplanationOfBenefit Professional NonClinician"
Description: "This profile is used for Explanation of Benefits (EOBs) based on claims submitted by physicians, suppliers and other non-institutional providers for professional and vision services. These services may be rendered in inpatient or outpatient, including office locations. The claims data is based on the professional claim form 1500, submission standards adopted by the Department of Health and Human Services as form CMS-1500."
// 20210322 CAS: FHIR-30575
* insert Metaprofile-supportedProfile-slice
* meta.profile[supportedProfile] = Canonical(C4BBExplanationOfBenefitProfessionalNonClinician|1.2.0)
* careTeam obeys EOB-prof-careTeam-practitioner
* careTeam.qualification MS
* careTeam.qualification from $USCoreProviderSpecialty (required)  // cardinality constraint?

* billablePeriod 1..1
//* type = $HL7ClaimTypeCS#professional
* type from C4BBProfessionalAndNonClinicianClaimType (required)


// * provider only Reference(C4BBOrganization or C4BBPractitionerRole or C4BBPractitioner) -- set in base class
* insert SupportingInfoSlicing
* supportingInfo contains
   clmrecvddate 0..1 MS and
   servicefacility 0..1 MS and
   // 20210312 CAS: https://jira.hl7.org/browse/FHIR-31534 - Medical Record Number and Patient Account Number
   medicalrecordnumber 0..1 MS and
   patientaccountnumber 0..1 MS


* supportingInfo[clmrecvddate] ^short = "Claim received date"
* supportingInfo[clmrecvddate].category = C4BBSupportingInfoType#clmrecvddate
* supportingInfo[clmrecvddate].category MS
* supportingInfo[clmrecvddate].timing[x] only date
* supportingInfo[clmrecvddate].timing[x] 1..1 MS

* supportingInfo[servicefacility] ^short = "Service facility"
* supportingInfo[servicefacility].category = C4BBSupportingInfoType#servicefacility
* supportingInfo[servicefacility].category MS
* supportingInfo[servicefacility].valueReference 1..1 MS
* supportingInfo[servicefacility].valueReference only Reference(C4BBOrganization)
// 20210312 CAS: https://jira.hl7.org/browse/FHIR-31534 - Medical Record Number and Patient Account Number
* supportingInfo[medicalrecordnumber] ^short = "Medical record number"
* supportingInfo[medicalrecordnumber].category = C4BBSupportingInfoType#medicalrecordnumber
* supportingInfo[medicalrecordnumber].valueString 1..1 MS

* supportingInfo[patientaccountnumber] ^short = "Patient account number"
* supportingInfo[patientaccountnumber].category = C4BBSupportingInfoType#patientaccountnumber
* supportingInfo[patientaccountnumber].valueString 1..1 MS
* careTeam.role from C4BBClaimProfessionalAndNonClinicianCareTeamRole   (required)  // was PayerProfessionalAndNonClinicianProviderRole
* careTeam.role 1..1 MS
* diagnosis 1..* MS
* diagnosis.type 1..1 MS
* diagnosis.type from C4BBClaimProfessionalAndNonClinicianDiagnosisType  (required)
* diagnosis.diagnosis[x] 1..1 MS
* diagnosis.diagnosis[x] only CodeableConcept
* diagnosis.diagnosis[x] from CDCICD910CMDiagnosisCodes (required)
* item.modifier from AMACPTCMSHCPCSModifiers (required)
// CAS 20210118: Add MS to Professional and NonClinican item.productOrService and item.modifier https://jira.hl7.org/browse/FHIR-30358
* item.modifier MS
* item.productOrService from AMACPTCMSHCPCSProcedureCodes (required)
* item.productOrService obeys EOB-vision-item-productorservice
// 20210201 CAS: FHIR-30357 - item.productOrService is required when item.revenue is provided
//* item.productOrService obeys EOB-prof-item-productorservice
// CAS 20210118: Add MS to Professional and NonClinican item.productOrService and item.modifier https://jira.hl7.org/browse/FHIR-30358
* item.productOrService MS
* item.serviced[x] 1..1
// FHIR-34148 - Make Professional NonClinician EoB item.location required Persuasive, change cardinality to 1..1 and maske Must Support
* item.location[x] 1..1 MS
* item.location[x] only CodeableConcept
* item.locationCodeableConcept from CMSPlaceofServiceCodes (required)

* insert AdjudicationSlicing
* adjudication MS
* adjudication contains
   billingnetworkcontractingstatus 0..1 MS and
   renderingnetworkcontractingstatus 0..1 MS

* adjudication[billingnetworkcontractingstatus] ^short = "Billing provider contracting status"
* adjudication[billingnetworkcontractingstatus].category = C4BBAdjudicationDiscriminator#billingnetworkcontractingstatus
* adjudication[billingnetworkcontractingstatus].category MS
* adjudication[billingnetworkcontractingstatus].reason from C4BBPayerProviderContractingStatus  (required)
* adjudication[billingnetworkcontractingstatus].reason 1..1 MS

* adjudication[renderingnetworkcontractingstatus] ^short = "Rendering provider contracting status"
* adjudication[renderingnetworkcontractingstatus].category = C4BBAdjudicationDiscriminator#renderingnetworkcontractingstatus
* adjudication[renderingnetworkcontractingstatus].category MS
* adjudication[renderingnetworkcontractingstatus].reason from C4BBPayerProviderContractingStatus  (required)
* adjudication[renderingnetworkcontractingstatus].reason 1..1 MS

* insert ItemAdjudicationSlicing
* item.adjudication MS
* item.adjudication contains
   adjudicationamounttype 1..* MS and
   denialreason 0..1 MS and
   benefitpaymentstatus 1..1 MS and
   allowedunits 0..1 MS

* item.adjudication[allowedunits] ^short = "The quantity of units, times, days, visits, services, or treatments for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider.  (149)"
* item.adjudication[allowedunits].category = C4BBAdjudicationDiscriminator#allowedunits
* item.adjudication[allowedunits].value only decimal
* item.adjudication[denialreason].category  = C4BBAdjudicationDiscriminator#denialreason
* item.adjudication[denialreason].reason from X12ClaimAdjustmentReasonCodesCMSRemittanceAdviceRemarkCodes
* item.adjudication[denialreason].reason 1..1 MS
* item.adjudication[denialreason] ^short = "Reason codes used to interpret the Non-Covered Amount (92)"

* item.adjudication[adjudicationamounttype] ^short =  "Line level adjudication type and amount"
* item.adjudication[adjudicationamounttype].category from C4BBAdjudication
* item.adjudication[adjudicationamounttype] ^short = "Amounts"
* item.adjudication[adjudicationamounttype].amount  MS
* item.adjudication[adjudicationamounttype].amount 1..1

* item.adjudication[benefitpaymentstatus] ^short = "Indicates the in network or out of network payment status of the claim. (142)"
* item.adjudication[benefitpaymentstatus].category from C4BBPayerBenefitPaymentStatus (required)
* insert TotalSlicing
* total.category from C4BBAdjudication  (extensible)
* total contains
   adjudicationamounttype 1..* MS

* total[adjudicationamounttype] ^short =  "Total adjudication type and amount"
* total[adjudicationamounttype].category from C4BBAdjudication  (required)

* supportingInfo[clmrecvddate] ^comment = "The date the claim was received by the payer (88)"

* supportingInfo[servicefacility] ^comment = "Service Facility Location information conveys the name, full address and identifier of the facility where services were rendered when that is different from the Billing/Rndering Provider. Service Facility Location is not just an address nor is it a patient’s home. Examples of Service Facility Location include hospitals, nursing homes, laboratories or homeless shelter. Service Facility Location identifier is the facility’s Type 2 Organization NPI if they are a health care provider as defined under HIPAA.
If the service facility is not assigned an NPI, this data element will not be populated.  Reference CMS 1500 element 32a (97, 170, 176)"
* supportingInfo[medicalrecordnumber] ^comment = "Provider submitted medical record number that can be included on the claim. (109)"
* supportingInfo[patientaccountnumber] ^comment = "Provider assigned patient account number that can be included on the claim. (109)"
* adjudication[billingnetworkcontractingstatus] ^comment = "Indicates that the Billing Provider has a contract with the Plan (regardless of the network) as of the effective date of service or admission. (101)"
* adjudication[renderingnetworkcontractingstatus] ^comment = "Indicates that the Billing Provider has a contract with the Payer as of the effective date of service or admission. (101)"
* item.adjudication[allowedunits] ^comment = "The quantity of units, times, days, visits, services, or treatments allowed for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider. (149)"
* item.adjudication[denialreason] ^comment = "Reason codes used to interpret the Non-Covered Amount that are provided to the Provider. (92)"
* item.adjudication[adjudicationamounttype] ^comment = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* item.adjudication[benefitpaymentstatus] ^comment = "Indicates the in network or out of network payment status of the claim. (142)"
* total[adjudicationamounttype] ^comment = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* diagnosis ^comment = "Diagnosis codes describe an individual's disease or medical condition. (6, 7, 8, 21, 22, 23, 30)"
* diagnosis.type ^comment = "Indicates if the professional and non-clinician diagnosis is principal or secondary (21, 22, 23)"
* diagnosis.sequence ^comment =  "Diagnosis.sequence values do not necessarily indicate any order in which the diagnosis was reported or identified.  client app implementations should not assign any significance to the sequence values.  client app implementations should use the values of diagnosis.type to identify primary, secondary, etc."
* item.productOrService ^comment = "Medical procedure a patient received from a health care provider. Current coding methods include: CPT-4 and HCFA Common Procedure Coding System Level II - (HCPCSII). (40)"
* item.modifier ^comment = "Modifier(s) for the procedure represented on this line. Identifies special circumstances related to the performance of the service. (41)"
* item.quantity ^comment = "The quantity of units, times, days, visits, services, or treatments for the service described by the HCPCS code or CPT procedure code, submitted by the provider. (42)"
* item.location[x] ^comment = "Code indicating the location, such as inpatient, outpatient facility, office, or home health agency, where this service was performed. (46)"
* careTeam.provider ^comment = "The National Provider Identifier assigned to the primary, supervising, rendering, purchased service and referring care team. (95, 96, 99)"
* item.serviced[x]  ^comment = "Date services began/ended. Located on CMS 1500 (Form Locator 24A) (118)"
* total.amount ^comment = "Total amount for each category (i.e., submitted, eligible, etc.) (148)"

* insert EOBBaseProfileComments
