Profile: CARINBBExplanationOfBenefitProfessionalNonClinician
Parent: CARIN-BB-ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit-Professional-NonClinician
Title: "CARIN BB ExplanationOfBenefit Professional NonClinician"
Description: "This profile is used for Explanation of Benefits (EOBs) based on claims submitted by physicians, suppliers and other non-institutional providers for professional services. These services may be rendered in inpatient or outpatient, including office locations. 
The claims data is based on the professional claim form 1500, submission standards adopted by the Department of Health and Human Services as form CMS-1500."
* careTeam obeys EOB-prof-careTeam-practitioner
* careTeam obeys EOB-prof-careTeam-organization
* careTeam.qualification MS 
//* careTeam.qualification from NUCCHealthcareProviderTaxonomy (required)  // cardinality constraint?
* type = $HL7ClaimTypeCS#professional
// * provider only Reference(CARINBBOrganization or CARINBBPractitionerRole or CARINBBPractitioner) -- set in base class
* supportingInfo ^slicing.discriminator.type = #pattern 
* supportingInfo ^slicing.discriminator.path = "category"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false   // can be omitted, since false is the default
* supportingInfo ^slicing.description = "Slice based on $this pattern"
* supportingInfo contains 
   billingnetworkcontractingstatus 0..1 MS and
   // referringnetworkcontractingstatus 0..1 MS and
   performingnetworkcontractingstatus 0..1 MS and
   // sitenetworkcontractingstatus 0..1 MS and
   clmrecvddate 0..1 MS and
   servicefacility 0..1 MS 
* supportingInfo[clmrecvddate] ^short = "The date the claim was received by the payer (88)"
* supportingInfo[billingnetworkcontractingstatus] ^short = "Indicates that the Billing Provider has a contract with the Plan (regardless of the network) that is effective on the date of service or admission. (101)"
* supportingInfo[performingnetworkcontractingstatus] ^short = "Indicates that the Performing Provider has a contract with the Plan (regardless of the network) that is effective on the date of service or admission. (101)"
* supportingInfo[servicefacility] ^short = "Service Facility"
// * supportingInfo[referringnetworkcontractingstatus] ^short = "Indicates the network status of the referring physician (101)"
// * supportingInfo[sitenetworkcontractingstatus] ^short = "Indicates the network status of the site of service (101)"
* supportingInfo[billingnetworkcontractingstatus].category = ClaimInformationCategoryCS#billingnetworkcontractingstatus 
* supportingInfo[billingnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[billingnetworkcontractingstatus].code 1..1 
* supportingInfo[billingnetworkcontractingstatus].category.coding 1..1
// * supportingInfo[referringnetworkcontractingstatus].category = ClaimInformationCategoryCS#referringnetworkcontractingstatus
// * supportingInfo[referringnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
// * supportingInfo[referringnetworkcontractingstatus].code 1..1
* supportingInfo[performingnetworkcontractingstatus].category = ClaimInformationCategoryCS#performingnetworkcontractingstatus
* supportingInfo[performingnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[performingnetworkcontractingstatus].code 1..1
// * supportingInfo[sitenetworkcontractingstatus].category = ClaimInformationCategoryCS#sitenetworkcontractingstatus
// * supportingInfo[sitenetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[clmrecvddate].category = ClaimInformationCategoryCS#clmrecvddate
* supportingInfo[clmrecvddate].timing[x] only date 
* supportingInfo[clmrecvddate].timing[x] 1..1
* supportingInfo[servicefacility].category = ClaimInformationCategoryCS#servicefacility
* supportingInfo[servicefacility].valueReference 1..1 MS 
* supportingInfo[servicefacility].valueReference only Reference(Organization)
* careTeam.role from CARINBBProfessionalAndNonclinicanClaimCareTeamRoleCodes  (required)  // was PayerProfessionalAndNonClinicianProviderRole
* diagnosis 1..* MS
* diagnosis.type 1..1 MS
* diagnosis.type from PayerProfessionalandnoncliniciandiagnosistype (required)
* diagnosis.diagnosis[x] 1..1 MS
* diagnosis.diagnosis[x] only CodeableConcept
* diagnosis.diagnosis[x] from ICD10CM (required)
* item.modifier from AMACPTCMSHCPCSModifiers (required)
* item.productOrService from AMACPTCMSHCPCSProcedureCodes (required)
* item.locationCodeableConcept from CMSPlaceOfService (required)
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
* item.adjudication[allowedunits].category = ClaimAdjudicationCategoryCS#allowedunits
* item.adjudication[allowedunits].value only decimal
* item.adjudication[denialreason].category  = ClaimAdjudicationCategoryCS#denialreason 
* item.adjudication[denialreason].reason from X12CARCCMSRARC
* item.adjudication[denialreason].reason 1..1 MS
* item.adjudication[denialreason] ^short = "Reason codes used to interpret the Non-Covered Amount (92)"
* item.adjudication[adjudicationamounttype].category from AdjudicationCarinBBValueCodes 
* item.adjudication[adjudicationamounttype] ^short = "Amounts"
* item.adjudication[adjudicationamounttype].amount  MS
* item.adjudication[inoutnetwork] ^short = "Indicates the in network or out of network payment status of the claim. (142)"
* item.adjudication[inoutnetwork].category from BenefitPaymentStatus (required)
* total ^slicing.rules = #open
* total ^slicing.ordered = false   // can be omitted, since false is the default
* total ^slicing.description = "Slice based on value pattern"
* total  ^slicing.discriminator.type = #value
* total  ^slicing.discriminator.path = "category"
* total.category 1..1 MS 
* total contains
   adjudicationamounttype 0..* MS 
* total[adjudicationamounttype].category from AdjudicationCarinBBValueCodes  (required)
* total[adjudicationamounttype] ^short = "Amounts"
//* total[adjudicationamounttype].amount 1..1
* patient ^short = "Unique identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided. (1)"
* insurance.coverage ^short = "Unique identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided. (1)"
* insurance ^short = "Code of the primary payer responsible for the claim (2)"
* type ^short = "Specifies the type of claim. (e.g., inpatient insitutional, outpatient institutional, physician, etc.).  (16)"
// * item.adjudication ^short = "Amount submitted by the provider for reimbursement of health care services. This amount includes non-covered services. (20)"
// * item.adjudication ^short = "The contracted reimbursable amount for covered medical services or supplies or amount reflecting local methodology for noncontracted providers. Allowed  mount should not include any COB adjustment. That is, the Allowed amount on a claim should be the same when the Plan is primary or secondary. (20)"
// * item.adjudication ^short = "The contracted reimbursable amount for covered medical services or supplies or amount reflecting local methodology for noncontracted providers. (20)"
// * item.adjudication ^short = "The amount the insured individual pays, as a set percentage of the cost of covered medical services, as an out-of-pocket payment to the provider. Example: Insured pays 20% and the insurer pays 80%.  (20)"
// * item.adjudication ^short = "Amount an insured individual pays directly to a provider at the time the services or supplies are rendered. Usually, a copay will be a fixed amount per service, such as $15.00 per office visit. (20)"
// * item.adjudication ^short = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract. (20)"
// * item.adjudication ^short = "The reduction in the payment amount to reflect the carrier as a secondary payor. (20)"
// * item.adjudication ^short = "The amount sent to the payee from the health plan. This amount is to include withhold amounts (the portion of the claim that is deducted and withheld by the Plan from the provider's payment) and exclude any member cost sharing.  It should include the total of member and provider payments. (20)"
// * item.adjudication ^short = "The amount paid by the member at the point of service. (20)"
// * item.adjudication ^short = "The amount of the discount (20)"
// * item.adjudication ^short = "The amount paid to the provider. (20)"
// * item.adjudication ^short = "The amount paid to the member. (20)"
// * item.adjudication ^short = "The amount of the member's liability. (20)"
* diagnosis ^short = "The member's principal condition treated on the claim (837P Data Element HI01 or CMS 1500 Item 21A). Decimals will be included.  (22)"
// * diagnosis ^short = "The member's principal condition treated during this service. This may or may not be different from the admitting diagnosis. Decimals will be included.  (22)"
// * diagnosis ^short = "Additional diagnosis identified for this member (837P Data Element HI02 or CMS 1500 Item 21B). Decimals will be included. (23)"
// * diagnosis ^short = "Additional diagnosis identified for this member. Decimals will be included.  (23)"
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
// * patient ^short = "Provider submitted information that can be included on the claim (109)"
// * patient ^short = "Provider submitted information that can be included on the claim (110)"
// * related ^short = "Prior claim number (111)"
// * related ^short = "Replaced or Merged claim number (112)"
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

