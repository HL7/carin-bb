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
* diagnosis.type from PayerInpatientinstitutionaldiagnosistype (required)   
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
   // attendingnetworkcontractingstatus 0..1 MS and
   // referringnetworkcontractingstatus 0..1 MS and
   // supervisingnetworkcontractingstatus 0..1 MS and
    clmrecvddate 0..1 MS and
    typeofbill 0..1 MS and 
   pointoforigin 0..1 MS and 
   admtype 0..1 MS and 
   discharge-status 0..1 MS and 
   drg 0..1 MS and
   admissionperiod 0..1 MS  // EOBComparisonv13
   // onadmissiontype 0..1 MS    // // https://jira.hl7.org/browse/FHIR-27012
* supportingInfo[pointoforigin] ^short = "Identifies the place where the patient was identified as needing admission to a facility. This is a two position code mapped from the standard values for the UB-04 Source of Admission code (FL-15). (13)"
* supportingInfo[admtype] ^short = "Priority of the admission. Information located on (UB04 Form Locator 14). For example, an admission type of elective indicates that the patient's condition permitted time for medical services to be scheduled. (14)"
* supportingInfo[typeofbill] ^short = "UB04 (Form Locator 4) type of bill code provides specific information for payer purposes. The first digit of the three-digit number denotes the type of facility, the second digit classifies the type of care being billed, and the third digit  identifies the frequency of the bill for a specific course of treatment or inpatient confinement. (17)"
* supportingInfo[clmrecvddate] ^short = "The date the claim was received by the payer (88)"
* supportingInfo[billingnetworkcontractingstatus] ^short = "Indicates that the Billing Provider has a contract with the Plan (regardless of the network) as of the effective date of service or admission. (101)"
//* supportingInfo[attendingnetworkcontractingstatus] ^short = "Indicates the network status of the attending physician (101)"
//* supportingInfo[referringnetworkcontractingstatus] ^short = "Indicates the network status of the referring physician (101)"
* supportingInfo[admissionperiod] ^short = "Admission Period"
* supportingInfo[drg] ^short = "DRG codes assigned (33)"
* supportingInfo[billingnetworkcontractingstatus].category = ClaimInformationCategoryCS#billingnetworkcontractingstatus 
* supportingInfo[billingnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[billingnetworkcontractingstatus].code 1..1 MS
// * supportingInfo[attendingnetworkcontractingstatus].category = ClaimInformationCategoryCS#attendingnetworkcontractingstatus
// * supportingInfo[attendingnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
// * supportingInfo[attendingnetworkcontractingstatus].code 1..1 MS
// * supportingInfo[attendingnetworkcontractingstatus] ^definition = "Claim attending provider network status"
// * supportingInfo[referringnetworkcontractingstatus].category  = ClaimInformationCategoryCS#referringnetworkcontractingstatus
// * supportingInfo[referringnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
// * supportingInfo[referringnetworkcontractingstatus].code 1..1 MS
// * supportingInfo[referringnetworkcontractingstatus] ^definition = "Claim referring provider network status"
// * supportingInfo[supervisingnetworkcontractingstatus].category  = ClaimInformationCategoryCS#supervisingnetworkcontractingstatus
// * supportingInfo[supervisingnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
// * supportingInfo[supervisingnetworkcontractingstatus].code 1..1 MS
// * supportingInfo[supervisingnetworkcontractingstatus] ^definition = "Claim supervising provider network status"
* supportingInfo[admissionperiod].category = ClaimInformationCategoryCS#admissionperiod  
* supportingInfo[admissionperiod].timingPeriod 1..1 MS
* supportingInfo[clmrecvddate].category  = ClaimInformationCategoryCS#clmrecvddate
* supportingInfo[clmrecvddate].timing[x] only date 
* supportingInfo[clmrecvddate].timing[x] 1..1 MS
* supportingInfo[typeofbill].category  = ClaimInformationCategoryCS#typeofbill
* supportingInfo[typeofbill].code from $NUBCTypeOfBill (required)
* supportingInfo[pointoforigin].category  = ClaimInformationCategoryCS#admsrc
* supportingInfo[pointoforigin].code from $NUBCPointOfOriginForAdmissionOrVisit (required)
* supportingInfo[admtype].category  = ClaimInformationCategoryCS#admtype
* supportingInfo[admtype].code from NUBCPriorityOfAdmissionn  (required)
* supportingInfo[admtype] ^short = "Claim Priority (Type) of Admission or Visit "
* supportingInfo[discharge-status].category  = ClaimInformationCategoryCS#discharge-status
* supportingInfo[discharge-status].code from NUBCPatientDischargeStatus   (required)
* supportingInfo[discharge-status] ^short = "Discharge Status"
* supportingInfo[drg].category  = ClaimInformationCategoryCS#drg
* supportingInfo[drg].code from CMSDRG  (required)
* supportingInfo[drg] ^short = "Claim diagnosis related group (DRG)"
// * supportingInfo[onadmissiontype].code from PayerDiagnosisPresentOnAdmissionDiagnosisType  (required) // new 7/28
// * supportingInfo[onadmissiontype] ^short = "On Admission Type"
// * supportingInfo[onadmissiontype] ^definition = "On Admission Type"
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
* item.adjudication[denialreason].reason from X12CARCCMSRARC
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
* adjudication[denialreason].reason from X12CARCCMSRARC
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
* patient ^short = "Unique identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided. (1)"
* insurance.coverage ^short = "Unique identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided. (1)"
* insurance ^short = "Code of the primary payer responsible for the claim (2)"
* type ^short = "Specifies the type of claim. (e.g., inpatient insitutional, outpatient institutional, physician, etc.).  (16)"
* billablePeriod ^short = "Identifies the date the patient was admitted/discharged for facility care (18,19)"
* diagnosis ^short = "ICD-10-CM code describing the condition chiefly responsible for a patient's admission to a facility. It may be different from the principal diagnosis, which is the diagnosis assigned after evaluation. Decimals will be included. (21)"
* procedure ^short = "Principal medical procedure a patient received during inpatient stay. Coding methods for this field is International Classification of Diseases Surgical Procedures (ICD-10). (24)"
* diagnosis.onAdmission ^short = "Used to capture whether a diagnosis was present at time of a patient's admission. This is used to group diagnoses into the proper DRG for all claims involving inpatient admissions to general acute care facilities. (28)"
//* diagnosis ^short = "This is any valid ICD-10 Diagnosis code in the range V00.* through Y99.*. (30)"
* diagnosis ^short = "This is the reason given by the patient for visiting the doctor or practitioner. It is not the doctor's or practitioner's diagnosis. Patient Reason for Visit Codes can be any ICD-10diagnosis and may or may not be a repeat of an ICD-10 Principal or Secondary diagnosis field. (31)"
* identifier ^short = "Claim identifier for a claim. (35)"
* item.sequence ^short = "Line identification number that represents the number assigned in a source system for identification and processing. (36)"
* item.productOrService ^short = "Medical procedure a patient received from a health care provider. Current coding methods include: CPT-4 and HCFA Common Procedure Coding System Level II - (HCPCSII). (40)"
* item.modifier ^short = "Modifier(s) for the procedure represented on this line. Identifies special circumstances related to the performance of the service. (41)"
* item.quantity ^short = "The quantity of units, times, days, visits, services, or treatments for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider.  (42)"
* item.revenue ^short = "Code used on the UB-04 (Form Locator 42) to identify a specific accommodation, ancillary service, or billing calculation related to the service being billed (86)"
* payment.type ^short = "Indicates whether the claim was paid or denied. (91)"
* payment.adjustmentReason ^short = "Reason codes used to interpret the Non-Covered Amount (92)"
* item.adjudication ^short = "Reason codes used to interpret the Non-Covered Amount (92)"
* careTeam.provider ^short = "The National Provider Identifier assigned to the Attending Physician for the admission (93)"
* provider ^short = "The National Provider Identifier assigned to the Billing Provider. (94)"
* careTeam.provider ^short = "The National Provider Identifier assigned to the Rendering Provider. This is the lowest level of provider available (for example, if both individual and group are available, then the individual should be provided). (95)"
* careTeam.provider ^short = "The identifier assigned to the PCP Provider. (96)"
* careTeam.provider ^short = "The NPI of the referring physician. (99)"
* payment.date ^short = "The date the claim was paid. (107)"
* patient ^short = "Provider submitted information that can be included on the claim (109)"
* patient ^short = "Provider submitted information that can be included on the claim (110)"
* related ^short = "Prior claim number (111)"
* related ^short = "Replaced or Merged claim number (112)"
* supportingInfo.code ^short = "Name of the DRG grouper assigned (113)"
* supportingInfo.code ^short = "Patient’s status as of the discharge date for a facility stay. Information located on UB04 (Form Locator 17). (117)"
* payee.type ^short = "Identifies recipient of benefits payable; i.e., provider or subscriber (120)"
* payee.party ^short = "Recipient reference (121)"
* status ^short = "(140)"
* insurance ^short = "Identifies the primary payer.  For use only on secondary claims.   (141)"
* adjudication.category ^short = "Indicates the in network or out of network payment status of the claim. (142)"
* diagnosis.diagnosis[x] ^short = "A plain text representation of the diagnosis (145)"
* total.amount ^short = "Total amount for each category (i.e., submitted, allowed, etc.) (148)"
* item.adjudication ^short = "The quantity of units, times, days, visits, services, or treatments allowed for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider.  (149)"
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


