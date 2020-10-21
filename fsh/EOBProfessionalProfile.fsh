Profile: C4BBExplanationOfBenefitProfessionalNonClinician
Parent: C4BB-ExplanationOfBenefit
Id: C4BB-ExplanationOfBenefit-Professional-NonClinician
Title: "C4BB ExplanationOfBenefit Professional NonClinician"
Description: "This profile is used for Explanation of Benefits (EOBs) based on claims submitted by physicians, suppliers and other non-institutional providers for professional services. These services may be rendered in inpatient or outpatient, including office locations. 
The claims data is based on the professional claim form 1500, submission standards adopted by the Department of Health and Human Services as form CMS-1500."
* careTeam obeys EOB-prof-careTeam-practitioner
* careTeam obeys EOB-prof-careTeam-organization
* careTeam.qualification MS 
* careTeam.qualification from $USCoreProviderSpecialty (required)  // cardinality constraint?
* type = $HL7ClaimTypeCS#professional
// * provider only Reference(C4BBOrganization or C4BBPractitionerRole or C4BBPractitioner) -- set in base class
* insert SupportingInfoSlicing 
* supportingInfo contains 
   billingnetworkcontractingstatus 1..1 MS and
   performingnetworkcontractingstatus 0..1 MS and
   clmrecvddate 0..1 MS and
   servicefacility 0..1 MS 
* supportingInfo[billingnetworkcontractingstatus].category = C4BBSupportingInfoType#billingnetworkcontractingstatus 
* supportingInfo[billingnetworkcontractingstatus].code from C4BBPayerProviderContractingStatus  (required)
* supportingInfo[billingnetworkcontractingstatus].code 1..1 MS
* supportingInfo[performingnetworkcontractingstatus].category = C4BBSupportingInfoType#performingnetworkcontractingstatus
* supportingInfo[performingnetworkcontractingstatus].code from C4BBPayerProviderContractingStatus  (required)
* supportingInfo[performingnetworkcontractingstatus].code 1..1 MS
* supportingInfo[clmrecvddate].category = C4BBSupportingInfoType#clmrecvddate
* supportingInfo[clmrecvddate].timing[x] only date 
* supportingInfo[clmrecvddate].timing[x] 1..1 MS
* supportingInfo[servicefacility].category = C4BBSupportingInfoType#servicefacility
* supportingInfo[servicefacility].valueReference 1..1 MS 
* supportingInfo[servicefacility].valueReference only Reference(C4BBOrganization)
* careTeam.role from C4BBClaimProfessionalAndNonClinicianCareTeamRole   (required)  // was PayerProfessionalAndNonClinicianProviderRole
* careTeam.role 1..1 MS
* diagnosis 1..* MS
* diagnosis.type 1..1 MS
* diagnosis.type from C4BBClaimProfessionalAndNonClinicianDiagnosisType  (required)
* diagnosis.diagnosis[x] 1..1 MS
* diagnosis.diagnosis[x] only CodeableConcept
* diagnosis.diagnosis[x] from CDCICD910CMDiagnosisCodes (required)
* item.modifier from AMACPTCMSHCPCSModifiers (required)
* item.productOrService from AMACPTCMSHCPCSProcedureCodes (required)
* item.location[x] from CMSPlaceofServiceCodes (required)
* item.location[x] only CodeableConcept
* insert ItemAdjudicationSlicing
* item.adjudication contains
   adjudicationamounttype 0..* and
   denialreason 0..1 and
   inoutnetwork 1..1 and
   allowedunits 0..1 MS
* item.adjudication[allowedunits] ^short = "The quantity of units, times, days, visits, services, or treatments for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider.  (149)"
* item.adjudication[allowedunits].category = C4BBAdjudicationDiscriminator#allowedunits
* item.adjudication[allowedunits].value only decimal
* item.adjudication[denialreason].category  = C4BBAdjudicationDiscriminator#denialreason 
* item.adjudication[denialreason].reason from X12ClaimAdjustmentReasonCodesCMSRemittanceAdviceRemarkCodes
* item.adjudication[denialreason].reason 1..1 MS
* item.adjudication[denialreason] ^short = "Reason codes used to interpret the Non-Covered Amount (92)"
* item.adjudication[adjudicationamounttype].category from C4BBAdjudication 
* item.adjudication[adjudicationamounttype] ^short = "Amounts"
* item.adjudication[adjudicationamounttype].amount  MS
* item.adjudication[inoutnetwork] ^short = "Indicates the in network or out of network payment status of the claim. (142)"
* item.adjudication[inoutnetwork].category from C4BBPayerBenefitPaymentStatus (required)
* insert TotalSlicing
* total contains
   adjudicationamounttype 0..* MS 
* total[adjudicationamounttype].category from C4BBAdjudication  (required)

* supportingInfo[clmrecvddate] ^short = "The date the claim was received by the payer (88)"
* supportingInfo[billingnetworkcontractingstatus] ^short = "Indicates that the Billing Provider has a contract with the Plan (regardless of the network) as of the effective date of service or admission. (101)"
* supportingInfo[performingnetworkcontractingstatus] ^short = "Indicates that the Billing Provider has a contract with the Payer as of the effective date of service or admission. (101)"
* supportingInfo[servicefacility] ^short = "Service Facility Location information conveys the name, full address and identifier of the facility where services were rendered when that is different from the Billing/Performing Provider. Service Facility Location is not just an address nor is it a patient’s home. Examples of Service Facility Location include hospitals, nursing homes, laboratories or homeless shelter. Service Facility Location identifier is the facility’s Type 2 Organization NPI if they are a health care provider as defined under HIPAA.  
If the service facility is not assigned an NPI, this data element will not be populated.  Reference CMS 1500 element 32a (97, 170, 176)"
* item.adjudication[allowedunits] ^short = "The quantity of units, times, days, visits, services, or treatments allowed for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider. (149)"
* item.adjudication[denialreason] ^short = "Reason codes used to interpret the Non-Covered Amount that are provided to the Provider. (92)"
* item.adjudication[adjudicationamounttype] ^short = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* item.adjudication[inoutnetwork] ^short = "Indicates the in network or out of network payment status of the claim. (142)"
* total[adjudicationamounttype] ^short = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* patient ^short = "Unique identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided. (1)"
* insurer ^short = "Code of the payer responsible for the claim. (2, 5)"
* insurance ^short = "Identity of the payers responsible for the claim. (2, 141)"
* type ^short = "Specifies the type of claim. (e.g., inpatient insitutional, outpatient institutional, physician, etc.). (16)"
* diagnosis ^short = "Diagnosis codes describe an individual's disease or medical condition. (22, 23)"
* diagnosis.type ^short = "Indicates if the professional and non-clinician diagnosis is principal or secondary (189)"
* identifier ^short = "Identifier assigned by a payer for a claim received from a provider or subscriber. It is not the same identifier as that assigned by a provider. This identifier assigned by the payer becomes the payer's EOB identifier. (35)"
* item.sequence ^short = "Line identification number that represents the number assigned in a source system for identification and processing. (36)"
* item.productOrService ^short = "Medical procedure a patient received from a health care provider. Current coding methods include: CPT-4 and HCFA Common Procedure Coding System Level II - (HCPCSII). (40)"
* item.modifier ^short = "Modifier(s) for the procedure represented on this line. Identifies special circumstances related to the performance of the service. (41)"
* item.quantity ^short = "The quantity of units, times, days, visits, services, or treatments for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider. (42)"
* item.location[x] ^short = "Code indicating the location, such as inpatient, outpatient facility, office, or home health agency, where this service was performed. (46)"
* payment.type ^short = "Indicates whether the claim was paid or denied. (91)"
* provider ^short = "The National Provider Identifier assigned to the Billing Provider. (94)"
* careTeam.provider ^short = "The National Provider Identifier assigned to the care team. (95, 96, 99)"
* payment.date ^short = "The date the claim was paid. (107)"
* related ^short = "If the current claim represents a claim that has been adjusted and was given a prior claim number, this field represents the prior claim number. If the current claim has been adjusted; i.e., replaced by or merged to another claim number, this data element represents that new number.(111, 112)"
* item.serviced[x]  ^short = "Date services began/ended. Located on CMS 1500 (Form Locator 24A) (118)"
* payee.type ^short = "Identifies recipient of benefits payable; i.e., provider or subscriber  (120)"
* payee.party ^short = "Recipient reference (121)"
* status ^short = "Claim processing status code. (140)"
* meta.lastUpdated ^short = "Defines the date the Resource was created or updated, whichever is later. (163)"
* meta.profile ^short = "Profile this resource claims to conform to. (189)"
* careTeam.role ^short = "The functional role of a provider on a claim. (165)"
* processNote.text ^short = "Line payment denial explanation to a member, typically goes on the EOB when the payment is denied or disallowed (181)"
* billablePeriod.start ^short = "The first day on the billing statement covering services rendered to the beneficiary (i.e. 'Statement Covers From Dateí). (177)"
* billablePeriod.end ^short = "The last day on the billing statement covering services rendered to the beneficiary (i.e. 'Statement Covers Thru Dateí). (178)"
* identifier.type ^short = "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber. (183)"
* total.amount ^short = "Total amount for each category (i.e., submitted, eligible, etc.) (148)"
* created ^short = "Date the claim was adjudicated. (179)"
* meta.lastUpdated ^short = "Defines the date the Resource was created or updated, whichever comes last (163)"