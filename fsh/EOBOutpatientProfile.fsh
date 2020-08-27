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
* careTeam obeys EOB-careteam-qualification
* careTeam.qualification from $USCoreProviderSpecialty (required)
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
   clmrecvddate 0..1 MS and
   typeofbill 0..1 MS and 
   pointoforigin 0..1 MS and 
   admtype 0..1 MS and 
   discharge-status 0..1 MS 
* supportingInfo[billingnetworkcontractingstatus].category = ClaimInformationCategoryCS#billingnetworkcontractingstatus 
* supportingInfo[billingnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[billingnetworkcontractingstatus].code 1..1
* supportingInfo[billingnetworkcontractingstatus] ^short = "Claim performing provider network status"
* supportingInfo[clmrecvddate].category = ClaimInformationCategoryCS#clmrecvddate
* supportingInfo[clmrecvddate] ^short = "Claim Received Date"
* supportingInfo[clmrecvddate].timing[x] only date 
* supportingInfo[clmrecvddate].timing[x] 1..1
* supportingInfo[typeofbill].category = ClaimInformationCategoryCS#typeofbill
* supportingInfo[typeofbill] ^short = "Type of Bill"
* supportingInfo[typeofbill].code from AHANUBCTypeOfBill (required)
* supportingInfo[pointoforigin].category = ClaimInformationCategoryCS#admsrc
* supportingInfo[pointoforigin].code from AHANUBCPointOfOriginForAdmissionOrVisit (required)
* supportingInfo[pointoforigin] ^short = "Claim Point of Origin for Admission or Visit"
* supportingInfo[admtype].category = ClaimInformationCategoryCS#admtype
* supportingInfo[admtype].code from AHANUBCPriorityTypeOfAdmissionOrVisit  (required)
* supportingInfo[admtype] ^short = "Claim Priority (Type) of Admission or Visit "
* supportingInfo[discharge-status].category = ClaimInformationCategoryCS#discharge-status
* supportingInfo[discharge-status] ^short = "Discharge Status"
* supportingInfo[discharge-status].code from AHANUBCPatientDischargeStatus   (required)
* item.revenue from AHANUBCRevenueCodes (required)
* item.modifier from AMACPTCMSHCPCSProcedureModifiers (required)
* item.productOrService from AMACPTCMSHCPCSProcedureCodes (required)
* item.productOrService ^short = "Put the short definition here for item.productOrService here"
* item.productOrService ^comment = "Put the comment here for item.productOrService here"
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
* item.adjudication[denialreason].reason from X12CARCCMSRARC
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
* adjudication[denialreason].reason from X12CARCCMSRARC
* adjudication[denialreason].reason 1..1 MS
* adjudication[adjudicationamounttype].category from AdjudicationCarinBBValueCodes (required)
* adjudication[adjudicationamounttype] ^short = "Amounts"
* adjudication[adjudicationamounttype].amount 1..1 MS
* diagnosis 1..*
* diagnosis.type 1..1 MS
* diagnosis.type from PayerOutpatientinstitutionaldiagnosistype (required)
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


