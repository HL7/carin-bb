/*
Coverage:  Data that reflect a payer's coverage that was effective as of the date of service  or the date of admission of the claim will be added to the Coverage Profile overview.  

CARIN BB EOB:  Abstract parent profile that includes constraints that are common to the four specific ExplanationOfBenefit (EOB) profiles defined in this Implementation Guide. All EOB instances should be from one of the four non-abstract EOB profiles defined in this Implementation Guide: Inpatient, Outpatient, Pharmacy, and Professional/NonClinician

CARIN BB EOB Inpatient Facility:  The profile is used for Explanation of Benefits (EOBs) based on claims submitted by clinics, hospitals, skilled nursing facilities and other institutions for inpatient services, which may include the use of equipment and supplies, laboratory services, radiology services and other charges. Inpatient claims are submitted for services rendered at a facility as part of an overnight stay. The claims data is based on the institutional claim format UB-04, standards adopted by the Department of Health and Human Services.

CARIN BB EOB Outpatient Facility:  The profile is used for Explanation of Benefits (EOBs) based on claims submitted by clinics, hospitals, skilled nursing facilities and other institutions for outpatient services, which may include including the use of equipment and supplies, laboratory services, radiology services and other charges. Outpatient claims are submitted for services rendered at a facility that are not part of an overnight stay. The claims data is based on the institutional claim form UB-04, standards adopted by the Department of Health and Human Services.

CARIN BB EOB Professional and NonClinician:  This profile is used for Explanation of Benefits (EOBs) based on claims submitted by physicians, suppliers and other non-institutional providers for professional services. These services may be rendered in inpatient or outpatient, including office locations. The claims data is based on the professional claim form CMS-1500.

CARIN BB EOB Pharmacy: The profile is used for Explanation of Benefits (EOBs) based on claims submitted by retail pharmacies. The claims data is based on submission standards adopted by the Department of Health and Human Services defined by NCPDP (National Council for Prescription Drug Program).

CARIN BB Location:  This profile may be removed pending the resolution of FHIR-26705. This profile is used to convey the location where the services reported on a Professional and NonClinician claim were rendered when the location is not part of the Billing Provider of the physician or nonclinician.  

CARIN BB Organization:  This profile builds upon the US Core Organization profile. It is used to convey a payer or provider organization may be updated to include service facility pending resolution of FHIR-26705.

CARIN BB Patient:  This profile builds upon the US Core Organization profile. It is used to convey patient information about the patient who received the services described on the claim. 

CARIN BB Practioner:  This profile builds upon the US Core Organization profile. It is used to convey practitioner information who provided the services to the patient.

CARIN BB PractionerRole:  This profile builds upon the R4 PractitionerRole Resource.   It is used to map to Organization or Practitioner. Conditional acceptance if this is not addressed by the errata addressed in released 3.1.1 in US Core. We are planning on harmonizing this work with Plan-Net.
*/


Profile: CARINBBCoverage
Parent: Coverage
Id: CARIN-BB-Coverage
Title: "CARIN BB Coverage"
Description: "CARIN Blue Button Coverage Profile."
//* ^jurisdiction.valueCodeableConcept = "US#urn:iso:std:iso:3166"
* meta.lastUpdated 1..1 MS
* meta.profile 1..* MS
* identifier MS 
* status MS
* subscriber 0..1 
* subscriber only Reference(CARINBBPatient)
* subscriberId 1..1 MS
* beneficiary 1..1 MS
* beneficiary only Reference(CARINBBPatient) 
* relationship 1..1 MS
* relationship from $SubscriberRelationiship (required)
* payor 1..1 MS   // was 1..* in Balloted STU
* payor only Reference (CARINBBOrganization) 
* class MS 
* class.name MS 
* class.value MS
* class ^slicing.discriminator.type = #pattern
* class ^slicing.discriminator.path = "type"
* class ^slicing.rules = #open
* class ^slicing.ordered = false   // can be omitted, since false is the default
* class ^slicing.description = "Slice based on value pattern"
* class contains 
   group 1..1  MS and
   plan 1..1 MS
* class[group].type = $CoverageClassCS#group
* class[plan].type = $CoverageClassCS#plan
* payor ^short = "Issuer of the Policy (2 )"
* type ^short = "Identifies if the coverage is PPO, HMO, POS, etc.   (3 )"
* relationship ^short = "Relationship of the member to the person insured (subscriber). (72 )"
* period ^short = "Date that the contract became effective (74 )"
* period ^short = "Date that the contract was terminated or coverage changed (75 )"
* subscriberId ^short = "Identifies the subscriber identification (132 )"
* status ^short = "Identfies the status of the coverage information (default: active) (133 )"
* class[group].value ^short = "Employer account identifier (134 )"
* class[group].name ^short = "Name of the Employer Account (135 )"
* class[plan].value ^short = "Business concept used by a health plan to describe its benefit offerings (154 )"
* class[plan].name ^short = "Name of the health plan benefit offering assigned to the Plan Identfier (155 )"
* payor MS
* type MS
* relationship MS
* period MS



Profile: CARINBBExplanationOfBenefit
Parent: ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit
Title: "CARIN BB Explanation Of Benefit"
Description: "Abstract parent profile that includes constraints that are common to the four specific ExplanationOfBenefit (EOB) profiles defined in this Implementation Guide.
All EOB instances should be from one of the four non-abstract EOB profiles defined in this Implementation Guide:  Inpatient, Outpatient, Pharmacy, and Professional/NonClinician"
* meta.lastUpdated 1..1 MS
* meta.profile 1..* MS
* ^abstract = true 
* identifier 1..* 
* identifier.type 1..1 MS
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #pattern 
* identifier ^slicing.ordered = false   // cannot be omitted, since false is the default
* identifier ^slicing.description = "Slice based on $this pattern"
* identifier contains 
   claimnumber 1..1 MS
* identifier[claimnumber].value 1..1 MS
* identifier[claimnumber] ^patternIdentifier.type = $IdentifierTypeCS#cn 
* identifier[claimnumber] ^short = "Claim Number"
* type 1..1 MS
* type from $HL7ClaimType (required)
//   * claim MS   - igor sez we discussed removing MS
* use = #claim 
* patient 1..1 MS
* adjudication MS 
* provider only Reference(CARINBBOrganization or CARINBBPractitionerRole or CARINBBPractitioner)   // based on BV2a comments 7/27
* patient only Reference (CARINBBPatient)
* billablePeriod 0..1 MS 
* insurer 1..1 MS
* insurer only Reference(CARINBBOrganization)
* provider 1..1 MS
* related 0..* MS
* related.relationship 1..1 MS
//* related.relationship from RelatedClaim (extensible)
* payee 0..1 MS
* payee.type 1..1 MS
* payee.party 1..1 MS
* payee.party only Reference(CARINBBOrganization or CARINBBPatient or CARINBBPractitioner)
* careTeam 0..* MS 
* careTeam.provider 1..1 MS
* careTeam.provider only Reference(CARINBBOrganization or CARINBBPractitioner)
* careTeam.responsible 0..1 MS 
* careTeam.role 1..1 MS
* supportingInfo 0..* MS
//* supportingInfo.category 1..1 MS
//* supportingInfo.category from ClaimInformationCategory (required)
* supportingInfo.code 0..1 MS 
* supportingInfo.timing[x] 0..1 MS 
* supportingInfo.value[x] 0..1 MS 
* procedure 0..* MS 
* procedure.type 0..* MS 
* procedure.date 0..1 MS 
* insurance 1..* MS
* insurance.coverage 1..1 MS
* insurance.focal 1..1  MS
* insurance obeys EOB-insurance-focal 
* insurance.coverage only Reference(CARINBBCoverage)
/* * adjudication.extension contains
   AdjudicationType named adjudication-type 1..1 MS
*/
* adjudication.category from ClaimAdjudicationCategory (required)   // per Igor
* item 0..* MS
* item.adjudication MS 
* item.adjudication.category 1..1 MS
* item.adjudication.category from ClaimAdjudicationCategory (required)  // Per Igor
* total.category from ClaimAdjudicationCategory (required)
* payment MS 
* payment.type from ClaimPaymentStatusCode (required)


Profile: CARINBBExplanationOfBenefitInpatientFacility
Parent: CARIN-BB-ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit-Inpatient-Facility
Title: "CARIN BB ExplanationOfBenefit Inpatient Facility"
Description: "The profile is used for Explanation of Benefits (EOBs) based on claims submitted by clinics, hospitals, skilled nursing facilities and other institutions for inpatient services, which may include the use of equipment and supplies, laboratory services, radiology services and other charges. Inpatient claims are submitted for services rendered at a facility as part of an overnight stay. 
The claims data is based on the institutional claim format UB-04, submission standards adopted by the Department of Health and Human Services as form CMS-1450."
* type.coding 1..1 MS
* type = $HL7ClaimTypeCS#institutional
* careTeam.role from CARINBBInstitutionalClaimCareTeamRoleCodes (required)  // was  PayerInstitutionalProviderRole 
* careTeam obeys EOB-inst-careTeam-practitioner
* careTeam obeys EOB-inst-careTeam-organization
* diagnosis 1..* MS
* diagnosis.type 1..1 MS
* diagnosis.type from PayerInpatientfacilitydiagnosistype (required)   
* diagnosis.diagnosis[x] 1..1 MS
* diagnosis.diagnosis[x] only CodeableConcept
* diagnosis.diagnosis[x] from ICD10CM (required)
* diagnosis.onAdmission 0..1 MS
* diagnosis.onAdmission from NUBCPresentOnAdmission (required)
* procedure.procedure[x] only CodeableConcept 
* procedure.procedure[x] 1..1 MS
* procedure.procedureCodeableConcept from ICD10PCS (required) 
* provider 1..1
* provider only Reference(CARINBBOrganization)
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false   // can be omitted, since false is the default
* supportingInfo ^slicing.description = "Slice based on value pattern"
* supportingInfo ^slicing.discriminator.type = #pattern
* supportingInfo ^slicing.discriminator.path = "category"
* supportingInfo contains 
   billingnetworkcontractingstatus 0..1 MS and
   attendingnetworkcontractingstatus 0..1 MS and
   referringnetworkcontractingstatus 0..1 MS and
   supervisingnetworkcontractingstatus 0..1 MS and
   clmrecvddate 0..1 MS and
    typeofbill 0..1 MS and 
   pointoforigin 0..1 MS and 
   admtype 0..1 MS and 
   discharge-status 0..1 MS and 
   drg 0..1 MS and
   onadmissiontype 0..1 MS    // // https://jira.hl7.org/browse/FHIR-27012
* supportingInfo[pointoforigin] ^short = "Identifies the place where the patient was identified as needing admission to a facility. This is a two position code mapped from the standard values for the UB-04 Source of Admission code (FL-15). (13 )"
* supportingInfo[admtype] ^short = "Priority of the admission. Information located on (UB04 Form Locator 14). For example, an admission type of elective indicates that the patient's condition permitted time for medical services to be scheduled. (14 )"
* supportingInfo[typeofbill] ^short = "UB04 (Form Locator 4) type of bill code provides specific information for payer purposes. The first digit of the three-digit number denotes the type of facility, the second digit classifies the type of care being billed, and the third digit  identifies the frequency of the bill for a specific course of treatment or inpatient confinement. (17 )"
* supportingInfo[clmrecvddate] ^short = "The date the claim was received by the payer (88 )"
* supportingInfo[billingnetworkcontractingstatus] ^short = "Indicates that the Billing Provider has a contract with the Plan (regardless of the network) as of the effective date of service or admission. (101 )"
* supportingInfo[attendingnetworkcontractingstatus] ^short = "Indicates the network status of the attending physician (101 )"
* supportingInfo[referringnetworkcontractingstatus] ^short = "Indicates the network status of the referring physician (101 )"
//* supportingInfo ^short = "Version of the AP-DRG codes assigned for inpatient facility claims. (32 )"
* supportingInfo[drg] ^short = "DRG codes assigned (33 )"
* supportingInfo[billingnetworkcontractingstatus].category = ClaimInformationCategoryCS#billingnetworkcontractingstatus 
* supportingInfo[billingnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[billingnetworkcontractingstatus].code 1..1 MS
* supportingInfo[billingnetworkcontractingstatus] ^definition = "Claim billing provider network status"
* supportingInfo[attendingnetworkcontractingstatus].category = ClaimInformationCategoryCS#attendingnetworkcontractingstatus
* supportingInfo[attendingnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[attendingnetworkcontractingstatus].code 1..1 MS
* supportingInfo[attendingnetworkcontractingstatus] ^definition = "Claim attending provider network status"
* supportingInfo[referringnetworkcontractingstatus].category  = ClaimInformationCategoryCS#referringnetworkcontractingstatus
* supportingInfo[referringnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[referringnetworkcontractingstatus].code 1..1 MS
* supportingInfo[referringnetworkcontractingstatus] ^definition = "Claim referring provider network status"
* supportingInfo[supervisingnetworkcontractingstatus].category  = ClaimInformationCategoryCS#supervisingnetworkcontractingstatus
* supportingInfo[supervisingnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[supervisingnetworkcontractingstatus].code 1..1 MS
* supportingInfo[supervisingnetworkcontractingstatus] ^definition = "Claim supervising provider network status"
* supportingInfo[clmrecvddate].category  = ClaimInformationCategoryCS#clmrecvddate
* supportingInfo[clmrecvddate] ^definition  = "Claim Received Date: The date the claim for payment was received"
* supportingInfo[clmrecvddate].timing[x] only date 
* supportingInfo[clmrecvddate].timing[x] 1..1 MS
* supportingInfo[typeofbill].category  = ClaimInformationCategoryCS#typeofbill
* supportingInfo[typeofbill] ^definition = "Type of Bill"
* supportingInfo[typeofbill].code from $NUBCTypeOfBill (required)
* supportingInfo[pointoforigin].category  = ClaimInformationCategoryCS#admsrc
* supportingInfo[pointoforigin].code from $NUBCPointOfOriginForAdmissionOrVisit (required)
* supportingInfo[pointoforigin] ^definition = "Claim Point of Origin for Admission or Visit"
* supportingInfo[admtype].category  = ClaimInformationCategoryCS#admtype
* supportingInfo[admtype].code from NUBCPriorityOfAdmissionn  (required)
* supportingInfo[admtype] ^short = "Claim Priority (Type) of Admission or Visit "
* supportingInfo[admtype] ^definition = "Claim Priority (Type) of Admission or Visit "
* supportingInfo[discharge-status].category  = ClaimInformationCategoryCS#discharge-status
* supportingInfo[discharge-status].code from NUBCPatientDischargeStatus   (required)
* supportingInfo[discharge-status] ^short = "Discharge Status"
* supportingInfo[discharge-status] ^definition = "Discharge Status"
* supportingInfo[drg].category  = ClaimInformationCategoryCS#drg
* supportingInfo[drg].code from CMSDRG  (required)
* supportingInfo[drg] ^short = "Claim diagnosis related group (DRG)"
* supportingInfo[drg] ^definition = "Claim diagnosis related group (DRG), including the code system, the DRG version and the code value"
* supportingInfo[onadmissiontype].code from PayerDiagnosisPresentOnAdmissionDiagnosisType  (required) // new 7/28
* supportingInfo[onadmissiontype] ^short = "On Admission Type"
* supportingInfo[onadmissiontype] ^definition = "On Admission Type"
* item.revenue from $NUBCRevenueCode (required)
* item.modifier from AMACPTCMSHCPCSProcedureModifiers (required)
* item.productOrService from AMACPTCMSHCPCSProcedureCodes (required)
* item.adjudication ^slicing.rules = #closed
* item.adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* item.adjudication ^slicing.description = "Slice based on value pattern"
* item.adjudication ^slicing.discriminator.type = #pattern 
* item.adjudication ^slicing.discriminator.path = "$this"
* item.adjudication contains
   adjudicationamounttype 0..* MS and
   denialreason 0..1 MS and
   allowedunits 0..1 MS
* item.adjudication[allowedunits] ^short = "Allowed number of units"
* item.adjudication[allowedunits].category = ClaimAdjudicationCategoryCS#allowedunits
* item.adjudication[allowedunits].value only decimal
* item.adjudication[denialreason] ^short = "Denial Reason"
* item.adjudication[denialreason].category = ClaimAdjudicationCategoryCS#denialreason 
* item.adjudication[denialreason].reason from AdjudicationDenialReason
* item.adjudication[denialreason].reason 1..1
* item.adjudication[adjudicationamounttype].category from AdjudicationCarinBBValueCodes
* item.adjudication[adjudicationamounttype] ^short = "Amounts"
* item.adjudication[adjudicationamounttype].amount MS
* adjudication ^slicing.rules = #closed
* adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* adjudication ^slicing.description = "Slice based on value pattern"
* adjudication ^slicing.discriminator.type = #value
* adjudication.category 1..1 MS 
* adjudication contains
   adjudicationamounttype 0..* MS and
   denialreason 0..1 MS 
// * adjudication ^slicing.discriminator.path = "extension('http://hl7.org/fhir/us/carin-bb/StructureDefinition/AdjudicationType').value"
//* adjudication[denialreason].extension[adjudication-type].valueCodeableConcept  = $AdjudicationSliceCodesCS#denialreason
//* adjudication[adjudicationamounttype].extension[adjudication-type].valueCodeableConcept  = $AdjudicationSliceCodesCS#adjudicationamounttype
* adjudication ^slicing.discriminator.path = "category"
* adjudication[denialreason] ^short = "Denial Reason"
* adjudication[denialreason].category = ClaimAdjudicationCategoryCS#denialreason 
* adjudication[denialreason].reason from AdjudicationDenialReason
* adjudication[denialreason].reason 1..1
* adjudication[adjudicationamounttype].category from AdjudicationCarinBBValueCodes  (required)
* adjudication[adjudicationamounttype] ^short = "Amounts"
* adjudication[adjudicationamounttype].amount 1..1
* total ^slicing.rules = #open
* total ^slicing.ordered = false   // can be omitted, since false is the default
* total ^slicing.description = "Slice based on value pattern"
* total  ^slicing.discriminator.type = #value
* total  ^slicing.discriminator.path = "category"
* total.category 1..1 MS 
* total contains
   adjudicationamounttype 0..* MS and
   inoutnetwork 1..1 MS 
* total[inoutnetwork] ^short = "Benefit Payment Status"
* total[inoutnetwork].category from BenefitPaymentStatus (required)
* total[adjudicationamounttype].category from AdjudicationCarinBBValueCodes  (required)
* total[adjudicationamounttype] ^short = "Amounts"
//* total[adjudicationamounttype].amount 1..1
* patient ^short = "Unique identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided. (1 )"
* insurance.coverage ^short = "Unique identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided. (1 )"
* insurance ^short = "Code of the primary payer responsible for the claim (2 )"
* type ^short = "Specifies the type of claim. (e.g., inpatient insitutional, outpatient institutional, physician, etc.).  (16 )"
* billablePeriod ^short = "Identifies the date the patient was admitted/discharged for facility care (18,19 )"
* diagnosis ^short = "ICD-10-CM code describing the condition chiefly responsible for a patient's admission to a facility. It may be different from the principal diagnosis, which is the diagnosis assigned after evaluation. Decimals will be included. (21 )"
* procedure ^short = "Principal medical procedure a patient received during inpatient stay. Coding methods for this field is International Classification of Diseases Surgical Procedures (ICD-10). (24 )"
* diagnosis.onAdmission ^short = "Used to capture whether a diagnosis was present at time of a patient's admission. This is used to group diagnoses into the proper DRG for all claims involving inpatient admissions to general acute care facilities. (28 )"
//* diagnosis ^short = "This is any valid ICD-10 Diagnosis code in the range V00.* through Y99.*. (30 )"
* diagnosis ^short = "This is the reason given by the patient for visiting the doctor or practitioner. It is not the doctor's or practitioner's diagnosis. Patient Reason for Visit Codes can be any ICD-10diagnosis and may or may not be a repeat of an ICD-10 Principal or Secondary diagnosis field. (31 )"
* identifier ^short = "Claim identifier for a claim. (35 )"
* item.sequence ^short = "Line identification number that represents the number assigned in a source system for identification and processing. (36 )"
* item.productOrService ^short = "Medical procedure a patient received from a health care provider. Current coding methods include: CPT-4 and HCFA Common Procedure Coding System Level II - (HCPCSII). (40 )"
* item.modifier ^short = "Modifier(s) for the procedure represented on this line. Identifies special circumstances related to the performance of the service. (41 )"
* item.quantity ^short = "The quantity of units, times, days, visits, services, or treatments for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider.  (42 )"
* item.revenue ^short = "Code used on the UB-04 (Form Locator 42) to identify a specific accommodation, ancillary service, or billing calculation related to the service being billed (86 )"
* payment.type ^short = "Indicates whether the claim was paid or denied. (91 )"
* payment.adjustmentReason ^short = "Reason codes used to interpret the Non-Covered Amount (92 )"
* item.adjudication ^short = "Reason codes used to interpret the Non-Covered Amount (92 )"
* careTeam.provider ^short = "The National Provider Identifier assigned to the Attending Physician for the admission (93 )"
* provider ^short = "The National Provider Identifier assigned to the Billing Provider. (94 )"
* careTeam.provider ^short = "The National Provider Identifier assigned to the Rendering Provider. This is the lowest level of provider available (for example, if both individual and group are available, then the individual should be provided). (95 )"
* careTeam.provider ^short = "The identifier assigned to the PCP Provider. (96 )"
* careTeam.provider ^short = "The NPI of the referring physician. (99 )"
* payment.date ^short = "The date the claim was paid. (107 )"
* patient ^short = "Provider submitted information that can be included on the claim (109 )"
* patient ^short = "Provider submitted information that can be included on the claim (110 )"
* related ^short = "Prior claim number (111 )"
* related ^short = "Replaced or Merged claim number (112 )"
* supportingInfo.code ^short = "Name of the DRG grouper assigned (113 )"
* supportingInfo.code ^short = "Patient’s status as of the discharge date for a facility stay. Information located on UB04 (Form Locator 17). (117 )"
* payee.type ^short = "Identifies recipient of benefits payable; i.e., provider or subscriber (120 )"
* payee.party ^short = "Recipient reference (121 )"
* status ^short = " (140 )"
* insurance ^short = "Identifies the primary payer.  For use only on secondary claims.   (141 )"
* adjudication.category ^short = "Indicates the in network or out of network payment status of the claim. (142 )"
* diagnosis.diagnosis[x] ^short = "A plain text representation of the diagnosis (145 )"
* total.amount ^short = "Total amount for each category (i.e., submitted, allowed, etc.) (148 )"
* item.adjudication ^short = "The quantity of units, times, days, visits, services, or treatments allowed for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider.  (149 )"
* patient MS
* insurance.coverage MS
* insurance MS
* billablePeriod MS
* diagnosis MS
* procedure MS
* diagnosis.onAdmission MS
* identifier MS
* item.sequence MS
* item.productOrService MS
* item.modifier MS
* item.quantity MS
* item.revenue MS
* payment.type MS
* payment.adjustmentReason MS
* provider MS
* careTeam.provider MS
* payment.date MS
* patient MS
* related MS
* supportingInfo.code MS
* payee.type MS
* payee.party MS
* status MS
* insurance MS
* total.amount MS


Alias: $AdjudicationTypeExt = http://hl7.org/fhir/us/carin-bb/StructureDefinition/AdjudicationType

Profile: CARINBBExplanationOfBenefitOutpatientFacility
Parent: CARIN-BB-ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit-Outpatient-Facility
Title: "CARIN BB ExplanationOfBenefit Outpatient Facility"
Description: "This profile is used for Explanation of Benefits (EOBs) based on claims submitted by clinics, hospitals, skilled nursing facilities and other institutions for outpatient services, which may include including the use of equipment and supplies, laboratory services, radiology services and other charges. Outpatient claims are submitted for services rendered at a facility that are not part of an overnight stay. 
The claims data is based on the institutional claim form UB-04, submission standards adopted by the Department of Health and Human Services as form CMS-1450."
* type  = $HL7ClaimTypeCS#institutional
* careTeam.role from CARINBBInstitutionalClaimCareTeamRoleCodes (required)   // was PayerInstitutionalProviderRole
* careTeam obeys EOB-inst-careTeam-practitioner
* careTeam obeys EOB-inst-careTeam-organization
* diagnosis 1..*
* diagnosis.diagnosis[x] 1..1 MS
* diagnosis.diagnosis[x] only CodeableConcept
* diagnosis.diagnosis[x] from ICD10CM (required)
* provider only Reference(CARINBBOrganization)
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false   // can be omitted, since false is the default
* supportingInfo ^slicing.description = "Slice based on value pattern"
* supportingInfo ^slicing.discriminator.type = #pattern
* supportingInfo ^slicing.discriminator.path = "category"
* supportingInfo contains 
   billingnetworkcontractingstatus 0..1 MS and
   attendingnetworkcontractingstatus 0..1 MS and
   referringnetworkcontractingstatus 0..1 MS and
   supervisingnetworkcontractingstatus 0..1 MS and
   clmrecvddate 0..1 MS and
   typeofbill 0..1 MS and 
   pointoforigin 0..1 MS and 
   admtype 0..1 MS and 
   discharge-status 0..1 MS 
* supportingInfo[billingnetworkcontractingstatus].category = ClaimInformationCategoryCS#billingnetworkcontractingstatus 
* supportingInfo[billingnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[billingnetworkcontractingstatus].code 1..1
* supportingInfo[billingnetworkcontractingstatus] ^short = "Claim performing provider network status"
* supportingInfo[attendingnetworkcontractingstatus].category = ClaimInformationCategoryCS#attendingnetworkcontractingstatus
* supportingInfo[attendingnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[attendingnetworkcontractingstatus].code 1..1 MS
* supportingInfo[attendingnetworkcontractingstatus] ^short = "Claim attending provider network status"
* supportingInfo[attendingnetworkcontractingstatus] ^definition = "Claim attending provider network status"
* supportingInfo[referringnetworkcontractingstatus].category = ClaimInformationCategoryCS#referringnetworkcontractingstatus
* supportingInfo[referringnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[referringnetworkcontractingstatus].code 1..1
* supportingInfo[referringnetworkcontractingstatus] ^short = "Claim attending provider network status"
* supportingInfo[supervisingnetworkcontractingstatus].category  = ClaimInformationCategoryCS#supervisingnetworkcontractingstatus
* supportingInfo[supervisingnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[supervisingnetworkcontractingstatus].code 1..1 MS
* supportingInfo[supervisingnetworkcontractingstatus] ^short = "Claim supervising provider network status"
* supportingInfo[supervisingnetworkcontractingstatus] ^definition = "Claim supervising provider network status"
* supportingInfo[clmrecvddate].category = ClaimInformationCategoryCS#clmrecvddate
* supportingInfo[clmrecvddate] ^short = "Claim Received Date"
* supportingInfo[clmrecvddate].timing[x] only date 
* supportingInfo[clmrecvddate].timing[x] 1..1
* supportingInfo[typeofbill].category = ClaimInformationCategoryCS#typeofbill
* supportingInfo[typeofbill] ^short = "Type of Bill"
* supportingInfo[typeofbill].code from $NUBCTypeOfBill (required)
* supportingInfo[pointoforigin].category = ClaimInformationCategoryCS#admsrc
* supportingInfo[pointoforigin].code from $NUBCPointOfOriginForAdmissionOrVisit (required)
* supportingInfo[pointoforigin] ^short = "Claim Point of Origin for Admission or Visit"
* supportingInfo[admtype].category = ClaimInformationCategoryCS#admtype
* supportingInfo[admtype].code from NUBCPriorityOfAdmissionn  (required)
* supportingInfo[admtype] ^short = "Claim Priority (Type) of Admission or Visit "
* supportingInfo[discharge-status].category = ClaimInformationCategoryCS#discharge-status
* supportingInfo[discharge-status] ^short = "Discharge Status"
* supportingInfo[discharge-status].code from NUBCPatientDischargeStatus   (required)
* item.revenue from $NUBCRevenueCode (required)
* item.modifier from AMACPTCMSHCPCSProcedureModifiers (required)
* item.productOrService from AMACPTCMSHCPCSProcedureCodes (required)
* item.productOrService ^definition = "Put the definition here for item.productOrService here"
* item.productOrService ^short = "Put the short definition here for item.productOrService here"
* item.productOrService ^comment = "Put the comment here for item.productOrService here"
* item  ^definition = "Put the definition here for item"
* item  ^short = "Put the short definition here for item"
* item  ^comment = "Put the comment here for item"
* item.adjudication ^slicing.rules = #closed
* item.adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* item.adjudication ^slicing.description = "Slice based on $this pattern"
* item.adjudication ^slicing.discriminator.type = #pattern
* item.adjudication ^slicing.discriminator.path = "category"
* item.adjudication contains
   adjudicationamounttype 0..* MS and
   denialreason 0..1 MS and
   allowedunits 0..1 MS
* item.adjudication[allowedunits] ^short = "Allowed number of units"
* item.adjudication[allowedunits].category = ClaimAdjudicationCategoryCS#allowedunits
* item.adjudication[allowedunits].value only decimal
* item.adjudication[denialreason] ^short = "Denial Reason"
* item.adjudication[denialreason].category = ClaimAdjudicationCategoryCS#denialreason 
* item.adjudication[denialreason].reason from AdjudicationDenialReason
* item.adjudication[denialreason].reason 1..1 MS
* item.adjudication[adjudicationamounttype].category from AdjudicationCarinBBValueCodes
* item.adjudication[adjudicationamounttype] ^short = "Amounts"
* item.adjudication[adjudicationamounttype].amount  MS
* adjudication ^slicing.rules = #closed
* adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* adjudication ^slicing.description = "Slice based on $this pattern"
* adjudication ^slicing.discriminator.type = #pattern
* adjudication ^slicing.discriminator.path = "category"
* adjudication.category 1..1 MS
* adjudication contains
   adjudicationamounttype 0..* MS and
   denialreason 0..1 MS 
* adjudication[denialreason] ^short = "Denial Reason"
* adjudication[denialreason].category = ClaimAdjudicationCategoryCS#denialreason 
* adjudication[denialreason].reason from AdjudicationDenialReason
* adjudication[denialreason].reason 1..1 MS
* adjudication[adjudicationamounttype].category from AdjudicationCarinBBValueCodes (required)
* adjudication[adjudicationamounttype] ^short = "Amounts"
* adjudication[adjudicationamounttype].amount 1..1 MS
* diagnosis 1..*
* diagnosis.type 1..1 MS
* diagnosis.type from PayerOutpatientfacilitydiagnosistype (required)
* total ^slicing.rules = #open
* total ^slicing.ordered = false   // can be omitted, since false is the default
* total ^slicing.description = "Slice based on value pattern"
* total  ^slicing.discriminator.type = #value
* total  ^slicing.discriminator.path = "category"
* total.category 1..1 MS 
* total contains
   adjudicationamounttype 0..* MS and
   inoutnetwork 1..1 MS 
* total[inoutnetwork] ^short = "Benefit Payment Status"
* total[inoutnetwork].category from BenefitPaymentStatus (required)
* total[adjudicationamounttype].category from AdjudicationCarinBBValueCodes  (required)
* total[adjudicationamounttype] ^short = "Amounts"
//* total[adjudicationamounttype].amount 1..1


Profile: CARINBBExplanationOfBenefitProfessionalNonClinician
Parent: CARIN-BB-ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit-Professional-NonClinician
Title: "CARIN BB ExplanationOfBenefit Professional NonClinician"
Description: "This profile is used for Explanation of Benefits (EOBs) based on claims submitted by physicians, suppliers and other non-institutional providers for professional services. These services may be rendered in inpatient or outpatient, including office locations. 
The claims data is based on the professional claim form 1500, submission standards adopted by the Department of Health and Human Services as form CMS-1500."
* careTeam obeys EOB-prof-careTeam-practitioner
* careTeam obeys EOB-prof-careTeam-organization
* type = $HL7ClaimTypeCS#professional
// * provider only Reference(CARINBBOrganization or CARINBBPractitionerRole or CARINBBPractitioner) -- set in base class
* supportingInfo ^slicing.discriminator.type = #pattern 
* supportingInfo ^slicing.discriminator.path = "category"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false   // can be omitted, since false is the default
* supportingInfo ^slicing.description = "Slice based on $this pattern"
* supportingInfo contains 
   billingnetworkcontractingstatus 0..1 MS and
   referringnetworkcontractingstatus 0..1 MS and
   performingnetworkcontractingstatus 0..1 MS and
   sitenetworkcontractingstatus 0..1 MS and
   clmrecvddate 0..1 MS 
* supportingInfo[clmrecvddate] ^short = "The date the claim was received by the payer (88 )"
* supportingInfo[billingnetworkcontractingstatus] ^short = "Indicates that the Billing Provider has a contract with the Plan (regardless of the network) that is effective on the date of service or admission. (101 )"
* supportingInfo[performingnetworkcontractingstatus] ^short = "Indicates that the Performing Provider has a contract with the Plan (regardless of the network) that is effective on the date of service or admission. (101 )"
* supportingInfo[referringnetworkcontractingstatus] ^short = "Indicates the network status of the referring physician (101 )"
* supportingInfo[sitenetworkcontractingstatus] ^short = "Indicates the network status of the site of service (101 )"
* supportingInfo[billingnetworkcontractingstatus].category = $ClaimInformationCategoryCS#billingnetworkcontractingstatus 
* supportingInfo[billingnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[billingnetworkcontractingstatus].code 1..1 
* supportingInfo[billingnetworkcontractingstatus].category.coding 1..1
* supportingInfo[referringnetworkcontractingstatus].category = $ClaimInformationCategoryCS#referringnetworkcontractingstatus
* supportingInfo[referringnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[referringnetworkcontractingstatus].code 1..1
* supportingInfo[performingnetworkcontractingstatus].category = $ClaimInformationCategoryCS#performingnetworkcontractingstatus
* supportingInfo[performingnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[performingnetworkcontractingstatus].code 1..1
* supportingInfo[sitenetworkcontractingstatus].category = $ClaimInformationCategoryCS#sitenetworkcontractingstatus
* supportingInfo[sitenetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[clmrecvddate].category = ClaimInformationCategoryCS#clmrecvddate
* supportingInfo[clmrecvddate].timing[x] only date 
* supportingInfo[clmrecvddate].timing[x] 1..1
* careTeam.role from CARINBBProfessionalAndNonclinicanClaimCareTeamRoleCodes  (required)  // was PayerProfessionalAndNonClinicianProviderRole
* diagnosis 1..* MS
* diagnosis.type 1..1 MS
* diagnosis.type from PayerProfessionalandnoncliniciandiagnosistype (required)
* diagnosis.diagnosis[x] 1..1 MS
* diagnosis.diagnosis[x] only CodeableConcept
* diagnosis.diagnosis[x] from ICD10CM (required)
* item.modifier from AMACPTCMSHCPCSProcedureModifiers (required)
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
* item.adjudication[allowedunits] ^short = "The quantity of units, times, days, visits, services, or treatments for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider.  (149 )"
* item.adjudication[allowedunits].category = ClaimAdjudicationCategoryCS#allowedunits
* item.adjudication[allowedunits].value only decimal
* item.adjudication[denialreason].category  = $ClaimAdjudicationCategoryCS#denialreason 
* item.adjudication[denialreason].reason from AdjudicationDenialReason
* item.adjudication[denialreason].reason 1..1 MS
* item.adjudication[denialreason] ^short = "Reason codes used to interpret the Non-Covered Amount (92 )"
* item.adjudication[adjudicationamounttype].category from AdjudicationCarinBBValueCodes 
* item.adjudication[adjudicationamounttype] ^short = "Amounts"
* item.adjudication[adjudicationamounttype].amount  MS
* item.adjudication[inoutnetwork] ^short = "Indicates the in network or out of network payment status of the claim. (142 )"
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
* patient ^short = "Unique identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided. (1 )"
* insurance.coverage ^short = "Unique identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided. (1 )"
* insurance ^short = "Code of the primary payer responsible for the claim (2 )"
* type ^short = "Specifies the type of claim. (e.g., inpatient insitutional, outpatient institutional, physician, etc.).  (16 )"
// * item.adjudication ^short = "Amount submitted by the provider for reimbursement of health care services. This amount includes non-covered services. (20 )"
// * item.adjudication ^short = "The contracted reimbursable amount for covered medical services or supplies or amount reflecting local methodology for noncontracted providers. Allowed  mount should not include any COB adjustment. That is, the Allowed amount on a claim should be the same when the Plan is primary or secondary. (20 )"
// * item.adjudication ^short = "The contracted reimbursable amount for covered medical services or supplies or amount reflecting local methodology for noncontracted providers. (20 )"
// * item.adjudication ^short = "The amount the insured individual pays, as a set percentage of the cost of covered medical services, as an out-of-pocket payment to the provider. Example: Insured pays 20% and the insurer pays 80%.  (20 )"
// * item.adjudication ^short = "Amount an insured individual pays directly to a provider at the time the services or supplies are rendered. Usually, a copay will be a fixed amount per service, such as $15.00 per office visit. (20 )"
// * item.adjudication ^short = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract. (20 )"
// * item.adjudication ^short = "The reduction in the payment amount to reflect the carrier as a secondary payor. (20 )"
// * item.adjudication ^short = "The amount sent to the payee from the health plan. This amount is to include withhold amounts (the portion of the claim that is deducted and withheld by the Plan from the provider's payment) and exclude any member cost sharing.  It should include the total of member and provider payments. (20 )"
// * item.adjudication ^short = "The amount paid by the member at the point of service. (20 )"
// * item.adjudication ^short = "The amount of the discount (20 )"
// * item.adjudication ^short = "The amount paid to the provider. (20 )"
// * item.adjudication ^short = "The amount paid to the member. (20 )"
// * item.adjudication ^short = "The amount of the member's liability. (20 )"
* diagnosis ^short = "The member's principal condition treated on the claim (837P Data Element HI01 or CMS 1500 Item 21A). Decimals will be included.  (22 )"
// * diagnosis ^short = "The member's principal condition treated during this service. This may or may not be different from the admitting diagnosis. Decimals will be included.  (22 )"
// * diagnosis ^short = "Additional diagnosis identified for this member (837P Data Element HI02 or CMS 1500 Item 21B). Decimals will be included. (23 )"
// * diagnosis ^short = "Additional diagnosis identified for this member. Decimals will be included.  (23 )"
* diagnosis.diagnosis[x] ^short = "A plain text representation of the diagnosis (145 )"
* identifier ^short = "Claim identifier for a claim. (35 )"
* item.sequence ^short = "Line identification number that represents the number assigned in a source system for identification and processing. (36 )"
* item.productOrService ^short = "Medical procedure a patient received from a health care provider. Current coding methods include: CPT-4 and HCFA Common Procedure Coding System Level II - (HCPCSII). (40 )"
* item.modifier ^short = "Modifier(s) for the procedure represented on this line. Identifies special circumstances related to the performance of the service. (41 )"
* item.quantity ^short = "The quantity of units, times, days, visits, services, or treatments for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider.  (42 )"
* item.location[x] ^short = "Code indicating the location, such as inpatient, outpatient facility, office, or home health agency, where this service was performed. (46 )"
* provider ^short = "This field identifies the specialty of the physician or duly licensed professional practitioner for the claim. For physicians, this usually represents his/her board registered specialty.  (47 )"
* payment.type ^short = "Indicates whether the claim was paid or denied. (91 )"
* provider ^short = "The National Provider Identifier assigned to the Billing Provider. (94 )"
* careTeam.provider ^short = "The National Provider Identifier assigned to the Rendering Provider. This is the lowest level of provider available (for example, if both individual and group are available, then the individual should be provided). (95 )"
* careTeam.provider ^short = "The identifier assigned to the PCP Provider. (96 )"
* facility ^short = "The NPI of the facility where the services were rendered. (97 )"
* careTeam.provider ^short = "The NPI of the referring physician. (99 )"
* payment.date ^short = "The date the claim was paid. (107 )"
// * patient ^short = "Provider submitted information that can be included on the claim (109 )"
// * patient ^short = "Provider submitted information that can be included on the claim (110 )"
// * related ^short = "Prior claim number (111 )"
// * related ^short = "Replaced or Merged claim number (112 )"
* item.servicedPeriod ^short = "Date services began/ended. Located on CMS 1500 (Form Locator 24A) (118 )"
* payee.type ^short = "Identifies recipient of benefits payable; i.e., provider or subscriber  (120 )"
* payee.party ^short = "Recipient reference (121 )"
* insurance ^short = "Identifies the primary payer.  For use only on secondary claims.   (141 )"
* item.productOrService ^short = "A plain text representation of the CPT / HCPCS procedure (147 )"
* total.amount ^short = "Total amount for each category (i.e., submitted, allowed, etc.) (148 )"
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


Profile: CARINBBExplanationOfBenefitPharmacy
Parent: CARIN-BB-ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit-Pharmacy
Title: "CARIN BB ExplanationOfBenefit Pharmacy"
Description: "This profile is used for Explanation of Benefits (EOBs) based on claims submitted by retail pharmacies. 
The claims data is based on submission standards adopted by the Department of Health and Human Services defined by NCPDP (National Council for Prescription Drug Program)"
* type = $HL7ClaimTypeCS#pharmacy 
// * provider only Reference(CARINBBOrganization or CARINBBPractitionerRole or CARINBBPractitioner)   Set in Abstract Class.  No need to set here.
* careTeam obeys EOB-pharm-careTeam-practitioner
* careTeam obeys EOB-pharm-careTeam-organization
* supportingInfo ^slicing.discriminator.type = #pattern 
* supportingInfo ^slicing.discriminator.path = "category"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false   // can be omitted, since false is the default
* supportingInfo ^slicing.description = "Slice based on $value pattern"
* supportingInfo contains 
   billingnetworkcontractingstatus 0..1 MS and
   brandgenericcode 0..1 MS and
   rxoriginCode 0..1 MS and
   refillNum 0..1 MS and
   dawcode 0..1 MS and
   clmrecvddate 0..1 MS and
   dayssupply 0..1 MS 
* supportingInfo[billingnetworkcontractingstatus].category = ClaimInformationCategoryCS#billingnetworkcontractingstatus
* supportingInfo[billingnetworkcontractingstatus] ^short = "Indicates that the Billing Provider has a contract with the Plan (regardless of the network) that is effective on the date of service or admission. (101 )"
* supportingInfo[billingnetworkcontractingstatus].code from PayerProviderContractingStatus (required) 
* supportingInfo[billingnetworkcontractingstatus].code 1..1
* supportingInfo[brandgenericcode].category = ClaimInformationCategoryCS#brandgenericcode   
* supportingInfo[brandgenericcode] ^short = "Whether the plan adjudicated the claim as a brand or generic drug (144 )"
* supportingInfo[brandgenericcode].code from NCPDPBrandGenericCode (required)
* supportingInfo[rxoriginCode].category = ClaimInformationCategoryCS#rxorigincode   
* supportingInfo[rxoriginCode] ^short = "Whether the prescription was transmitted as an electronic prescription, by phone, by fax, or as a written paper copy (143 )"
* supportingInfo[rxoriginCode].code from NCPDPPrescriptionOriginCode (required)
* supportingInfo[refillNum].category = ClaimInformationCategoryCS#refillnum
* supportingInfo[refillNum] ^short = "The number fill of the current dispensed supply (0, 1, 2, etc.) (137 )"
* supportingInfo[dawcode].category = ClaimInformationCategoryCS#dawcode       
* supportingInfo[dawcode] ^short = "Dispense As Written product selection code" 
* supportingInfo[dawcode] ^definition = "Prescriber's instruction regarding substitution of generic equivalents or order to dispense the specific prescribed medication (79 )"
* supportingInfo[dawcode].code from NCPDPDispensedAsWritten (required)
* supportingInfo[clmrecvddate].category = ClaimInformationCategoryCS#clmrecvddate
* supportingInfo[clmrecvddate] ^short = "The date the claim was received by the payer (88 )"
* supportingInfo[dayssupply].category = ClaimInformationCategoryCS#dayssupply
* supportingInfo[dayssupply] ^short = "Number of days supply of medication dispensed by the pharmacy (77 )"
* item.productOrService from FDANDCNCPDPCompoundCode (required)
* item.detail.productOrService  from FDANationalDrugCode (required)
* item.detail MS
* item.detail.quantity MS 
* careTeam.role from CARINBBPharmacyClaimCareTeamRoleCodes (required)   // was PayerPharmacyProviderRole
* item.adjudication ^slicing.rules = #closed
* item.adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* item.adjudication ^slicing.description = "Slice based on $this pattern"
* item.adjudication ^slicing.discriminator.type = #pattern
* item.adjudication ^slicing.discriminator.path = "category"
* item.adjudication contains
   adjudicationamounttype 0..* MS and
   denialreason 0..1 MS and
   inoutnetwork 0..1 MS
* item.adjudication[inoutnetwork] ^short = "Indicates the in network or out of network payment status of the claim. (142 )"
* item.adjudication[inoutnetwork].category from BenefitPaymentStatus (required)
* item.adjudication[denialreason] ^short = "Reason codes used to interpret the Non-Covered Amount (92 )"
* item.adjudication[denialreason].category = ClaimAdjudicationCategoryCS#denialreason 
* item.adjudication[denialreason].reason from NCPDPRejectCode
* item.adjudication[denialreason].reason 1..1
* item.adjudication[adjudicationamounttype].category from AdjudicationCarinBBValueCodes
* item.adjudication[adjudicationamounttype] ^short = "Amounts"
* item.adjudication[adjudicationamounttype].amount  MS
* total ^slicing.rules = #open 
* total ^slicing.ordered = false   // can be omitted, since false is the default
* total ^slicing.description = "Slice based on value pattern"
* total  ^slicing.discriminator.type = #value
* total  ^slicing.discriminator.path = "category"
* total.category 1..1 MS 
* total contains
   adjudicationamounttype 0..* MS and 
   inoutnetwork 1..1 MS 
* total[inoutnetwork] ^short = "Benefit Payment Status"
* total[inoutnetwork].category from BenefitPaymentStatus (required)
* total[adjudicationamounttype].category from AdjudicationCarinBBValueCodes  (required)
* total[adjudicationamounttype] ^short = "Amounts"
//* total[adjudicationamounttype].amount 1..1
* patient ^short = "Unique identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided. (1 )"
* insurance.coverage ^short = "Unique identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided. (1 )"
* insurance ^short = "Code of the primary payer responsible for the claim (2 )"
* type ^short = "Specifies the type of claim. (e.g., inpatient insitutional, outpatient institutional, physician, etc.).  (16 )"
/*
* item.adjudication ^short = "Represents the Usual & Customary Charge Amount or the Average Wholesale Price (AWP) for the Quantity Dispensed plus the Dispensing Fee Paid. (20 )"
* item.adjudication ^short = "The contracted reimbursable amount for covered medical services or supplies or amount reflecting local methodology for noncontracted providers. Allowed  mount should not include any COB adjustment. That is, the Allowed amount on a claim should be the same when the Plan is primary or secondary. (20 )"
* item.adjudication ^short = "The contracted reimbursable amount for covered medical services or supplies or amount reflecting local methodology for noncontracted providers. (20 )"
* item.adjudication ^short = "Amount to be collected from a patient that is included in the Patient Pay Amount that is due to a per prescription copay or coinsurance. (20 )"
* item.adjudication ^short = "Amount to be collected from a patient that is included in the Patient Pay Amount that is due to a per prescription copay or coinsurance. (20 )"
* item.adjudication ^short = "Non-Covered Amount represents the NCPDP financial response field Amount Exceeding Periodic Benefit Maximum. (20 )"
* item.adjudication ^short = "The reduction in the payment amount to reflect the carrier as a secondary payor. (20 )"
* item.adjudication ^short = "The amount sent to the payee from the health plan. This amount is to include withhold amounts (the portion of the claim that is deducted and withheld by the Plan from the provider's payment) and exclude any member cost sharing.  It should include the total of member and provider payments. (20 )"
* item.adjudication ^short = "Amount that is calculated by the processor and returned to the pharmacy as the total amount to be paid by the patient to the pharmacy; the patient’s total cost share, including copayments, amounts applied to deductible, over maximum amounts, penalties, etc (20 )"
* item.adjudication ^short = "The amount of the discount (20 )"
* item.adjudication ^short = "Price paid for the drug excluding mfr discounts.  It is the sum of the following components:ingredient cost, dispensing fee, sales tax, and vaccine administration fee (20 )"
* item.adjudication ^short = "The amount paid to the provider. (20 )"
* item.adjudication ^short = "The amount paid to the member. (20 )"
* item.adjudication ^short = "The amount of the member's liability. (20 )"
* item.adjudication ^short = "Reason codes used to interpret the Non-Covered Amount (92 )"
* item.adjudication ^short = "Indicates the in network or out of network payment status of the claim. (142 )"
*/
* identifier ^short = "Assigned by the pharmacy at the time the prescription is filled (35 )"
* item.sequence ^short = "Line identification number that represents the number assigned in a source system for identification and processing. (36 )"
* item.productOrService ^short = "National Drug Code (NDC) (38 )"
* item.quantity ^short = "Quantity dispensed for the drug (39 )"
* item.productOrService ^short = "The code indicating whether or not the prescription is a compound (78 )"
* item.quantity ^short = "The unit of measurement for the drug. (gram, ml, etc.) (151 )"
* payment.type ^short = "Indicates whether the claim was paid or denied. (91 )"
* provider ^short = "The National Provider Identifier assigned to the Billing Provider. (94 )"
* careTeam.provider ^short = "The identifier assigned to the PCP Provider. (95 )"
* payment.date ^short = "The date the claim was paid. (107 )"
* payee.type ^short = "Identifies recipient of benefits payable; i.e., provider or subscriber (120 )"
* payee.party ^short = "Recipient reference (121 )"
* careTeam.provider ^short = "The identifier from NCPDP field # 411-DB (Prescriber ID) that identifies the National Provider Identifier (NPI) of the provider who prescribed the pharmaceutical. (122 )" 
* insurance ^short = "Identifies the primary payer.  For use only on secondary claims.   (141 )"
* total.amount ^short = "Total amount for each category (i.e., submitted, allowed, etc.) (148 )"
* patient MS
* insurance.coverage MS
* insurance MS
* type MS
* identifier MS
* item.sequence MS
* item.productOrService MS
* item.quantity MS
* item.productOrService MS
* item.serviced[x] ^short = "Identifies date the prescription was filled or professional service rendered (90 )"   // listed as item.serviced in CPCDS spreadsheet
* item.serviced[x] MS       // listed as item.serviced in CPCDS spreadsheet
* payment.type MS
* provider MS
* careTeam.provider MS
* payment.date MS
* related MS
* payee.type MS
* payee.party MS
* careTeam.provider MS
* status MS
* insurance MS
* total.amount MS


// Do all references to Organization in this profile need to target CARINBBOrganization?
Profile: CARINBBOrganization
Parent:  $USCoreOrganization
Id:  CARIN-BB-Organization
Title: "CARIN BB Organization"
Description: "CARIN Blue Button Organization Profile."
* meta.lastUpdated 1..1  MS
* meta.profile 1..* MS
// Slicing stuff missing?
// * identifier ^slicing.discriminator.path = "$this"
// * identifier ^slicing.rules = #open
// * identifier ^slicing.discriminator.type = #pattern 
// * identifier ^slicing.ordered = false   // can be omitted, since false is the default
// * identifier ^slicing.description = "Slice based on $this pattern"
//* identifier.type 1..1 MS
//* identifier.type from OrganizationIdentifierType (extensible)
* identifier contains 
   tax 0..* MS and
   payerid 0..* MS
* identifier[CLIA] ^patternIdentifier.type  = $IdentifierTypeCS#clia 
* identifier[CLIA].type 1..1 MS
* identifier[NPI] ^patternIdentifier.type  = $IdentifierTypeCS#npi 
* identifier[NPI].type 1..1 MS
* identifier[tax] ^short = "Tax ID Number"
* identifier[tax] ^patternIdentifier.type  = $IdentifierTypeCS#tax
* identifier[tax].type 1..1 MS
* identifier[tax] ^patternIdentifier.system = "urn:oid:2.16.840.1.113883.4.4"
* identifier[payerid] ^short = "Payer ID"
* identifier[payerid] ^patternIdentifier.type  = $IdentifierTypeCS#payerid 
* identifier[payerid].type 1..1 MS
//* identifier[payerid].system = <what>

Profile: CARINBBPatient
Parent: $USCorePatient
Id: CARIN-BB-Patient
Title: "CARIN BB Patient"
Description: "CARIN Blue Button Patient Profile."
* meta.lastUpdated 1..1 MS
* meta.profile 1..* MS
* identifier.type from PatientIdentifierType (extensible)
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #pattern 
* identifier ^slicing.ordered = false   // can be omitted, since false is the default
* identifier ^slicing.description = "Slice based on $this pattern"
* identifier contains 
   memberid 1..* MS and
   medrecnum 0..* MS and
   uniquememberid 0..* MS and
   patacctnum 0..* MS 
* identifier[memberid] ^patternIdentifier.type = $IdentifierTypeCS#mb
* identifier[memberid] ^short = "Member ID"
* identifier[memberid].type.coding 1..* MS
* identifier[medrecnum] ^patternIdentifier.type = $IdentifierTypeCS#mr
* identifier[medrecnum] ^short = "Medical Record Number"
* identifier[medrecnum].type.coding 1..* MS
* identifier[patacctnum] ^patternIdentifier.type = $IdentifierTypeCS#pt
* identifier[patacctnum] ^short = "Patient Account Number"
* identifier[patacctnum].type.coding 1..* MS
* identifier[uniquememberid] ^short = "Unique Member ID"
* identifier[uniquememberid].type.coding 1..* MS
* identifier[uniquememberid] ^patternIdentifier.type = $IdentifierTypeCS#um
* birthDate ^short = "Date of birth of the member (70 )"
* gender ^short = "Gender of the member (71 )"
* deceasedDateTime ^short = "Date of death of the member (124 )"
* name ^short = "The name of the patient (130 )"
* address ^short = "This represents the member's 5 digit zip code (131 )"
* deceasedBoolean ^short = "Indicates if the patient is deceased (150 )"
* birthDate MS
* gender MS
* address MS
* name MS
* address MS
* deceasedBoolean MS
* deceasedDateTime MS


Profile: CARINBBPractitionerRole
Parent: PractitionerRole       // Changed to be R4 base, and not USCore FHIR-28124
Id: CARIN-BB-PractitionerRole
Title: "CARIN BB PractitionerRole"
Description: "CARIN Blue Button PractitionerRole Profile."
* meta.lastUpdated 1..1 MS
* meta.profile 1..* MS
* organization only Reference(CARINBBOrganization)
* practitioner only Reference(CARINBBPractitioner)
//* location only Reference (CARINBBLocation)
* code from $USCoreProviderRole (required)   
* specialty from $USCoreProviderSpecialty (required )


// What needs to change?

Profile: CARINBBPractitioner
Parent: $USCorePractitioner
Id: CARIN-BB-Practitioner
Title: "CARIN BB Practitioner"
Description: "CARIN Blue Button Practitioner Profile."
* meta.lastUpdated 1..1 MS
* meta.profile 1..* MS

/*
// WHat needs to change?
Profile: CARINBBLocation
Parent: $USCoreLocation
Id: CARIN-BB-Location
Title: "CARIN BB Location"
Description: "CARIN Blue Button Location Profile."
* meta.lastUpdated 1..1 MS
* meta.profile 1..* MS
*/

Invariant:  EOB-insurance-focal  
Description: "EOB.insurance:  at most one with focal = true"
Expression: "insurance.select (focal = true).count() < 2"
Severity:   #error


Invariant: EOB-inst-careTeam-practitioner
Description: "Institutional EOB:  Careteam roles refer to a practitioner"
Expression: "( careTeam.role.coding.code in 
('attending' or 'pcp' or 'referring' or 'supervising')) implies 
 careTeam.provider.reference.resolve().is(FHIR.Practitioner)"
Severity: #error

Invariant: EOB-inst-careTeam-organization
Description: "Institutional EOB:  Careteam roles refer to a practitioner"
Expression: "( careTeam.role.coding.code='performing') implies 
 careTeam.provider.reference.resolve().is(FHIR.Organization)"
Severity: #error

Invariant: EOB-pharm-careTeam-practitioner
Description: "Pharmacy EOB:  Careteam roles refer to a practitioner"
Expression: "( careTeam.role.coding.code in 
( 'pcp' or 'prescribing')) implies 
 careTeam.provider.reference.resolve().is(FHIR.Practitioner)"
Severity: #error

Invariant: EOB-pharm-careTeam-organization
Description: "Pharmacy EOB:  Careteam roles refer to a practitioner"
Expression: "( careTeam.role.coding.code='performing') implies 
 careTeam.provider.reference.resolve().is(FHIR.Organization)"
Severity: #error

Invariant: EOB-prof-careTeam-practitioner
Description: "Institutional EOB:  Careteam roles refer to a practitioner"
Expression: "( careTeam.role.coding.code in 
('performing' or 'pcp' or 'referring' or 'supervising')) implies 
 careTeam.provider.reference.resolve().is(FHIR.Practitioner)"
Severity: #error

Invariant: EOB-prof-careTeam-organization
Description: "Institutional EOB:  Careteam roles refer to a practitioner"
Expression: "( careTeam.role.coding.code='site') implies 
 careTeam.provider.reference.resolve().is(FHIR.Organization)"
Severity: #error

/*
//  Proposed Change to Slicing Style 
Extension: AdjudicationType
Title: "Adjudication Type"
Description: "An extension to provide a human-readable description of an organization."
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from AdjudicationSlideCodes (required) 

ValueSet: AdjudicationSlideCodes
Title: "Adjudication Slice Codes"
Description: "Codes used to discriminate slices of adjudication and item.adjudication"
* codes from system AdjudicationSliceCodesCS

CodeSystem: AdjudicationSliceCodesCS
Title: "Adjudication Slice Codes"
Description: "Codes used to discriminate slices of adjudication and item.adjudication"
* #inoutnetwork "In Out Network" "In Out Network"
* #denialreason "Denial Reason" "Denial Reason"
* #adjudicationamounttype "Ajudication Amount Type" "Ajudication Amount Type" 
* #allowedunits "Allowed Units" "Allowed Units"

Alias: $AdjudicationSliceCodesCS = http://hl7.org/fhir/us/carin-bb/CodeSystem/AdjudicationSliceCodesCS
*/