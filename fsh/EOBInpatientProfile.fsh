Profile: C4BBExplanationOfBenefitInpatientInstitutional
Parent: C4BB-ExplanationOfBenefit
Id: C4BB-ExplanationOfBenefit-Inpatient-Institutional
Title: "C4BB ExplanationOfBenefit Inpatient Institutional"
Description: "The profile is used for Explanation of Benefits (EOBs) based on claims submitted by clinics, hospitals, skilled nursing facilities and other institutions for inpatient services, which may include the use of equipment and supplies, laboratory services, radiology services and other charges. Inpatient claims are submitted for services rendered at an institution as part of an overnight stay. 
The claims data is based on the institutional claim format UB-04, submission standards adopted by the Department of Health and Human 
Services."
* type.coding 1..1 MS
* type = $HL7ClaimTypeCS#institutional
* careTeam.role from C4BBClaimInstitutionalCareTeamRole  (required)  // was  PayerInstitutionalProviderRole 
* careTeam.role 1..1 MS
* obeys EOB-inst-careTeam-practitioner
* obeys EOB-inst-careTeam-organization
* diagnosis 1..* MS
* diagnosis.type 1..1 MS
* diagnosis.type from C4BBClaimInpatientInstitutionalDiagnosisType  (required)   
* diagnosis.diagnosis[x] 1..1 MS
* diagnosis.diagnosis[x] only CodeableConcept
* diagnosis.diagnosis[x] from CDCICD910CMDiagnosisCodes (required)
* diagnosis.onAdmission 0..1 MS
* diagnosis.onAdmission from AHANUBCPresentOnAdmission (required)
* procedure.procedure[x] only CodeableConcept 
* procedure.procedure[x] 1..1 MS
* procedure.procedure[x] from CMSICD910PCSProcedureCodes (required) 
* procedure.type from C4BBClaimProcedureType (required)
* procedure 0..* MS 
* procedure.type 0..* MS 
* procedure.date 0..1 MS 
* provider 1..1
* provider only Reference(C4BBOrganization)
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false   // can be omitted, since false is the default
* supportingInfo ^slicing.description = "Slice based on value pattern"
* supportingInfo ^slicing.discriminator.type = #pattern
* supportingInfo ^slicing.discriminator.path = "category"
* supportingInfo MS 
* supportingInfo.category MS 
* supportingInfo contains 
   billingnetworkcontractingstatus 0..1 MS and
    clmrecvddate 0..1 MS and
    typeofbill 0..1 MS and 
   pointoforigin 0..1 MS and 
   admtype 0..1 MS and 
   discharge-status 0..1 MS and 
   drg 0..1 MS and
   admissionperiod 0..1 MS  // EOBComparisonv13
* supportingInfo[pointoforigin] ^short = "Identifies the place where the patient was identified as needing admission to an institution. This is a two position code mapped from the standard values for the UB-04 Source of Admission code (FL-15). (13)"
* supportingInfo[admtype] ^short = "Priority of the admission. Information located on (UB04 Form Locator 14). For example, an admission type of elective indicates that the patient's condition permitted time for medical services to be scheduled. (14)"
* supportingInfo[typeofbill] ^short = "UB04 (Form Locator 4) type of bill code provides specific information for payer purposes. The first digit of the three-digit number denotes the type of institution, the second digit classifies the type of care being billed, and the third digit  identifies the frequency of the bill for a specific course of treatment or inpatient confinement. (17)"
* supportingInfo[clmrecvddate] ^short = "The date the claim was received by the payer (88)"
* supportingInfo[billingnetworkcontractingstatus] ^short = "Indicates that the Billing Provider has a contract with the Plan (regardless of the network) as of the effective date of service or admission. (101)"
* supportingInfo[admissionperiod] ^short = "Admission Period"
* supportingInfo[drg] ^short = "DRG codes assigned (33)"
* supportingInfo[billingnetworkcontractingstatus].category = C4BBSupportingInfoType#billingnetworkcontractingstatus 
* supportingInfo[billingnetworkcontractingstatus].code from C4BBPayerProviderContractingStatus  (required)
* supportingInfo[billingnetworkcontractingstatus].code 1..1 MS
* supportingInfo[admissionperiod].category = C4BBSupportingInfoType#admissionperiod  
* supportingInfo[admissionperiod].timingPeriod 1..1 MS
* supportingInfo[clmrecvddate].category  = C4BBSupportingInfoType#clmrecvddate
* supportingInfo[clmrecvddate].timing[x] only date 
* supportingInfo[clmrecvddate].timing[x] 1..1 MS
* supportingInfo[typeofbill].category  = C4BBSupportingInfoType#typeofbill
* supportingInfo[typeofbill].code from AHANUBCTypeOfBill (required)
* supportingInfo[typeofbill].code 1..1 MS 
* supportingInfo[pointoforigin].category  = C4BBSupportingInfoType#pointoforigin
* supportingInfo[pointoforigin].code from AHANUBCPointOfOriginForAdmissionOrVisit (required)
* supportingInfo[pointoforigin].code 1..1 MS
* supportingInfo[admtype].category  = C4BBSupportingInfoType#admtype
* supportingInfo[admtype].code from AHANUBCPriorityTypeOfAdmissionOrVisit  (required)
* supportingInfo[admtype].code 1..1 MS 
* supportingInfo[admtype] ^short = "Claim Priority (Type) of Admission or Visit"
* supportingInfo[discharge-status].category  = C4BBSupportingInfoType#discharge-status
* supportingInfo[discharge-status].code from AHANUBCPatientDischargeStatus   (required)
* supportingInfo[discharge-status].code 1..1 MS
* supportingInfo[discharge-status] ^short = "Discharge Status"
* supportingInfo[drg].category  = C4BBSupportingInfoType#drg
* supportingInfo[drg].code from CMSMS3MAPAPRDRG  (required)
* supportingInfo[drg].code 1..1 MS
* supportingInfo[drg] ^short = "Claim diagnosis related group (DRG)"
* item.revenue from AHANUBCRevenueCodes (required)
* item.modifier from AMACPTCMSHCPCSModifiers (required)
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
* item.adjudication[allowedunits].category = C4BBAdjudicationDiscriminator#allowedunits
* item.adjudication[allowedunits].value only decimal
* item.adjudication[denialreason] ^short = "Denial Reason"
* item.adjudication[denialreason].category = C4BBAdjudicationDiscriminator#denialreason 
* item.adjudication[denialreason].reason from X12ClaimAdjustmentReasonCodesCMSRemittanceAdviceRemarkCodes
* item.adjudication[denialreason].reason 1..1
* item.adjudication[adjudicationamounttype].category from C4BBAdjudication
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
* adjudication[denialreason].category = C4BBAdjudicationDiscriminator#denialreason 
* adjudication[denialreason].reason from X12ClaimAdjustmentReasonCodesCMSRemittanceAdviceRemarkCodes
* adjudication[denialreason].reason 1..1
* adjudication[adjudicationamounttype].category from C4BBAdjudication  (required)
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
* total[inoutnetwork].category from C4BBPayerBenefitPaymentStatus (required)
* total[adjudicationamounttype].category from C4BBAdjudication  (required)
* total[adjudicationamounttype] ^short = "Amounts"
//* total[adjudicationamounttype].amount 1..1
* patient ^short = "Unique identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided."
* patient MS
* insurer ^short = "Code of the payer responsible for the claim"
* insurer MS
* insurance ^short = "Code of the payer responsible for the claim"
* insurance MS
* supportingInfo[pointoforigin].code ^short = "Identifies the place where the patient was identified as needing admission to an institution. This is a two position code mapped from the standard values for the UB-04 Source of Admission code (FL-15)."
* supportingInfo[admtype].code ^short = "Priority of the admission. Information located on (UB04 Form Locator 14). For example, an admission type of elective indicates that the patient's condition permitted time for medical services to be scheduled."
* type ^short = "Specifies the type of claim. (e.g., inpatient insitutional, outpatient institutional, physician, etc.)."
* type MS
* diagnosis.onAdmission ^short = "Used to capture whether a diagnosis was present at time of a patient's admission. This is used to group diagnoses into the proper DRG for all claims involving inpatient admissions to general acute care facilities."
* diagnosis.onAdmission MS
* diagnosis ^short = "This is the reason given by the patient for visiting the doctor or practitioner. It is not the doctor's or practitioner's diagnosis. Patient Reason for Visit Codes can be any ICD-10diagnosis and may or may not be a repeat of an ICD-10 Principal or Secondary diagnosis field."
* diagnosis.type ^short =  "Description of this field"
* supportingInfo[drg].code ^short = "Version of the AP-DRG codes assigned for inpatient institution claims."
* supportingInfo[drg].code ^short = "DRG codes assigned"
* identifier ^short = "Identifier assigned by a payer for a claim received from a provider or subscriber. It is not the same identifier as that assigned by a provider. This unique identifier assigned by the payer becomes the payer's EOB identifier."
* identifier MS
* item.sequence ^short = "Line identification number that represents the number assigned in a source system for identification and processing."
* item.sequence MS
* item.productOrService ^short = "Medical procedure a patient received from a health care provider. Current coding methods include: CPT-4 and HCFA Common Procedure Coding System Level II - (HCPCSII)."
* item.productOrService MS
* item.modifier ^short = "Modifier(s) for the procedure represented on this line. Identifies special circumstances related to the performance of the service."
* item.modifier MS
* item.quantity ^short = "The quantity of units, times, days, visits, services, or treatments for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider."
* item.quantity MS
* item.revenue ^short = "Code used on the UB-04 (Form Locator 42) to identify a specific accommodation, ancillary service, or billing calculation related to the service being billed"
* item.revenue MS
* supportingInfo[clmrecvddate].timingDate ^short = "The date the claim was received by the payer"
* payment.type ^short = "Indicates whether the claim was paid or denied."
* payment.type MS
* adjudication[denialreason].reason ^short = "Reason codes used to interpret the Non-Covered Amount that are provided to the Provider"
* careTeam.provider ^short = "The National Provider Identifier assigned to the Attending Physician for the admission"
* careTeam.provider MS
* provider ^short = "The National Provider Identifier assigned to the Billing Provider."
* provider MS
* careTeam.provider ^short = "The identifier assigned to the PCP Provider."
* careTeam.provider MS
* careTeam.provider ^short = "The identifier assigned to the Operating Surgeon."
* careTeam.provider MS
* careTeam.provider ^short = "The NPI of the referring physician."
* careTeam.provider MS
* supportingInfo[billingnetworkcontractingstatus].code ^short = "Indicates that the Billing Provider has a contract with the Plan (regardless of the network) as of the effective date of service or admission."
* payment.date ^short = "The date the claim was paid."
* payment.date MS
* related ^short = "If the current claim represents a claim that has been adjusted and was given a prior claim number, this field represents the prior claim number "
* related MS
* related ^short = "If the current claim has been adjusted; i.e., replaced by or merged to another claim number, this data element represents that new number."
* related MS
* supportingInfo[discharge-status].code ^short = "Patient’s status as of the discharge date for an institutional stay. Information located on UB04 (Form Locator 17)."
* payee.type ^short = "Identifies the type of recipient of the adjudication amount; i.e., provider or subscriber or another recipient
"
* payee.type MS
* payee.party ^short = "Recipient reference
"
* payee.party MS
* status ^short = ""
* status MS
* insurance ^short = "Identifies another payer who applied benefits for the service on another claim."
* insurance MS
* total[inoutnetwork].category ^short = "Indicates the in network or out of network payment status of the claim."
* procedure ^short = "Additional surgical procedure a patient received during inpatient stay. Coding methods for this field is International Classification of Diseases Surgical Procedures (ICD-10)."
* procedure MS
* procedure ^short = "Date of Procedure - Secondary"
* procedure MS
* total[adjudicationamounttype].amount ^short = "Total amount for each category (i.e., submitted, allowed, etc.)"
* meta ^short = "Defines the date the Resource was created or updated, whichever is later."
* meta MS
* careTeam.role ^short = "The functional role of a provider on a claim."
* careTeam.role MS
* careTeam.provider ^short = "The name of the Attending Physician for the admission"
* careTeam.provider MS
* provider ^short = "The name of the Billing Provider"
* provider MS
* careTeam.provider ^short = "The name of the PCP Provider."
* careTeam.provider MS
* careTeam.provider ^short = "The name of the referring physician."
* careTeam.provider MS
* careTeam.provider ^short = "The National Provider Identifier assigned to the Supervising Physician for the admission"
* careTeam.provider MS
* careTeam.provider ^short = "The name of the Supervising Physician for the admission"
* careTeam.provider MS
* insurer ^short = "Name of the payer responsible for the claim"
* insurer MS
* insurance ^short = "Name of the payer responsible for the claim"
* insurance MS
* created MS
* processNote MS 
* processNote.text ^short = "Line payment denial explanation to a member, typically goes on the EOB when the payment is denied or disallowed"
* processNote.text MS
* careTeam.provider ^short = "The name of the operating surgeon."
* careTeam.provider MS
* billablePeriod.start ^short = "The first day on the billing statement covering services rendered to the beneficiary (i.e. 'Statement Covers From Date’)"
* billablePeriod.start MS
* billablePeriod.end ^short = "The last day on the billing statement covering services rendered to the beneficiary (i.e. 'Statement Covers Thru Date’)"
* billablePeriod.end MS





