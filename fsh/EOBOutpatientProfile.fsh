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
   clmrecvddate 1..1 MS and
   typeofbill 1..1 MS and 
   pointoforigin 1..1 MS and 
   admtype 1..1 MS and 
   discharge-status 1..1 MS 
* supportingInfo[billingnetworkcontractingstatus].category = C4BBSupportingInfoType#billingnetworkcontractingstatus 
* supportingInfo[billingnetworkcontractingstatus].code from C4BBPayerProviderContractingStatus  (required)
* supportingInfo[billingnetworkcontractingstatus].code 1..1
* supportingInfo[billingnetworkcontractingstatus] ^short = "Claim performing provider network status"
* supportingInfo[clmrecvddate].category = C4BBSupportingInfoType#clmrecvddate
* supportingInfo[clmrecvddate] ^short = "Claim Received Date"
* supportingInfo[clmrecvddate].timing[x] only date 
* supportingInfo[clmrecvddate].timing[x] 1..1
* supportingInfo[typeofbill].category = C4BBSupportingInfoType#typeofbill
* supportingInfo[typeofbill] ^short = "Type of Bill"
* supportingInfo[typeofbill].code from AHANUBCTypeOfBill (required)
* supportingInfo[pointoforigin].category = C4BBSupportingInfoType#pointoforigin
* supportingInfo[pointoforigin].code from AHANUBCPointOfOriginForAdmissionOrVisit (required)
* supportingInfo[pointoforigin] ^short = "Claim Point of Origin for Admission or Visit"
* supportingInfo[admtype].category = C4BBSupportingInfoType#admtype
* supportingInfo[admtype].code from AHANUBCPriorityTypeOfAdmissionOrVisit  (required)
* supportingInfo[admtype] ^short = "Claim Priority (Type) of Admission or Visit"
* supportingInfo[discharge-status].category = C4BBSupportingInfoType#discharge-status
* supportingInfo[discharge-status] ^short = "Discharge Status"
* supportingInfo[discharge-status].code from AHANUBCPatientDischargeStatus   (required)
* item.revenue from AHANUBCRevenueCodes (required)
* item.modifier from AMACPTCMSHCPCSModifiers (required)
* item.productOrService from AMACPTCMSHCPCSProcedureCodes (required)
* item.productOrService ^short = "Put the short definition here for item.productOrService here"
* item.productOrService ^comment = "Put the comment here for item.productOrService here"
* item  ^short = "Put the short definition here for item"
* item  ^comment = "Put the comment here for item"
* insert ItemAdjudicationSlicing
* item.adjudication contains
   adjudicationamounttype 1..* MS and
   denialreason 0..* MS and
   allowedunits 0..1 MS
* item.adjudication[allowedunits] ^short = "Allowed number of units"
* item.adjudication[allowedunits].category = C4BBAdjudicationDiscriminator#allowedunits
* item.adjudication[allowedunits].value only decimal
* item.adjudication[allowedunits].value MS
* item.adjudication[denialreason] ^short = "Denial Reason"
* item.adjudication[denialreason].category = C4BBAdjudicationDiscriminator#denialreason 
* item.adjudication[denialreason].reason from X12ClaimAdjustmentReasonCodesCMSRemittanceAdviceRemarkCodes
* item.adjudication[denialreason].reason 1..1 MS
* item.adjudication[adjudicationamounttype].category from C4BBAdjudication
* item.adjudication[adjudicationamounttype] ^short = "Amounts"
* item.adjudication[adjudicationamounttype].amount  MS
* insert AdjudicationSlicing 
* adjudication contains
   adjudicationamounttype 1..* MS and
   denialreason 0..* MS 
* adjudication[denialreason] ^short = "Denial Reason"
* adjudication[denialreason].category = C4BBAdjudicationDiscriminator#denialreason 
* adjudication[denialreason].reason from X12ClaimAdjustmentReasonCodesCMSRemittanceAdviceRemarkCodes
* adjudication[denialreason].reason 1..1 MS
* adjudication[adjudicationamounttype].category from C4BBAdjudication (required)
* adjudication[adjudicationamounttype] ^short = "Amounts"
* adjudication[adjudicationamounttype].amount 1..1 MS
* diagnosis 1..*
* diagnosis.type 1..1 MS
* diagnosis.type from C4BBClaimOutpatientInstitutionalDiagnosisType  (required)
* insert TotalSlicing
* total contains
   adjudicationamounttype 1..* MS and
   inoutnetwork 1..1 MS 
* total[inoutnetwork] ^short = "Benefit Payment Status"
* total[inoutnetwork].category from C4BBPayerBenefitPaymentStatus (required)
* total[adjudicationamounttype].category from C4BBAdjudication  (required)
* total[adjudicationamounttype] ^short = "Amounts"
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

