Profile: C4BBExplanationOfBenefitProfessionalNonClinician
Parent: C4BB-ExplanationOfBenefit
Id: C4BB-ExplanationOfBenefit-Professional-NonClinician
Title: "C4BB ExplanationOfBenefit Professional NonClinician"
Description: "This profile is used for Explanation of Benefits (EOBs) based on claims submitted by physicians, suppliers and other non-institutional providers for professional services. These services may be rendered in inpatient or outpatient, including office locations. 
The claims data is based on the professional claim form 1500, submission standards adopted by the Department of Health and Human Services as form CMS-1500."
* careTeam obeys EOB-prof-careTeam-practitioner
* careTeam obeys EOB-prof-careTeam-organization
* careTeam.qualification MS 
//* careTeam.qualification from NUCCHealthcareProviderTaxonomy (required)  // cardinality constraint?
* type = $HL7ClaimTypeCS#professional
// * provider only Reference(C4BBOrganization or C4BBPractitionerRole or C4BBPractitioner) -- set in base class
* supportingInfo ^slicing.discriminator.type = #pattern 
* supportingInfo ^slicing.discriminator.path = "category"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false   // can be omitted, since false is the default
* supportingInfo ^slicing.description = "Slice based on $this pattern"
* supportingInfo MS 
* supportingInfo contains 
   billingnetworkcontractingstatus 0..1 MS and
   performingnetworkcontractingstatus 0..1 MS and
   claimrecvddate 0..1 MS and
   servicefacility 0..1 MS 
* supportingInfo[claimrecvddate] ^short = "The date the claim was received by the payer (88)"
* supportingInfo[billingnetworkcontractingstatus] ^short = "Indicates that the Billing Provider has a contract with the Plan (regardless of the network) that is effective on the date of service or admission. (101)"
* supportingInfo[performingnetworkcontractingstatus] ^short = "Indicates that the Performing Provider has a contract with the Plan (regardless of the network) that is effective on the date of service or admission. (101)"
* supportingInfo[servicefacility] ^short = "Service Facility"
* supportingInfo[billingnetworkcontractingstatus].category = ClaimInformationCategory#billingnetworkcontractingstatus 
* supportingInfo[billingnetworkcontractingstatus].code from C4BBPayerProviderContractingStatus  (required)
* supportingInfo[billingnetworkcontractingstatus].code 1..1 
* supportingInfo[billingnetworkcontractingstatus].category.coding 1..1
* supportingInfo[performingnetworkcontractingstatus].category = ClaimInformationCategory#performingnetworkcontractingstatus
* supportingInfo[performingnetworkcontractingstatus].code from C4BBPayerProviderContractingStatus  (required)
* supportingInfo[performingnetworkcontractingstatus].code 1..1
* supportingInfo[claimrecvddate].category = ClaimInformationCategory#claimrecvddate
* supportingInfo[claimrecvddate].timing[x] only date 
* supportingInfo[claimrecvddate].timing[x] 1..1
* supportingInfo[servicefacility].category = ClaimInformationCategory#servicefacility
* supportingInfo[servicefacility].valueReference 1..1 MS 
* supportingInfo[servicefacility].valueReference only Reference(C4BBOrganization)
* careTeam.role from C4BBClaimProfessionalAndNonClinicianCareTeamRole   (required)  // was PayerProfessionalAndNonClinicianProviderRole
* diagnosis 1..* MS
* diagnosis.type 1..1 MS
* diagnosis.type from C4BBClaimProfessionalAndNonClinicianDiagnosisType  (required)
* diagnosis.diagnosis[x] 1..1 MS
* diagnosis.diagnosis[x] only CodeableConcept
* diagnosis.diagnosis[x] from ICD10CM (required)
* item.modifier from AMACPTCMSHCPCSModifiers (required)
* item.productOrService from AMACPTCMSHCPCSProcedureCodes (required)
* item.locationCodeableConcept from CMSPlaceofServiceCodes (required)
* item.adjudication ^slicing.rules = #closed 
* item.adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* item.adjudication ^slicing.description = "Slice based on value pattern"
* item.adjudication ^slicing.discriminator.type = #pattern 
* item.adjudication ^slicing.discriminator.path = "category"
* item.adjudication contains
   adjudicationamounttype 0..* and
   denialreason 0..1 and
   inoutnetwork 1..1 and
   allowedunits 0..1 MS
* item.adjudication[allowedunits] ^short = "The quantity of units, times, days, visits, services, or treatments for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider.  (149)"
* item.adjudication[allowedunits].category = ClaimAdjudicationCategory#allowedunits
* item.adjudication[allowedunits].value only decimal
* item.adjudication[denialreason].category  = ClaimAdjudicationCategory#denialreason 
* item.adjudication[denialreason].reason from X12ClaimAdjustmentReasonCodesCMSRemittanceAdviceRemarkCodes
* item.adjudication[denialreason].reason 1..1 MS
* item.adjudication[denialreason] ^short = "Reason codes used to interpret the Non-Covered Amount (92)"
* item.adjudication[adjudicationamounttype].category from C4BBAdjudication 
* item.adjudication[adjudicationamounttype] ^short = "Amounts"
* item.adjudication[adjudicationamounttype].amount  MS
* item.adjudication[inoutnetwork] ^short = "Indicates the in network or out of network payment status of the claim. (142)"
* item.adjudication[inoutnetwork].category from C4BBPayerBenefitPaymentStatus (required)
* total ^slicing.rules = #open
* total ^slicing.ordered = false   // can be omitted, since false is the default
* total ^slicing.description = "Slice based on value pattern"
* total  ^slicing.discriminator.type = #value
* total  ^slicing.discriminator.path = "category"
* total.category 1..1 MS 
* total contains
   adjudicationamounttype 0..* MS 
* total[adjudicationamounttype].category from C4BBAdjudication  (required)
* total[adjudicationamounttype] ^short = "Amounts"
//* total[adjudicationamounttype].amount 1..1
* patient ^short = "Unique identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided. (1)"
* insurance.coverage ^short = "Unique identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided. (1)"
* insurance ^short = "Code of the primary payer responsible for the claim (2)"
* type ^short = "Specifies the type of claim. (e.g., inpatient insitutional, outpatient institutional, physician, etc.).  (16)"
* diagnosis ^short = "The member's principal condition treated on the claim (837P Data Element HI01 or CMS 1500 Item 21A). Decimals will be included.  (22)"
* diagnosis.diagnosis[x] ^short = "A plain text representation of the diagnosis (145)"
* identifier ^short = "Claim identifier for a claim. (35)"
* item.sequence ^short = "Line identification number that represents the number assigned in a source system for identification and processing. (36)"
* item.productOrService ^short = "Medical procedure a patient received from a health care provider. Current coding methods include: CPT-4 and HCFA Common Procedure Coding System Level II - (HCPCSII). (40)"
* item.modifier ^short = "Modifier(s) for the procedure represented on this line. Identifies special circumstances related to the performance of the service. (41)"
* item.quantity ^short = "The quantity of units, times, days, visits, services, or treatments for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider.  (42)"
* item.location[x] ^short = "Code indicating the location, such as inpatient, outpatient facility, office, or home health agency, where this service was performed. (46)"
* provider ^short = "This field identifies the specialty of the physician or duly licensed professional practitioner for the claim. For physicians, this usually represents his/her board registered specialty.  (47)"
* payment.type ^short = "Indicates whether the claim was paid or denied. (91)"
* provider ^short = "The National Provider Identifier assigned to the Billing Provider. (94)"
* careTeam.provider ^short = "The National Provider Identifier assigned to the Rendering Provider. This is the lowest level of provider available (for example, if both individual and group are available, then the individual should be provided). (95)"
* careTeam.provider ^short = "The identifier assigned to the PCP Provider. (96)"
* facility ^short = "The NPI of the facility where the services were rendered. (97)"
* careTeam.provider ^short = "The NPI of the referring physician. (99)"
* payment.date ^short = "The date the claim was paid. (107)"
* item.servicedPeriod ^short = "Date services began/ended. Located on CMS 1500 (Form Locator 24A) (118)"
* payee.type ^short = "Identifies recipient of benefits payable; i.e., provider or subscriber  (120)"
* payee.party ^short = "Recipient reference (121)"
* insurance ^short = "Identifies the primary payer.  For use only on secondary claims.   (141)"
* item.productOrService ^short = "A plain text representation of the CPT / HCPCS procedure (147)"
* total.amount ^short = "Total amount for each category (i.e., submitted, allowed, etc.) (148)"
* patient MS
* insurance.coverage MS
* insurance MS
* type MS
* identifier MS
* item.sequence MS
* item.productOrService MS
* item.modifier MS
* item.quantity MS
* item.location[x] MS
* provider MS
* payment.type MS
* item.adjudication MS
* provider MS
* careTeam.provider MS
* careTeam.provider MS
* facility MS
* careTeam.provider MS
* payment.date MS
* patient MS
* related MS
* item.servicedPeriod MS
* payee.type MS
* payee.party MS
* status MS
* insurance MS
* diagnosis.diagnosis[x] MS
* item.productOrService MS
* total.amount MS

