Profile: C4BBExplanationOfBenefitOutpatientInstitutional
Parent: C4BB-ExplanationOfBenefit
Id: C4BB-ExplanationOfBenefit-Outpatient-Institutional
Title: "C4BB ExplanationOfBenefit Outpatient Institutional"
Description: "This profile is used for Explanation of Benefits (EOBs) based on claims submitted by clinics, hospitals, skilled nursing facilities and other institutions for outpatient services, which may include including the use of equipment and supplies, laboratory services, radiology services and other charges. Outpatient claims are submitted for services rendered at a Institutional that are not part of an overnight stay. 
The claims data is based on the institutional claim form UB-04, submission standards adopted by the Department of Health and Human Services."
* type  = $HL7ClaimTypeCS#institutional
* careTeam.role from C4BBClaimInstitutionalCareTeamRole  (required)   // was PayerInstitutionalProviderRole
* careTeam.role 1..1 MS
* obeys EOB-inst-careTeam-practitioner
* obeys EOB-inst-careTeam-organization
* obeys EOB-careteam-qualification
* careTeam.qualification from $USCoreProviderSpecialty (required)
* identifier MS   
* diagnosis 1..*
* diagnosis.diagnosis[x] 1..1 MS
* diagnosis.diagnosis[x] only CodeableConcept
* diagnosis.diagnosis[x] from CDCICD910CMDiagnosisCodes (required)
* provider only Reference(C4BBOrganization)
* insert SupportingInfoSlicing 
* supportingInfo contains 
   billingnetworkcontractingstatus 1..1 MS and
   clmrecvddate 0..1 MS and
   typeofbill 0..1 MS and 
   pointoforigin 0..1 MS and 
   admtype 0..1 MS and 
   discharge-status 0..1 MS 
* supportingInfo[billingnetworkcontractingstatus].category = C4BBSupportingInfoType#billingnetworkcontractingstatus 
* supportingInfo[billingnetworkcontractingstatus].code from C4BBPayerProviderContractingStatus  (required)
* supportingInfo[billingnetworkcontractingstatus].code 1..1 MS
* supportingInfo[clmrecvddate].category = C4BBSupportingInfoType#clmrecvddate
* supportingInfo[clmrecvddate].timing[x] only date 
* supportingInfo[clmrecvddate].timing[x] 1..1 MS
* supportingInfo[typeofbill].category = C4BBSupportingInfoType#typeofbill
* supportingInfo[typeofbill].code from AHANUBCTypeOfBill (required)
* supportingInfo[pointoforigin].category = C4BBSupportingInfoType#pointoforigin
* supportingInfo[pointoforigin].code from AHANUBCPointOfOriginForAdmissionOrVisit (required)
* supportingInfo[pointoforigin].code MS 
* supportingInfo[admtype].category = C4BBSupportingInfoType#admtype
* supportingInfo[admtype].code from AHANUBCPriorityTypeOfAdmissionOrVisit  (required)
* supportingInfo[admtype].code MS 
* supportingInfo[discharge-status].category = C4BBSupportingInfoType#discharge-status
* supportingInfo[discharge-status].code MS 
* item.revenue from AHANUBCRevenueCodes (required)
* item.modifier from AMACPTCMSHCPCSModifiers (required)
* item.productOrService from AMACPTCMSHCPCSProcedureCodes (required)
* item.productOrService ^comment = "Put the comment here for item.productOrService here"
* item  ^comment = "Put the comment here for item"
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
* item.adjudication[adjudicationamounttype].amount  MS
* insert AdjudicationSlicing 
* adjudication contains
   adjudicationamounttype 1..* MS and
   denialreason 0..* MS 
* adjudication[denialreason].category = C4BBAdjudicationDiscriminator#denialreason 
* adjudication[denialreason].reason from X12ClaimAdjustmentReasonCodesCMSRemittanceAdviceRemarkCodes
* adjudication[denialreason].reason 1..1 MS
* adjudication[adjudicationamounttype].category from C4BBAdjudication (required)
* adjudication[adjudicationamounttype].amount 1..1 MS
* diagnosis 1..*
* diagnosis.type 1..1 MS
* diagnosis.type from C4BBClaimOutpatientInstitutionalDiagnosisType  (required)
* insert TotalSlicing
* total contains
   adjudicationamounttype 1..* MS and
   inoutnetwork 0..1 MS 
* total[inoutnetwork].category from C4BBPayerBenefitPaymentStatus (required)
* total[adjudicationamounttype].category from C4BBAdjudication  (required)
* total[adjudicationamounttype].amount MS 
//* total[adjudicationamounttype].amount 1..1
* status MS
* created MS
* item.sequence MS
* item.revenue MS
* item.productOrService MS
* item.modifier MS
* item.serviced[x] only date 
* item.servicedDate MS
* item.quantity MS
* payment.type MS
* payment.date MS
* processNote.text MS 

* supportingInfo[pointoforigin] ^short = "Identifies the place where the patient was identified as needing admission to an institution. This is a two position code mapped from the standard values for the UB-04 Source of Admission code (FL-15). (13)"
* supportingInfo[admtype] ^short = "Priority of the admission. Information located on (UB04 Form Locator 14). For example, an admission type of elective indicates that the patient's condition permitted time for medical services to be scheduled. (14)"
* supportingInfo[typeofbill] ^short = "UB04 (Form Locator 4) type of bill code provides specific information for payer purposes. The first digit of the three-digit number denotes the type of institution, the second digit classifies the type of care being billed, and the third digit  identifies the frequency of the bill for a specific course of treatment or inpatient confinement. (17)"
* supportingInfo[clmrecvddate] ^short = "The date the claim was received by the payer (88)"
* supportingInfo[billingnetworkcontractingstatus] ^short = "Indicates that the Billing Provider has a contract with the Plan (regardless of the network) as of the effective date of service or admission. (101)"
* supportingInfo[discharge-status] ^short = "Patient�s status as of the discharge date for a facility stay. Information located on UB04. (Form Locator 17). (117)"
* item.adjudication[allowedunits] ^short = "The quantity of units, times, days, visits, services, or treatments allowed for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider. (149)"
* item.adjudication[denialreason] ^short = "Reason codes used to interpret the Non-Covered Amount that are provided to the Provider. (92)"
* item.adjudication[adjudicationamounttype] ^short = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* adjudication[denialreason] ^short = "Reason codes used to interpret the Non-Covered Amount that are provided to the Provider. (92)"
* adjudication[adjudicationamounttype] ^short = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* total[inoutnetwork] ^short = "Indicates the in network or out of network payment status of the claim. (142)"
* total[adjudicationamounttype] ^short = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* total.amount ^short = "Total amount for each category (i.e., submitted, allowed, etc.) (148)"
* patient ^short = "Identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided. (1)"
* insurer ^short = "Code of the payer responsible for the claim. (2, 5)"
* insurance ^short = "Identity of the payers responsible for the claim. (2, 141)"
* type ^short = "Specifies the type of claim. (e.g., inpatient insitutional, outpatient institutional, physician, etc.) (16)"
* diagnosis ^short = "Diagnosis codes describe an individual's disease or medical condition. (6, 7, 8, 21, 22, 23, 30, 31)"
* diagnosis.type ^short =  "Indicates if the outpatient institutional diagnosis is principal, other, an external cause of injury or a patient reason for visit. (188)"
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

* careTeam.role ^short = "The functional role of a provider on a claim. (165)"
* processNote.text ^short = "Line payment denial explanation to a member, typically goes on the EOB when the payment is denied or disallowed (181)"
* billablePeriod.start ^short = "The first day on the billing statement covering services rendered to the beneficiary (i.e. 'Statement Covers From Date). (177)"
* billablePeriod.end ^short = "The last day on the billing statement covering services rendered to the beneficiary (i.e. 'Statement Covers Thru Date). (178)"
* identifier.type ^short = "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber. (183)"
* created ^short = "Date the claim was adjudicated. (179)"


