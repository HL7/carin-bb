Profile: C4BBExplanationOfBenefitInpatientInstitutional
Parent: C4BB-ExplanationOfBenefit
Id: C4BB-ExplanationOfBenefit-Inpatient-Institutional
Title: "C4BB ExplanationOfBenefit Inpatient Institutional"
Description: "The profile is used for Explanation of Benefits (EOBs) based on claims submitted by clinics, hospitals, skilled nursing facilities and other institutions for inpatient services, which may include the use of equipment and supplies, laboratory services, radiology services and other charges. Inpatient claims are submitted for services rendered at an institution as part of an overnight stay.
The claims data is based on the institutional claim format UB-04, submission standards adopted by the Department of Health and Human
Services."
// 20210322 CAS: FHIR-30575
* insert Metaprofile-supportedProfile-slice
* meta.profile[supportedProfile] = Canonical(C4BBExplanationOfBenefitInpatientInstitutional|1.2.0)
//@Saul -- added MS
* use MS
* outcome MS

// 20210203 CAS: https://jira.hl7.org/browse/FHIR-30370 - NUBC Point Of Origin - newborns
* obeys EOB-inst-pointoforigin


//* type.coding 1..1 MS   // commenting this line leads to a failure
* type = $HL7ClaimTypeCS#institutional
* subType 1..1 MS
* subType from C4BBInstitutionalClaimSubType (required)
* subType = C4BBInstitutionalClaimSubType#inpatient
* careTeam.role from C4BBClaimInstitutionalCareTeamRole  (required)  // was  PayerInstitutionalProviderRole
* careTeam.role 1..1 MS
* careTeam obeys EOB-inst-careTeam-practitioner
* careTeam obeys EOB-inst-careTeam-organization
* billablePeriod 1..1 MS
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
     drg 0..1 MS and
     // 20210312 CAS: https://jira.hl7.org/browse/FHIR-31534 - Medical Record Number and Patient Account Number
     medicalrecordnumber 0..1 MS and
     patientaccountnumber 0..1 MS and
     //  FHIR-33082 - Move total [benefitpaymentstatus] slice to supportingInfo
     benefitpaymentstatus 1..1 MS

* supportingInfo[benefitpaymentstatus] ^short = "Indicates the in network or out of network payment status of the claim. (142)"
* supportingInfo[benefitpaymentstatus].category = C4BBSupportingInfoType#benefitpaymentstatus
* supportingInfo[benefitpaymentstatus].code from  C4BBPayerBenefitPaymentStatus  (required)
* supportingInfo[benefitpaymentstatus].code 1..1 MS

* supportingInfo[billingnetworkcontractingstatus] ^short = "Billing provider contracting status"
* supportingInfo[billingnetworkcontractingstatus].category = C4BBSupportingInfoType#billingnetworkcontractingstatus
* supportingInfo[billingnetworkcontractingstatus].category MS
* supportingInfo[billingnetworkcontractingstatus].code from C4BBPayerProviderContractingStatus  (required)
* supportingInfo[billingnetworkcontractingstatus].code 1..1 MS

* supportingInfo[admissionperiod] ^short = "Admission Period"
* supportingInfo[admissionperiod].category = C4BBSupportingInfoType#admissionperiod
* supportingInfo[admissionperiod].category  MS
* supportingInfo[admissionperiod].timingPeriod 1..1 MS

* supportingInfo[clmrecvddate] ^short = "Claim received date"
* supportingInfo[clmrecvddate].category  = C4BBSupportingInfoType#clmrecvddate
* supportingInfo[clmrecvddate].category  MS
* supportingInfo[clmrecvddate].timing[x] only date
* supportingInfo[clmrecvddate].timing[x] 1..1 MS

* supportingInfo[typeofbill] ^short = "Type of bill"
* supportingInfo[typeofbill].category  = C4BBSupportingInfoType#typeofbill
* supportingInfo[typeofbill].category MS
* supportingInfo[typeofbill].code from AHANUBCTypeOfBill (required)
* supportingInfo[typeofbill].code 1..1 MS

* supportingInfo[admtype] ^short = "Admission type"
* supportingInfo[admtype].category  = C4BBSupportingInfoType#admtype
* supportingInfo[admtype].category MS
* supportingInfo[admtype].code from AHANUBCPriorityTypeOfAdmissionOrVisit  (required)
* supportingInfo[admtype].code 1..1 MS

* supportingInfo[pointoforigin] ^short = "Point of origin for admission"
* supportingInfo[pointoforigin].category  = C4BBSupportingInfoType#pointoforigin
* supportingInfo[pointoforigin].category MS
* supportingInfo[pointoforigin].code from AHANUBCPointOfOriginForAdmissionOrVisit (required)
* supportingInfo[pointoforigin].code 1..1 MS

* supportingInfo[discharge-status] ^short = "Discharge status"
* supportingInfo[discharge-status].category  = C4BBSupportingInfoType#discharge-status
* supportingInfo[discharge-status].category MS
* supportingInfo[discharge-status].code from AHANUBCPatientDischargeStatus   (required)
* supportingInfo[discharge-status].code 1..1 MS

* supportingInfo[drg] ^short = "Diagnosis Related Group"
* supportingInfo[drg].category  = C4BBSupportingInfoType#drg
* supportingInfo[drg].category MS
// CAS 20210118: https://jira.hl7.org/browse/FHIR-30380  Allow state assigned DRGs in the DRG Value Set
* supportingInfo[drg].code from CMSMS3MAPAPRDRG  (extensible)
* supportingInfo[drg].code 1..1 MS
// 20210312 CAS: https://jira.hl7.org/browse/FHIR-31534 - Medical Record Number and Patient Account Number

* supportingInfo[medicalrecordnumber] ^short = "Medical record number"
* supportingInfo[medicalrecordnumber].category = C4BBSupportingInfoType#medicalrecordnumber
* supportingInfo[medicalrecordnumber].valueString 1..1 MS

* supportingInfo[patientaccountnumber] ^short = "Patient account number"
* supportingInfo[patientaccountnumber].category = C4BBSupportingInfoType#patientaccountnumber
* supportingInfo[patientaccountnumber].valueString 1..1 MS

* item.revenue from AHANUBCRevenueCodes (required)
* item.modifier from AMACPTCMSHCPCSModifiers (required)
* item.productOrService from C4BBEOBInstitutionalProcedureCodes (required)
* insert EOBHeaderItemAdjudicationInvariant
* insert ItemAdjudicationInvariant
* insert ItemAdjudicationSlicing
* item.adjudication contains
   adjudicationamounttype 0..* MS and   /* restricted to 1..* by invariant */
   denialreason 0..* MS and
   allowedunits 0..1 MS

* item.adjudication[allowedunits] ^short = "The quantity of units, times, days, visits, services, or treatments for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider.  (149)"
* item.adjudication[allowedunits].category = C4BBAdjudicationDiscriminator#allowedunits
* item.adjudication[allowedunits].value only decimal
// FHIR-30807 - Change cardinality in EOB Inpatient and Outpatient Institutional Profiles
* item.adjudication[allowedunits].value 1..1 MS

* item.adjudication[denialreason] ^short = "Reason codes used to interpret the Non-Covered Amount (92)"
* item.adjudication[denialreason].category = C4BBAdjudicationDiscriminator#denialreason
* item.adjudication[denialreason].reason from X12ClaimAdjustmentReasonCodesCMSRemittanceAdviceRemarkCodes
* item.adjudication[denialreason].reason 1..1 MS

* item.adjudication[adjudicationamounttype] ^short =  "Line level adjudication type and amount"
* item.adjudication[adjudicationamounttype].category from C4BBAdjudication
* item.adjudication[adjudicationamounttype].amount MS
* item.adjudication[adjudicationamounttype].amount 1..1
* insert AdjudicationInvariant
* insert AdjudicationSlicing
* adjudication MS
* item.adjudication  MS
* adjudication contains
   adjudicationamounttype 0..* MS and   /* restricted to 1..* by invariant */
   denialreason 0..* MS

* adjudication[denialreason] ^short = "Reason codes used to interpret the Non-Covered Amount (92)"
* adjudication[denialreason].category = C4BBAdjudicationDiscriminator#denialreason
* adjudication[denialreason].reason from X12ClaimAdjustmentReasonCodesCMSRemittanceAdviceRemarkCodes
* adjudication[denialreason].reason 1..1 MS

* adjudication[adjudicationamounttype] ^short = "Claim level adjudication type and amount"
* adjudication[adjudicationamounttype].category from C4BBAdjudication  (required)
* adjudication[adjudicationamounttype].amount 1..1
* insert TotalSlicing
* total.category from C4BBTotalCategoryDiscriminator (extensible)
* total contains
   adjudicationamounttype 1..* MS

* total[adjudicationamounttype] ^short =  "Total adjudication type and amount"
* total[adjudicationamounttype].category from C4BBAdjudication  (required)
* total[adjudicationamounttype].amount MS
//* total[adjudicationamounttype].amount 1..1
* patient MS
* insurer MS
// 20210309 CAS: FHIR-31477 - Change cardinality of inpatient profile's insurance to 1..* to allow for coordination of benefits, consistent with the rest of the CARIN EOB profiles
//* insurance 1..1 MS
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

* supportingInfo[pointoforigin] ^comment = "Identifies the place where the patient was identified as needing admission to an institution. This is a two position code mapped from the standard values for the UB-04 Source of Admission code (FL-15). (13)"
* supportingInfo[admtype] ^comment = "Priority of the admission. Information located on (UB04 Form Locator 14). For example, an admission type of elective indicates that the patient's condition permitted time for medical services to be scheduled. (14)"
* supportingInfo[typeofbill] ^comment = "UB04 (Form Locator 4) type of bill code provides specific information for payer purposes. The first digit of the three-digit number denotes the type of institution, the second digit classifies the type of care being billed, and the third digit  identifies the frequency of the bill for a specific course of treatment or inpatient confinement. (17)"
* supportingInfo[clmrecvddate] ^comment = "The date the claim was received by the payer (88)"
* supportingInfo[billingnetworkcontractingstatus] ^comment = "Indicates that the Billing Provider has a contract with the Plan (regardless of the network) as of the effective date of service or admission. (101)"
* supportingInfo[admissionperiod] ^comment = "The Period.start date corresponds with the date the beneficiary was admitted to a facility and the onset of services. May precede the Statement From Date if this claim is for a beneficiary who has been continuously under care. The Period.end date corresponds with the date beneficiary was discharged from the facility, or died. Matches the final Statement Thru Date. When there is a discharge date, the Patient Discharge Status Code indicates the final disposition of the patient after discharge. (18, 19)"
* supportingInfo[drg] ^comment = "Claim diagnosis related group (DRG). DRGs require the DRG system; i.e., MS-DRG / AP-DRG / APR-DRG, the DRG version and the code value (32, 33. 113)"
* supportingInfo[discharge-status] ^comment = "Patient’s status as of the discharge date for a facility stay. Information located on UB04. (Form Locator 17). (117)"
* supportingInfo[medicalrecordnumber] ^comment = "Provider submitted medical record number that can be included on the claim. (109)"
* supportingInfo[patientaccountnumber] ^comment = "Provider assigned patient account number that can be included on the claim. (109)"
* supportingInfo[benefitpaymentstatus] ^comment = "Indicates the in network or out of network payment status of the claim. (142)"
* item.adjudication[allowedunits] ^comment = "The quantity of units, times, days, visits, services, or treatments allowed for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider. (149)"
* item.adjudication[denialreason] ^comment = "Reason codes used to interpret the Non-Covered Amount that are provided to the Provider. (92)"
* item.adjudication[adjudicationamounttype] ^comment = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* adjudication[denialreason] ^comment = "Reason codes used to interpret the Non-Covered Amount that are provided to the Provider. (92)"
* adjudication[adjudicationamounttype] ^comment = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* total[adjudicationamounttype] ^comment = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* total.amount ^comment = "Total amount for each category (i.e., submitted, allowed, etc.) (148)"
* diagnosis.onAdmission ^comment = "Used to capture whether a diagnosis was present at time of a patient's admission. (28)"
* diagnosis ^comment = "Diagnosis codes describe an individual's disease or medical condition. (6, 7, 8, 21, 22, 23, 30)"
* diagnosis.type ^comment =  "Indicates if the inpatient institutional diagnosis is admitting, principal, other or an external cause of injury. (21, 22, 23)"
* diagnosis.sequence ^comment =  "Diagnosis.sequence values do not necessarily indicate any order in which the diagnosis was reported or identified.  client app implementations should not assign any significance to the sequence values.  client app implementations should use the values of diagnosis.type to identify primary, secondary, etc."
* item.productOrService ^comment = "Medical procedure a patient received from a health care provider. Current coding methods include: CPT-4 and HCFA Common Procedure Coding System Level II - (HCPCSII). (40)"
* item.modifier ^comment = "Modifier(s) for the procedure represented on this line. Identifies special circumstances related to the performance of the service. (41)"
* item.quantity ^comment = "The quantity of units, times, days, visits, services, or treatments for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider. (42)"
* item.revenue ^comment = "Code used on the UB-04 (Form Locator 42) to identify a specific accommodation, ancillary service, or billing calculation related to the service being billed (86)"
* adjudication[denialreason].reason ^comment = "Reason codes used to interpret the Non-Covered Amount that are provided to the Provider. (92)"
* careTeam.provider ^comment = "The National Provider Identifier assigned to the care team (primary care provider, attending, referring, otheroperating, operating, and performing) for the admission. (93, 96, 98, 99, 173)"
* procedure ^comment = "Medical procedure a patient received during inpatient stay. Current coding methods include: International Classification of Diseases Surgical Procedures (ICD-9). Information located on UB04 (Form Locator 74). (25, 27, 10, 12)"
* procedure.type ^comment = "Indicates if the inpatient institutional procedure (ICD-PCS) is the principal procedure or another procedure. (186)"
* procedure.sequence ^comment =  " procedure.sequence values do not necessarily indicate any order in which the procedure occurred.  client app implementations should not assign any significance to the sequence values.  client app implementations should use the values of procedure.type to identify primary and secondary procedures"


* insert EOBBaseProfileComments
