Profile: C4BBExplanationOfBenefitOutpatientInstitutional
Parent: C4BB-ExplanationOfBenefit
Id: C4BB-ExplanationOfBenefit-Outpatient-Institutional
Title: "C4BB ExplanationOfBenefit Outpatient Institutional"
Description: "This profile is used for Explanation of Benefits (EOBs) based on claims submitted by clinics, hospitals, skilled nursing facilities and other institutions for outpatient services, which may include including the use of equipment and supplies, laboratory services, radiology services and other charges. Outpatient claims are submitted for services rendered at an institution that are not part of an overnight stay.
The claims data is based on the institutional claim form UB-04, submission standards adopted by the Department of Health and Human Services."
// 20210322 CAS: FHIR-30575
//* insert Metaprofile-supportedProfile-slice
//* meta.profile[supportedProfile] = Canonical(C4BBExplanationOfBenefitOutpatientInstitutional|1.2.0)
* obeys EOB-institutional-outpatient-meta-profile-version

// 20210203 CAS: https://jira.hl7.org/browse/FHIR-30370 - NUBC Point Of Origin - newborns
* obeys EOB-inst-pointoforigin

* type  = $HL7ClaimTypeCS#institutional
* subType 1..1 MS
* subType from C4BBInstitutionalClaimSubType (required)
* subType = C4BBInstitutionalClaimSubType#outpatient
* careTeam.role from C4BBClaimInstitutionalCareTeamRole  (required)   // was PayerInstitutionalProviderRole
* careTeam.role 1..1 MS
* careTeam obeys EOB-inst-careTeam-practitioner
* careTeam obeys EOB-inst-careTeam-organization
* careTeam obeys EOB-careteam-qualification
* careTeam.qualification from $USCoreProviderSpecialty (required)
* identifier MS
* diagnosis 1..*
* diagnosis.diagnosis[x] 1..1 MS
* diagnosis.diagnosis[x] only CodeableConcept
* diagnosis.diagnosis[x] from CDCICD910CMDiagnosisCodes (required)
* provider only Reference(C4BBOrganization)
* insert SupportingInfoSlicing
* supportingInfo contains
   clmrecvddate 0..1 MS and
   typeofbill 0..1 MS and
   pointoforigin 0..1 MS and
   admtype 0..1 MS and
   discharge-status 0..1 MS and
        // 20210312 CAS: https://jira.hl7.org/browse/FHIR-31534 - Medical Record Number and Patient Account Number
   medicalrecordnumber 0..1 MS and
   patientaccountnumber 0..1 MS


* supportingInfo[clmrecvddate] ^short = "Claim received date"
* supportingInfo[clmrecvddate].category = C4BBSupportingInfoType#clmrecvddate
* supportingInfo[clmrecvddate].category MS
* supportingInfo[clmrecvddate].timing[x] only date
* supportingInfo[clmrecvddate].timing[x] 1..1 MS

* supportingInfo[typeofbill] ^short = "Type of bill"
* supportingInfo[typeofbill].category = C4BBSupportingInfoType#typeofbill
* supportingInfo[typeofbill].category MS
* supportingInfo[typeofbill].code from AHANUBCTypeOfBill (required)
* supportingInfo[typeofbill].code 1..1 MS

* supportingInfo[admtype] ^short = "Admission type"
* supportingInfo[admtype].category = C4BBSupportingInfoType#admtype
* supportingInfo[admtype].category MS
* supportingInfo[admtype].code from AHANUBCPriorityTypeOfAdmissionOrVisit  (required)
* supportingInfo[admtype].code 1..1 MS

* supportingInfo[pointoforigin] ^short = "Point of origin for admission or visit"
* supportingInfo[pointoforigin].category = C4BBSupportingInfoType#pointoforigin
* supportingInfo[pointoforigin].category MS
* supportingInfo[pointoforigin].code from AHANUBCPointOfOriginForAdmissionOrVisit (required)
// FHIR-30807 - Change cardinality in EOB Inpatient and Outpatient Institutional Profiles
* supportingInfo[pointoforigin].code 1..1 MS

* supportingInfo[discharge-status] ^short = "Discharge status"
* supportingInfo[discharge-status].category = C4BBSupportingInfoType#discharge-status
* supportingInfo[discharge-status].category MS
* supportingInfo[discharge-status].code  1..1 MS
* supportingInfo[discharge-status].code from AHANUBCPatientDischargeStatus   (required)
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
/* 20211110 CAS: https://jira.hl7.org/browse/FHIR-32850
* item.productOrService obeys EOB-out-inst-item-productorservice
*/
//* item.productOrService ^comment = "Put the comment here for item.productOrService here"
//* item  ^comment = "Put the comment here for item"
* insert EOBHeaderItemAdjudicationInvariant
* insert ItemAdjudicationInvariant
* insert ItemAdjudicationSlicing
* item.adjudication contains
   adjudicationamounttype 0..* MS and  /* restricted to 1..* by invariant */
   adjustmentreason 0..* MS and
   allowedunits 0..1 MS


* item.adjudication[allowedunits] ^short = "The quantity of units, times, days, visits, services, or treatments for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider.  (149)"
* item.adjudication[allowedunits].category = C4BBAdjudicationDiscriminator#allowedunits
* item.adjudication[allowedunits].value only decimal
* item.adjudication[allowedunits].value 1..1 MS

* item.adjudication[adjustmentreason] ^short = "Reason codes used to interpret the Non-Covered Amount (92)"
* item.adjudication[adjustmentreason].category = C4BBAdjudicationDiscriminator#adjustmentreason
* item.adjudication[adjustmentreason].reason from X12ClaimAdjustmentReasonCodesCMSRemittanceAdviceRemarkCodes
* item.adjudication[adjustmentreason].reason 1..1 MS

* item.adjudication[adjudicationamounttype] ^short =  "Line level adjudication type and amount"
* item.adjudication[adjudicationamounttype].category from C4BBAdjudication
* item.adjudication[adjudicationamounttype].amount  MS
* item.adjudication[adjudicationamounttype].amount 1..1
/* removed - FHIR-38063 - Update Invariants to support contracting and benefit payment status move to EOB.adjudication
* insert AdjudicationInvariant
*/
* insert AdjudicationSlicing
* adjudication  MS
* item.adjudication  MS
* adjudication contains
   billingnetworkstatus 0..1 MS and
   benefitpaymentstatus 1..1 MS and
   adjudicationamounttype 0..* MS and  /* restricted to 1..* by invariant */
   adjustmentreason 0..* MS

* adjudication[billingnetworkstatus] ^short = "Billing provider networking status"
* adjudication[billingnetworkstatus].category = C4BBAdjudicationDiscriminator#billingnetworkstatus
* adjudication[billingnetworkstatus].category MS
* adjudication[billingnetworkstatus].reason from C4BBPayerProviderNetworkStatus  (required)
* adjudication[billingnetworkstatus].reason 1..1 MS

* adjudication[benefitpaymentstatus] ^short = "Indicates the in network or out of network payment status of the claim. (142)"
* adjudication[benefitpaymentstatus].category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
* adjudication[benefitpaymentstatus].reason from  C4BBPayerBenefitPaymentStatus  (required)
* adjudication[benefitpaymentstatus].reason 1..1 MS

* adjudication[adjustmentreason] ^short = "Reason codes used to interpret the Non-Covered Amount (92)"
* adjudication[adjustmentreason].category = C4BBAdjudicationDiscriminator#adjustmentreason
* adjudication[adjustmentreason].reason from X12ClaimAdjustmentReasonCodesCMSRemittanceAdviceRemarkCodes
* adjudication[adjustmentreason].reason 1..1 MS

* adjudication[adjudicationamounttype] ^short = "Claim level adjudication type and amount"
* adjudication[adjudicationamounttype].category from C4BBAdjudication (required)
* adjudication[adjudicationamounttype].amount 1..1 MS
* diagnosis 1..*
* diagnosis.type 1..1 MS
* diagnosis.type from C4BBClaimOutpatientInstitutionalDiagnosisType  (required)
* insert TotalSlicing
* total.category from C4BBTotalCategoryDiscriminator (extensible)
* total contains
   adjudicationamounttype 1..* MS

* total[adjudicationamounttype] ^short =  "Total adjudication type and amount"
* total[adjudicationamounttype].category from C4BBAdjudication  (required)
* total[adjudicationamounttype].amount MS
//* total[adjudicationamounttype].amount 1..1
* status MS
* created MS
* item.sequence MS
* item.revenue MS
* item.productOrService MS
* item.modifier MS

* item.serviced[x] 1..1
* item.serviced[x] only date 
* item.servicedDate MS

* item.quantity MS
* payment.type MS
* payment.date MS
* processNote.text MS

* supportingInfo[pointoforigin] ^comment = "Identifies the place where the patient was identified as needing admission to an institution. This is a two position code mapped from the standard values for the UB-04 Source of Admission code (FL-15). (13)"
* supportingInfo[admtype] ^comment = "Priority of the admission. Information located on (UB04 Form Locator 14). For example, an admission type of elective indicates that the patient's condition permitted time for medical services to be scheduled. (14)"
* supportingInfo[typeofbill] ^comment = "UB04 (Form Locator 4) type of bill code provides specific information for payer purposes. The first digit of the three-digit number denotes the type of institution, the second digit classifies the type of care being billed, and the third digit  identifies the frequency of the bill for a specific course of treatment or inpatient confinement. (17)"
* supportingInfo[clmrecvddate] ^comment = "The date the claim was received by the payer (88)"
* supportingInfo[discharge-status] ^comment = "Patient’s status as of the discharge date for a facility stay. Information located on UB04. (Form Locator 17). (117)"
* supportingInfo[medicalrecordnumber] ^comment = "Provider submitted medical record number that can be included on the claim. (109)"
* supportingInfo[patientaccountnumber] ^comment = "Provider assigned patient account number that can be included on the claim. (109)"
* item.adjudication[allowedunits] ^comment = "The quantity of units, times, days, visits, services, or treatments allowed for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider. (149)"
* item.adjudication[adjustmentreason] ^comment = "Reason codes used to interpret the Non-Covered Amount that are provided to the Provider. (92)"
* item.adjudication[adjudicationamounttype] ^comment = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* adjudication[billingnetworkstatus] ^comment = "Indicates that the Billing Provider has a contract with the Plan (regardless of the network) as of the effective date of service or admission. (101)"
* adjudication[benefitpaymentstatus] ^comment = "Indicates the in network or out of network payment status of the claim. (142)"
* adjudication[adjustmentreason] ^comment = "Reason codes used to interpret the Non-Covered Amount that are provided to the Provider. (92)"
* adjudication[adjudicationamounttype] ^comment = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* total[adjudicationamounttype] ^comment = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* total.amount ^comment = "Total amount for each category (i.e., submitted, allowed, etc.) (148)"
* diagnosis ^comment = "Diagnosis codes describe an individual's disease or medical condition. (6, 7, 8, 21, 22, 23, 30)"
* diagnosis.type ^comment =  "Indicates if the outpatient institutional diagnosis is principal, other, an external cause of injury or a patient reason for visit. (21, 22, 23)"
* diagnosis.sequence ^comment =  "Diagnosis.sequence values do not necessarily indicate any order in which the diagnosis was reported or identified.  client app implementations should not assign any significance to the sequence values.  client app implementations should use the values of diagnosis.type to identify primary, secondary, etc."
* item.productOrService ^comment = "Medical procedure a patient received from a health care provider. Current coding methods include: CPT-4 and HCFA Common Procedure Coding System Level II - (HCPCSII). (40)"
* item.modifier ^comment = "Modifier(s) for the procedure represented on this line. Identifies special circumstances related to the performance of the service. (41)"
* item.quantity ^comment = "The quantity of units, times, days, visits, services, or treatments for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider. (42)"
* item.revenue ^comment = "Code used on the UB-04 (Form Locator 42) to identify a specific accommodation, ancillary service, or billing calculation related to the service being billed (86)"
* adjudication[adjustmentreason].reason ^comment = "Reason codes used to interpret the Non-Covered Amount that are provided to the Provider. (92)"
* careTeam.provider ^comment = "The National Provider Identifier assigned to the care team (primary care provider, attending, referring, otheroperating, operating, and rendering) for the admission. (93, 96, 98, 99, 173)"


* insert EOBBaseProfileComments
