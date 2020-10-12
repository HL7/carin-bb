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
* billablePeriod 1..1 MS 
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
* procedure.type 1..1 MS 
* procedure.date 0..1 MS 
* provider 1..1
* provider only Reference(C4BBOrganization)
* insert SupportingInfoSlicing 
* supportingInfo contains 
      billingnetworkcontractingstatus 1..1 MS and
      admissionperiod 1..1 MS  and
     inoutnetwork 1..1 MS and 
     clmrecvddate 0..1 MS and
     typeofbill 0..1 MS and 
     pointoforigin 0..1 MS and 
     admtype 0..1 MS and 
     discharge-status 0..1 MS and 
     drg 0..1 MS 
 
   
* supportingInfo[inoutnetwork].category = C4BBSupportingInfoType#inoutnetwork
* supportingInfo[inoutnetwork].code from C4BBPayerBenefitPaymentStatus (required) 
* supportingInfo[inoutnetwork].code 1..1 MS 
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
* supportingInfo[discharge-status].category  = C4BBSupportingInfoType#discharge-status
* supportingInfo[discharge-status].code from AHANUBCPatientDischargeStatus   (required)
* supportingInfo[discharge-status].code 1..1 MS
* supportingInfo[drg].category  = C4BBSupportingInfoType#drg
* supportingInfo[drg].code from CMSMS3MAPAPRDRG  (required)
* supportingInfo[drg].code 1..1 MS
* item.revenue from AHANUBCRevenueCodes (required)
* item.modifier from AMACPTCMSHCPCSModifiers (required)
* item.productOrService from AMACPTCMSHCPCSProcedureCodes (required)
* insert ItemAdjudicationSlicing
* item.adjudication contains
   adjudicationamounttype 1..* MS and
   denialreason 0..* MS and
   allowedunits 0..1 MS
* item.adjudication[allowedunits].category = C4BBAdjudicationDiscriminator#allowedunits
* item.adjudication[allowedunits].value only decimal
* item.adjudication[allowedunits].value MS
* item.adjudication[denialreason].category = C4BBAdjudicationDiscriminator#denialreason 
* item.adjudication[denialreason].reason from X12ClaimAdjustmentReasonCodesCMSRemittanceAdviceRemarkCodes
* item.adjudication[denialreason].reason 1..1 MS
* item.adjudication[adjudicationamounttype].category from C4BBAdjudication
* item.adjudication[adjudicationamounttype].amount MS
* insert AdjudicationSlicing 
* adjudication contains
   adjudicationamounttype 1..* MS and
   denialreason 0..* MS 
// * adjudication ^slicing.discriminator.path = "extension('http://hl7.org/fhir/us/carin-bb/StructureDefinition/AdjudicationType').value"
//* adjudication[denialreason].extension[adjudication-type].valueCodeableConcept  = $AdjudicationSliceCodesCS#denialreason
//* adjudication[adjudicationamounttype].extension[adjudication-type].valueCodeableConcept  = $AdjudicationSliceCodesCS#adjudicationamounttype
* adjudication ^slicing.discriminator.path = "category"
* adjudication[denialreason].category = C4BBAdjudicationDiscriminator#denialreason 
* adjudication[denialreason].reason from X12ClaimAdjustmentReasonCodesCMSRemittanceAdviceRemarkCodes
* adjudication[denialreason].reason MS
* adjudication[adjudicationamounttype].category from C4BBAdjudication  (required)
* adjudication[adjudicationamounttype].amount 1..1
* insert TotalSlicing
* total contains
   adjudicationamounttype 1..* MS and
   inoutnetwork 0..1 MS 
* total[inoutnetwork].category from C4BBPayerBenefitPaymentStatus (required)
* total[adjudicationamounttype].category from C4BBAdjudication  (required)
* total[adjudicationamounttype].amount MS 
//* total[adjudicationamounttype].amount 1..1
* patient MS
* insurer MS
* insurance 1..1 MS
* type MS
* diagnosis.onAdmission MS
* identifier MS
* item.sequence MS
* item.productOrService MS
* item.modifier MS
* item.quantity MS
* item.revenue 1..1 MS
* payment.type MS
* careTeam.provider MS
* provider MS
* careTeam.provider MS
* careTeam.provider MS
* careTeam.provider MS
* payment.date MS
* related MS
* related MS
* payee.type MS
* payee.party MS
* status MS
* insurance MS
* procedure MS
* procedure MS
* meta MS
* careTeam.role MS
* careTeam.provider MS
* provider MS
* careTeam.provider MS
* careTeam.provider MS
* careTeam.provider MS
* careTeam.provider MS
* insurer MS
* insurance MS
* created MS
* processNote MS 
* processNote.text MS
* careTeam.provider MS
* billablePeriod.start MS
* billablePeriod.end MS

* supportingInfo[pointoforigin] ^short = "Identifies the place where the patient was identified as needing admission to an institution. This is a two position code mapped from the standard values for the UB-04 Source of Admission code (FL-15). (13)"
* supportingInfo[admtype] ^short = "Priority of the admission. Information located on (UB04 Form Locator 14). For example, an admission type of elective indicates that the patient's condition permitted time for medical services to be scheduled. (14)"
* supportingInfo[typeofbill] ^short = "UB04 (Form Locator 4) type of bill code provides specific information for payer purposes. The first digit of the three-digit number denotes the type of institution, the second digit classifies the type of care being billed, and the third digit  identifies the frequency of the bill for a specific course of treatment or inpatient confinement. (17)"
* supportingInfo[clmrecvddate] ^short = "The date the claim was received by the payer (88)"
* supportingInfo[billingnetworkcontractingstatus] ^short = "Indicates that the Billing Provider has a contract with the Plan (regardless of the network) as of the effective date of service or admission. (101)"
* supportingInfo[admissionperiod] ^short = "The Period.start date corresponds with the date the beneficiary was admitted to a facility and the onset of services. May precede the Statement From Date if this claim is for a beneficiary who has been continuously under care. The Period.end date corresponds with the date beneficiary was discharged from the facility, or died. Matches the final Statement Thru Date. When there is a discharge date, the Patient Discharge Status Code indicates the final disposition of the patient after discharge. (18, 19"
* supportingInfo[drg] ^short = "Claim diagnosis related group (DRG), including the code system, the DRG version and the code value. (32, 33. 113)"
* supportingInfo[discharge-status] ^short = "Patient’s status as of the discharge date for a facility stay. Information located on UB04. (Form Locator 17). (117)"
* item.adjudication[allowedunits] ^short = "The quantity of units, times, days, visits, services, or treatments allowed for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider. (149)"
* item.adjudication[denialreason] ^short = "Reason codes used to interpret the Non-Covered Amount that are provided to the Provider. (92)"
* item.adjudication[adjudicationamounttype] ^short = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* adjudication[denialreason] ^short = "Reason codes used to interpret the Non-Covered Amount that are provided to the Provider. (92)"
* adjudication[adjudicationamounttype] ^short = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* total[inoutnetwork] ^short = "Indicates the in network or out of network payment status of the claim. (142)"
* total[adjudicationamounttype] ^short = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* patient ^short = "Unique identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided. (1)"
* insurer ^short = "Code of the payer responsible for the claim. (2, 5)"
* insurance ^short = "Identity of the payers responsible for the claim. (2, 141)"
* type ^short = "Specifies the type of claim. (e.g., inpatient insitutional, outpatient institutional, physician, etc.) (16)"
* diagnosis.onAdmission ^short = "Used to capture whether a diagnosis was present at time of a patient's admission. This is used to group diagnoses into the proper DRG for all claims involving inpatient admissions to general acute care facilities. (28)"
* diagnosis ^short = "Diagnosis codes describe an individual's disease or medical condition. (6, 7, 8, 21, 22, 23, 30)"
* diagnosis.type ^short =  "Indicates if the inpatient institutional diagnosis is admitting, principal, other or an external cause of injury. (188)"
* identifier ^short = "Identifier assigned by a payer for a claim received from a provider or subscriber. It is not the same identifier as that assigned by a provider. This identifier assigned by the payer becomes the payer's EOB identifier. (35)"
* item.sequence ^short = "Line identification number that represents the number assigned in a source system for identification and processing. (36)"
* item.productOrService ^short = "Medical procedure a patient received from a health care provider. Current coding methods include: CPT-4 and HCFA Common Procedure Coding System Level II - (HCPCSII). (40)"
* item.modifier ^short = "Modifier(s) for the procedure represented on this line. Identifies special circumstances related to the performance of the service. (41)"
* item.quantity ^short = "The quantity of units, times, days, visits, services, or treatments for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider. (42)"
* item.revenue ^short = "Code used on the UB-04 (Form Locator 42) to identify a specific accommodation, ancillary service, or billing calculation related to the service being billed (86)"
* payment.type ^short = "Indicates whether the claim was paid or denied. (91)"
* adjudication[denialreason].reason ^short = "Reason codes used to interpret the Non-Covered Amount that are provided to the Provider. (92)"
* careTeam.provider ^short = "The National Provider Identifier assigned to the care team for the admission. (93, 96, 98, 99, 173)"
* provider ^short = "The National Provider Identifier assigned to the Billing Provider. (94)"
* payment.date ^short = "The date the claim was paid. (107)"
* related ^short = "If the current claim represents a claim that has been adjusted and was given a prior claim number, this field represents the prior claim number. If the current claim has been adjusted; i.e., replaced by or merged to another claim number, this data element represents that new number.(111, 112) "
* payee.type ^short = "Identifies the type of recipient of the adjudication amount; i.e., provider, subscriber, beneficiary or another recipient. (120)"
* payee.party ^short = "Recipient reference. (121)"
* status ^short = "Claim processing status code. (140)"
* procedure ^short = "Medical procedure a patient received during inpatient stay. Current coding methods include: International Classification of Diseases Surgical Procedures (ICD-9). Information located on UB04 (Form Locator 74). (25, 27, 10, 12)"
* procedure.type ^short = "Indicates if the inpatient institutional procedure (ICD-PCS) is the principal procedure or another procedure. (186)"
* careTeam.role ^short = "The functional role of a provider on a claim. (165)"
* processNote.text ^short = "Line payment denial explanation to a member, typically goes on the EOB when the payment is denied or disallowed (181)"
* billablePeriod.start ^short = "The first day on the billing statement covering services rendered to the beneficiary (i.e. 'Statement Covers From Date’). (177)"
* billablePeriod.end ^short = "The last day on the billing statement covering services rendered to the beneficiary (i.e. 'Statement Covers Thru Date’). (178)"
* identifier.type ^short = "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber. (183)"


