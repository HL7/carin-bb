Profile: C4BBExplanationOfBenefitInpatientInstitutional
Parent: C4BB-ExplanationOfBenefit
Id: C4BB-ExplanationOfBenefit-Inpatient-Institutional
Title: "C4BB ExplanationOfBenefit Inpatient Institutional"
Description: "The profile is used for Explanation of Benefits (EOBs) based on claims submitted by clinics, hospitals, skilled nursing facilities and other institutions for inpatient services, which may include the use of equipment and supplies, laboratory services, radiology services and other charges. Inpatient claims are submitted for services rendered at an institution as part of an overnight stay. 
The claims data is based on the institutional claim format UB-04, submission standards adopted by the Department of Health and Human 
Services."

//@Saul -- added MS
* use MS
* outcome MS

//* type.coding 1..1 MS   // commenting this line leads to a failure
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
      billingnetworkcontractingstatus 0..1 MS and
      admissionperiod 1..1 MS  and
     clmrecvddate 0..1 MS and
     typeofbill 0..1 MS and 
     pointoforigin 0..1 MS and 
     admtype 0..1 MS and 
     discharge-status 0..1 MS and 
     drg 0..1 MS 
 
   

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
* supportingInfo[pointoforigin] ^definition = "Identifies the place where the patient was identified as needing admission to an institution. This is a two position code mapped from the standard values for the UB-04 Source of Admission code (FL-15). (13)"
* supportingInfo[admtype] ^short = "Priority of the admission. Information located on (UB04 Form Locator 14). For example, an admission type of elective indicates that the patient's condition permitted time for medical services to be scheduled. (14)"
* supportingInfo[admtype] ^definition = "Priority of the admission. Information located on (UB04 Form Locator 14). For example, an admission type of elective indicates that the patient's condition permitted time for medical services to be scheduled. (14)"
* supportingInfo[typeofbill] ^short = "UB04 (Form Locator 4) type of bill code provides specific information for payer purposes. The first digit of the three-digit number denotes the type of institution, the second digit classifies the type of care being billed, and the third digit  identifies the frequency of the bill for a specific course of treatment or inpatient confinement. (17)"
* supportingInfo[typeofbill] ^definition = "UB04 (Form Locator 4) type of bill code provides specific information for payer purposes. The first digit of the three-digit number denotes the type of institution, the second digit classifies the type of care being billed, and the third digit  identifies the frequency of the bill for a specific course of treatment or inpatient confinement. (17)"
* supportingInfo[clmrecvddate] ^short = "The date the claim was received by the payer (88)"
* supportingInfo[clmrecvddate] ^definition = "The date the claim was received by the payer (88)"
* supportingInfo[billingnetworkcontractingstatus] ^short = "Indicates that the Billing Provider has a contract with the Plan (regardless of the network) as of the effective date of service or admission. (101)"
* supportingInfo[billingnetworkcontractingstatus] ^definition = "Indicates that the Billing Provider has a contract with the Plan (regardless of the network) as of the effective date of service or admission. (101)"
* supportingInfo[admissionperiod] ^short = "The Period.start date corresponds with the date the beneficiary was admitted to a facility and the onset of services. May precede the Statement From Date if this claim is for a beneficiary who has been continuously under care. The Period.end date corresponds with the date beneficiary was discharged from the facility, or died. Matches the final Statement Thru Date. When there is a discharge date, the Patient Discharge Status Code indicates the final disposition of the patient after discharge. (18, 19)"
* supportingInfo[admissionperiod] ^definition = "The Period.start date corresponds with the date the beneficiary was admitted to a facility and the onset of services. May precede the Statement From Date if this claim is for a beneficiary who has been continuously under care. The Period.end date corresponds with the date beneficiary was discharged from the facility, or died. Matches the final Statement Thru Date. When there is a discharge date, the Patient Discharge Status Code indicates the final disposition of the patient after discharge. (18, 19)"
* supportingInfo[drg] ^short = "Claim diagnosis related group (DRG), including the code system, the DRG version and the code value. (32, 33. 113)"
* supportingInfo[drg] ^definition = "Claim diagnosis related group (DRG), including the code system, the DRG version and the code value. (32, 33. 113)"
* supportingInfo[drg] ^comment = "DRGs require the DRG system; i.e., MS-DRG / AP-DRG / APR-DEG, the DRG version and the code value"
* supportingInfo[discharge-status] ^short = "Patient’s status as of the discharge date for a facility stay. Information located on UB04. (Form Locator 17). (117)"
* supportingInfo[discharge-status] ^definition = "Patient’s status as of the discharge date for a facility stay. Information located on UB04. (Form Locator 17). (117)"
* item.adjudication[allowedunits] ^short = "The quantity of units, times, days, visits, services, or treatments allowed for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider. (149)"
* item.adjudication[allowedunits] ^definition = "The quantity of units, times, days, visits, services, or treatments allowed for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider. (149)"
* item.adjudication[denialreason] ^short = "Reason codes used to interpret the Non-Covered Amount that are provided to the Provider. (92)"
* item.adjudication[denialreason] ^definition = "Reason codes used to interpret the Non-Covered Amount that are provided to the Provider. (92)"
* item.adjudication[adjudicationamounttype] ^short = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* item.adjudication[adjudicationamounttype] ^definition = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* adjudication[denialreason] ^short = "Reason codes used to interpret the Non-Covered Amount that are provided to the Provider. (92)"
* adjudication[denialreason] ^definition = "Reason codes used to interpret the Non-Covered Amount that are provided to the Provider. (92)"
* adjudication[adjudicationamounttype] ^short = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* adjudication[adjudicationamounttype] ^definition = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* total[inoutnetwork] ^short = "Indicates the in network or out of network payment status of the claim. (142)"
* total[inoutnetwork] ^definition = "Indicates the in network or out of network payment status of the claim. (142)"
* total[adjudicationamounttype] ^short = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* total[adjudicationamounttype] ^definition = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* total.amount ^short = "Total amount for each category (i.e., submitted, allowed, etc.) (148)"
* total.amount ^definition = "Total amount for each category (i.e., submitted, allowed, etc.) (148)"
* diagnosis.onAdmission ^short = "Used to capture whether a diagnosis was present at time of a patient's admission. This is used to group diagnoses into the proper DRG for all claims involving inpatient admissions to general acute care facilities. (28)"
* diagnosis.onAdmission ^definition = "Used to capture whether a diagnosis was present at time of a patient's admission. This is used to group diagnoses into the proper DRG for all claims involving inpatient admissions to general acute care facilities. (28)"
* diagnosis ^short = "Diagnosis codes describe an individual's disease or medical condition. (6, 7, 8, 21, 22, 23, 30)"
* diagnosis ^definition = "Diagnosis codes describe an individual's disease or medical condition. (6, 7, 8, 21, 22, 23, 30)"
* diagnosis.type ^short =  "Indicates if the inpatient institutional diagnosis is admitting, principal, other or an external cause of injury. (21, 22, 23)"
* diagnosis.type ^definition =  "Indicates if the inpatient institutional diagnosis is admitting, principal, other or an external cause of injury. (21, 22, 23)"
* diagnosis.sequence ^comment =  "Diagnosis.sequence values do not necessarily indiate any order in which the diagnosis was reported or identified.  client app implementations should not assign any significance to the sequence values.  client app implementations should use the values of diagnosis.type to identify primary, secondary, etc."
* item.productOrService ^short = "Medical procedure a patient received from a health care provider. Current coding methods include: CPT-4 and HCFA Common Procedure Coding System Level II - (HCPCSII). (40)"
* item.productOrService ^definition = "Medical procedure a patient received from a health care provider. Current coding methods include: CPT-4 and HCFA Common Procedure Coding System Level II - (HCPCSII). (40)"
* item.modifier ^short = "Modifier(s) for the procedure represented on this line. Identifies special circumstances related to the performance of the service. (41)"
* item.modifier ^definition = "Modifier(s) for the procedure represented on this line. Identifies special circumstances related to the performance of the service. (41)"
* item.quantity ^short = "The quantity of units, times, days, visits, services, or treatments for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider. (42)"
* item.quantity ^definition = "The quantity of units, times, days, visits, services, or treatments for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider. (42)"
* item.revenue ^short = "Code used on the UB-04 (Form Locator 42) to identify a specific accommodation, ancillary service, or billing calculation related to the service being billed (86)"
* item.revenue ^definition = "Code used on the UB-04 (Form Locator 42) to identify a specific accommodation, ancillary service, or billing calculation related to the service being billed (86)"
* adjudication[denialreason].reason ^short = "Reason codes used to interpret the Non-Covered Amount that are provided to the Provider. (92)"
* adjudication[denialreason].reason ^definition = "Reason codes used to interpret the Non-Covered Amount that are provided to the Provider. (92)"
* careTeam.provider ^short = "The National Provider Identifier assigned to the care team (primary care provider, attending, referring, otheroperating, operating, and performing) for the admission. (93, 96, 98, 99, 173)"
* careTeam.provider ^definition = "The National Provider Identifier assigned to the care team (primary care provider, attending, referring, otheroperating, operating, and performing) for the admission. (93, 96, 98, 99, 173)"
* procedure ^short = "Medical procedure a patient received during inpatient stay. Current coding methods include: International Classification of Diseases Surgical Procedures (ICD-9). Information located on UB04 (Form Locator 74). (25, 27, 10, 12)"
* procedure ^definition = "Medical procedure a patient received during inpatient stay. Current coding methods include: International Classification of Diseases Surgical Procedures (ICD-9). Information located on UB04 (Form Locator 74). (25, 27, 10, 12)"
* procedure.type ^short = "Indicates if the inpatient institutional procedure (ICD-PCS) is the principal procedure or another procedure. (186)"
* procedure.type ^definition  = "Indicates if the inpatient institutional procedure (ICD-PCS) is the principal procedure or another procedure. (186)"
* procedure.sequence ^comment =  " procedure.sequence values do not necessarily indiate any order in which the procedure occurred.  client app implementations should not assign any significance to the sequence values.  client app implementations should use the values of procedure.type to identify primary and secondary procedures"


// ****** from EOB base *************
// removed careTeam.provider
* meta.lastUpdated ^short = "Defines the date the Resource was created or updated, whichever comes last (163)"
* meta.lastUpdated ^definition = "Defines the date the Resource was created or updated, whichever comes last (163)"
* meta.lastUpdated ^comment = "Payers SHALL provide the last time the data was updated or the date of creation in the payer’s system of record, whichever comes last"
* meta.profile ^short = "Profile this resource claims to conform to (189)"
* meta.profile ^definition = "Profile this resource claims to conform to (189)"
* identifier ^short = "Identifier assigned by a payer for a claim received from a provider or subscriber. It is not the same identifier as that assigned by a provider. This identifier assigned by the payer becomes the payer's EOB identifier (35)"
* identifier ^definition = "Identifier assigned by a payer for a claim received from a provider or subscriber. It is not the same identifier as that assigned by a provider. This identifier assigned by the payer becomes the payer's EOB identifier (35)"
* identifier.type ^short = "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber. (183)"
* identifier.type ^definition = "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber. (183)"
* status ^short = "Claim processing status code (140)"
* status ^definition = "Claim processing status code (140)"
* status ^comment = "Expected values are active or cancelled.  To comply with the CMS rule, draft EOBs are not required"
* type ^short = "Specifies the type of claim. (e.g., inpatient insitutional, outpatient institutional, physician, etc.) (16)"
* type ^definition = "Specifies the type of claim. (e.g., inpatient insitutional, outpatient institutional, physician, etc.) (16)"
* type ^comment = "Defines the Claims profiles.  Values from Claim Type Codes are required; a data absent reason is not allowed"
* use ^comment = "Expected value is claim. The CMS rule applies to adjudicated claims; it does not require preauthorizations or predeterminations"
* patient ^short = "Identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided. (1)"
* patient ^definition = "Identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided. (1)"
* patient ^comment = "The patient must be supplied to the insurer so that confirmation of coverage and service history may be considered as part of the authorization and/or adjudiction. Additional required path:EOB.insurance.coverage(Coverage).beneficiary(Patient).identifier"
* billablePeriod.start ^short = "The first day on the billing statement covering services rendered to the beneficiary (i.e. 'Statement Covers From Date’). (177)"
* billablePeriod.start ^definition = "The first day on the billing statement covering services rendered to the beneficiary (i.e. 'Statement Covers From Date’). (177)"
* billablePeriod.end ^short = "The last day on the billing statement covering services rendered to the beneficiary (i.e. 'Statement Covers Thru Date’). (178)"
* billablePeriod.end ^definition = "The last day on the billing statement covering services rendered to the beneficiary (i.e. 'Statement Covers Thru Date’). (178)"
* created ^short = "Date the claim was adjudicated (179)"
* created ^definition = "Date the claim was adjudicated (179)"
* insurer ^short = "Code of the payer responsible for the claim (2, 5)"
* insurer ^definition = "Code of the payer responsible for the claim (2, 5)"
* insurer ^comment = "Same as insurance.coverage.organization.  Party responsible for reimbursing the provider"
* provider ^short = "The identifier assigned to the Billing Provider. (94)"
* provider ^definition = "The identifier assigned to the Billing Provider. (94)"
* related ^short = "If the current claim represents a claim that has been adjusted and was given a prior claim number, this field represents the prior claim number. If the current claim has been adjusted; i.e., replaced by or merged to another claim number, this data element represents that new number.(111, 112)"
* related ^definition = "If the current claim represents a claim that has been adjusted and was given a prior claim number, this field represents the prior claim number. If the current claim has been adjusted; i.e., replaced by or merged to another claim number, this data element represents that new number.(111, 112)"
* payee.type ^short = "Identifies the type of recipient of the adjudication amount; i.e., provider, subscriber, beneficiary or another recipient. (120)"
* payee.type ^definition = "Identifies the type of recipient of the adjudication amount; i.e., provider, subscriber, beneficiary or another recipient. (120)"
* payee.party ^short = "Recipient reference (121)"
* payee.party ^definition = "Recipient reference (121)"
* outcome ^comment = "Expected value is complete"
* item.noteNumber ^comment = "References number of the associated processNote entered"
* careTeam.role ^short = "The functional role of a provider on a claim. (165)"
* careTeam.role ^definition = "The functional role of a provider on a claim. (165)"
* careTeam.sequence ^comment = "careTeam.sequence values uniquely identify careTeam members.  They do not necessarily indiate any order in which the patient was seen by the careTeam or identify any level of significance of the careTeam to the patient, etc.  Client app implementations should not assign any significance to the sequence values"
* supportingInfo ^short = "Defines data elements not available in the base EOB resource"
* supportingInfo ^definition = "Defines data elements not available in the base EOB resource"
* supportingInfo.sequence ^comment = "Client app implementations should look-up supportingInfo elements based on category values instead of sequence values"
* insurance ^short = "Identity of the payers responsible for the claim. (2, 141)"
* insurance ^definition = "Identity of the payers responsible for the claim. (2, 141)"
* insurance ^comment = "All insurance coverages for the patient which may be applicable for reimbursement, of the products and services listed in the claim, are typically provided in the claim to allow insurers to confirm the ordering of the insurance coverages relative to local 'coordination of benefit' rules. One coverage (and only one) with 'focal=true' is to be used in the adjudication of this claim. An invariant is defined to enforce the following rule:  Will have multiple occurrences on secondary / tertiary, etc. claims.  Up to one occurrence, that of the ExplanationOfBenefit.insurer, will have a boolean value = 'True'"
* insurance.focal ^comment = "A patient may (will) have multiple insurance policies which provide reimbursement for healthcare services and products. For example, a person may also be covered by their spouse's policy and both appear in the list (and may be from the same insurer). This flag will be set to true for only one of the listed policies and that policy will be used for adjudicating this claim. Other claims would be created to request adjudication against the other listed policies. An invariant is defined to enforce the following rule:  Will have multiple occurrences on secondary / tertiary, etc. claims.  Up to one occurrence, that of the ExplanationOfBenefit.insurer, will have a boolean value = 'True'"
* insurance.coverage ^comment = "Same as insurance.coverage.organization.  Party responsible for reimbursing the provider. When focal = true, Coverage.payer--> Organization.identifier.  When focal = false, EOB.insurance.coverage.display = [name of other carrier]"
* item.sequence ^short = "Line identification number that represents the number assigned in a source system for identification and processing. (36)"
* item.sequence ^definition = "Line identification number that represents the number assigned in a source system for identification and processing. (36)"
* payment.type ^short = "Indicates whether the claim was paid or denied. (91)"
* payment.type ^definition = "Indicates whether the claim was paid or denied. (91)"
* payment.date ^short = "The date the claim was paid. (107)"
* payment.date ^definition = "The date the claim was paid. (107)"
* processNote.text ^short = "Payment denial explanation to a member, typically goes on the EOB when the payment is denied or disallowed (181)"
* processNote.text ^definition = "Payment denial explanation to a member, typically goes on the EOB when the payment is denied or disallowed (181)"