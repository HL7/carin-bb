Profile: CARINBBCoverage
Parent: Coverage
Id: CARIN-BB-Coverage
Title: "CARIN BB Coverage"
Description: "CARIN Blue Button Coverage Profile."
* meta.lastUpdated 1..1
* meta.profile 1..* MS
* identifier MS 
* status MS
* subscriber 0..1 
* subscriber only Reference(CARINBBPatient)
* subscriberId 1..1 MS
* beneficiary 1..1 MS
* beneficiary only Reference(CARINBBPatient) 
* relationship 1..1
* payor 1..1 MS   // was 1..* in Balloted STU
* payor only Reference (CARINBBOrganization) 
* class MS 
* class.name MS 
* class ^slicing.discriminator.type = #value
* class ^slicing.discriminator.path = "type.coding.code"
* class ^slicing.rules = #open
* class ^slicing.ordered = false   // can be omitted, since false is the default
* class ^slicing.description = "Slice based on value pattern"
* class contains 
   Group 1..1 MS and
   Plan 1..1 MS
* class[Group].type.coding.code = #group
* class[Plan].type.coding.code = #plan
 

Profile: CARINBBExplanationOfBenefit
Parent: ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit
Title: "CARIN BB Explanation Of Benefit"
Description: "Abstract parent profile that includes constraints that are common to the four specific ExplanationOfBenefit (EOB) profiles defined in this Implementation Guide.
All EOB instances should be from one of the four non-abstract EOB profiles defined in this Implementation Guide:  Inpatient, Outpatient, Pharmacy, and Professional/NonClinician"
* obeys EOB-insurance-focal 
* meta.lastUpdated 1..1
* meta.profile 1..* MS
* ^abstract = true 
* identifier 1..* 
* identifier.type 1..1
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.ordered = false   // cannot be omitted, since false is the default
* identifier ^slicing.description = "Slice based on value pattern"
* identifier contains 
   claimnumber 1..1 
* identifier[claimnumber].value 1..1
* identifier[claimnumber].type = #cn 
* identifier[claimnumber] ^short = "Claim Number"* type 1..1
* type from ClaimTypeVS (extensible)
* claim MS
* use = #claim 
* patient 1..1 
* adjudication MS 
* patient only Reference (CARINBBPatient)
* billablePeriod 0..1 MS 
* insurer 1..1
* insurer only Reference(CARINBBOrganization)
* provider 1..1 
* related 0..* MS
* related.relationship 1..1
* related.relationship from RelatedClaimVS (extensible)
* payee 0..1 MS
* payee.type 1..1
* payee.party 1..1
* payee.party only Reference(CARINBBPractitionerRole | CARINBBPatient)
* careTeam 0..* MS 
* careTeam.provider 1..1
* careTeam.responsible 0..1 MS 
* careTeam.role 1..1 
* careTeam.role from CareTeamRoleVS (extensible)
* supportingInfo 0..* MS
* supportingInfo.category 1..1
* supportingInfo.category from InformationCategoryVS
* supportingInfo.code 0..1 MS 
* supportingInfo.timing[x] 0..1 MS 
* supportingInfo.value[x] 0..1 MS 
* procedure 0..* MS 
* procedure.type 0..* MS 
* procedure.date 0..1 MS 
* procedure.procedure[x] 1..1 
* procedure.procedure[x] only CodeableConcept   
* insurance 1..2
* insurance ^slicing.discriminator.type = #pattern
* insurance.coverage 1..1
* insurance.focal 1..1 
* insurance.coverage only Reference(CARINBBCoverage)
* insurance ^slicing.discriminator.path = "value:focal"
* insurance ^slicing.rules = #closed
* insurance ^slicing.ordered = false   // can be omitted, since false is the default
* insurance ^slicing.description = "Slice based on value pattern"
* insurance contains 
   PrimaryInsurance 0..1 and
   SecondaryInsurance 0..1
* insurance[PrimaryInsurance].focal = false
* insurance[SecondaryInsurance].focal = true 
* item 0..* MS
* item.adjudication MS 
* item.adjudication.category 1..1 
* item.adjudication.category from ClaimAdjudicationCategoryVS
* total.category from AdjudicationAmountCategoryVS (extensible)
* payment MS 
* payment.adjustmentReason from AdjudicationDenialReasonVS (extensible)
* payment.type from ClaimPaymentStatusCodeVS (required)
* payee.type from ClaimPayeeTypeCodeVS (required)
* supportingInfo.category.coding from ClaimInformationCategoryVS (required)


Profile: CARINBBExplanationOfBenefitInpatientFacility
Parent: CARIN-BB-ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit-Inpatient-Facility
Title: "CARIN BB ExplanationOfBenefit Inpatient Facility"
Description: "The profile is used for Explanation of Benefits (EOBs) based on claims submitted by clinics, hospitals, skilled nursing facilities and other institutions for inpatient services, which may include the use of equipment and supplies, laboratory services, radiology services and other charges. Inpatient claims are submitted for services rendered at a facility as part of an overnight stay. 
The claims data is based on the institutional claim format UB-04, submission standards adopted by the Department of Health and Human Services as form CMS-1450."

* type.coding 1..1
* type.coding.code = #inpatient-facility
* diagnosis 1..*
* diagnosis.type 1..1
* diagnosis.type from DiagnosisTypeFacilityVS (required)
* diagnosis.diagnosis[x] 1..1 
* diagnosis.diagnosis[x] only CodeableConcept 
* diagnosis.diagnosis[x] from ICD10CMVS (required)
* diagnosis.onAdmission 0..1 MS
* diagnosis.onAdmission from NUBCPresentOnAdmissionVS (required)
* procedure.procedure[x] from ICD10PCSVS (required)
* provider 1..1
* provider only Reference(CARINBBOrganization)
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false   // can be omitted, since false is the default
* supportingInfo ^slicing.description = "Slice based on value pattern"
* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path = "category.coding.code"
* supportingInfo.category 1..1 
* supportingInfo contains 
   billingnetworkcontractingstatus 0..1 MS and
   attendingnetworkcontractingstatus 0..1 MS and
   referringnetworkcontractingstatus 0..1 MS and
   clmrecvddate 0..1 MS and
    typeofbill 0..1 MS and 
   pointoforigin 0..1 MS and 
   admtype 0..1 MS and 
   discharge-status 0..1 MS and 
   ms-drg 0..1 MS
* supportingInfo[billingnetworkcontractingstatus].category.coding.code = ClaimInformationCategoryCS#billingnetworkcontractingstatus 
* supportingInfo[billingnetworkcontractingstatus].code from ProviderNetworkStatusVS  (required)
* supportingInfo[billingnetworkcontractingstatus].code 1..1
* supportingInfo[billingnetworkcontractingstatus] ^short = "Claim performing provider network status"
* supportingInfo[billingnetworkcontractingstatus].value[x] 0..0
* supportingInfo[billingnetworkcontractingstatus].timing[x] 0..0
* supportingInfo[attendingnetworkcontractingstatus].category.coding.code = ClaimInformationCategoryCS#attendingnetworkcontractingstatus
* supportingInfo[attendingnetworkcontractingstatus].code from ProviderNetworkStatusVS  (required)
* supportingInfo[attendingnetworkcontractingstatus].code 1..1
* supportingInfo[attendingnetworkcontractingstatus] ^short = "Claim attending provider network status"
* supportingInfo[attendingnetworkcontractingstatus].value[x] 0..0
* supportingInfo[attendingnetworkcontractingstatus].timing[x] 0..0
* supportingInfo[referringnetworkcontractingstatus].category.coding.code = ClaimInformationCategoryCS#referringnetworkcontractingstatus
* supportingInfo[referringnetworkcontractingstatus].code from ProviderNetworkStatusVS  (required)
* supportingInfo[referringnetworkcontractingstatus].code 1..1
* supportingInfo[referringnetworkcontractingstatus] ^short = "Claim attending provider network status"
* supportingInfo[referringnetworkcontractingstatus].value[x] 0..0
* supportingInfo[referringnetworkcontractingstatus].timing[x] 0..0
* supportingInfo[clmrecvddate].category.coding.code = #clmrecvddate
* supportingInfo[clmrecvddate] ^short = "Claim Received Date"
* supportingInfo[clmrecvddate].timing[x] only date 
* supportingInfo[clmrecvddate].timing[x] 1..1
* supportingInfo[clmrecvddate].value[x] 0..0
* supportingInfo[typeofbill].category.coding.code = ClaimInformationCategoryCS#typeofbill
* supportingInfo[typeofbill] ^short = "Type of Bill"
* supportingInfo[typeofbill].code from NUBCTypeOfBillVS (required)
* supportingInfo[typeofbill].value[x] 0..0
* supportingInfo[typeofbill].timing[x] 0..0
* supportingInfo[pointoforigin].category.coding.code = #admsrc
* supportingInfo[pointoforigin].code from NUBCPointOfOriginVS (required)
* supportingInfo[pointoforigin] ^short = "Claim Point of Origin for Admission or Visit"
* supportingInfo[pointoforigin].value[x] 0..0
* supportingInfo[pointoforigin].timing[x] 0..0
* supportingInfo[admtype].category.coding.code = #admtype
* supportingInfo[admtype].code from NUBCPriorityOfAdmissionnVS  (required)
* supportingInfo[admtype] ^short = "Claim Priority (Type) of Admission or Visit "
* supportingInfo[admtype].value[x] 0..0
* supportingInfo[admtype].timing[x] 0..0
* supportingInfo[discharge-status].category.coding.code = #discharge-status
* supportingInfo[discharge-status].code from NUBCPatientDischargeStatusVS   (required)
* supportingInfo[discharge-status].value[x] 0..0
* supportingInfo[discharge-status].timing[x] 0..0
* supportingInfo[discharge-status] ^short = "Discharge Status"
* supportingInfo[ms-drg].category.coding.code = #ms-drg
* supportingInfo[ms-drg].code from MSDRGVS  (required)
* supportingInfo[ms-drg] ^short = "Claim diagnosis related group (DRG), including the code system, the DRG version and the code value"
* supportingInfo[ms-drg].value[x] 0..0
* supportingInfo[ms-drg].timing[x] 0..0

* item.revenue from NUBCRevenueCodeVS (required)
* item.modifier from CPTHCPCSModifierCodeVS (required)
* item.productOrService from CPTHCPCSProcedureCodeVS (required)
* item.adjudication ^slicing.rules = #closed
* item.adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* item.adjudication ^slicing.description = "Slice based on value pattern"
* item.adjudication ^slicing.discriminator.type = #value
* item.adjudication ^slicing.discriminator.path = "category.coding.code"
* item.adjudication contains
   adjudicationamounttype 0..* MS and
   denialreason 0..1 MS and
   allowedunits 0..1 MS
* item.adjudication[allowedunits] ^short = "Allowed number of units"
* item.adjudication[allowedunits].category.coding.code = #allowedunits
* item.adjudication[allowedunits].value only decimal
* item.adjudication[allowedunits].reason 0..0
* item.adjudication[allowedunits].amount 0..0
* item.adjudication[denialreason] ^short = "Denial Reason"
* item.adjudication[denialreason].category.coding.code = #denialreason 
* item.adjudication[denialreason].reason from AdjudicationDenialReasonVS
* item.adjudication[denialreason].reason 1..1
* item.adjudication[denialreason].amount 0..0
* item.adjudication[denialreason].value 0..0
* item.adjudication[adjudicationamounttype].category from AdjustmentAmountCategoryVS
* item.adjudication[adjudicationamounttype] ^short = "Amounts"
* item.adjudication[adjudicationamounttype].reason 0..0
* item.adjudication[adjudicationamounttype].amount 1..1
* item.adjudication[adjudicationamounttype].value 0..0
* adjudication ^slicing.rules = #closed
* adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* adjudication ^slicing.description = "Slice based on value pattern"
* adjudication ^slicing.discriminator.type = #value
* adjudication ^slicing.discriminator.path = "category.coding.code"
* adjudication.category 1..1
* adjudication.category from ClaimAdjudicationCategoryVS
* adjudication contains
   adjudicationamounttype 0..* MS and
   denialreason 0..1 MS and
   inoutnetwork 1..1 MS
* adjudication[inoutnetwork] ^short = "Benefit Payment Status"
* adjudication[inoutnetwork].category.coding.code = #inoutnetwork
* adjudication[inoutnetwork].category from BenefitPaymentStatusCategoryVS (required)
* adjudication[denialreason] ^short = "Denial Reason"
* adjudication[denialreason].category.coding.code = #denialreason 
* adjudication[denialreason].reason from AdjudicationDenialReasonVS
* adjudication[denialreason].reason 1..1
* adjudication[denialreason].amount 0..0
* adjudication[denialreason].value 0..0
* adjudication[adjudicationamounttype].category from AdjustmentAmountCategoryVS
* adjudication[adjudicationamounttype] ^short = "Amounts"
* adjudication[adjudicationamounttype].reason 0..0
* adjudication[adjudicationamounttype].amount 1..1
* adjudication[adjudicationamounttype].value 0..0
* careTeam.role from PayerInpatientFacilityProviderRoleVSProviderRoleVS (required)
* payment.type from  BenefitPaymentStatusVS (required)


Profile: CARINBBExplanationOfBenefitOutpatientFacility
Parent: CARIN-BB-ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit-Outpatient-Facility
Title: "CARIN BB ExplanationOfBenefit Outpatient Facility"
Description: "This profile is used for Explanation of Benefits (EOBs) based on claims submitted by clinics, hospitals, skilled nursing facilities and other institutions for outpatient services, which may include including the use of equipment and supplies, laboratory services, radiology services and other charges. Outpatient claims are submitted for services rendered at a facility that are not part of an overnight stay. 
The claims data is based on the institutional claim form UB-04, submission standards adopted by the Department of Health and Human Services as form CMS-1450."
* type.coding.code = #outpatient-facility
* diagnosis 1..*
* diagnosis.diagnosis[x] from ICD10CMVS (required)
* provider only Reference(CARINBBOrganization)
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false   // can be omitted, since false is the default
* supportingInfo ^slicing.description = "Slice based on value pattern"
* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path = "category.coding.code"
* supportingInfo contains 
   billingnetworkcontractingstatus 0..1 MS and
   referringnetworkcontractingstatus 0..1 MS and
   clmrecvddate 0..1 MS and
   typeofbill 0..1 MS and 
   pointoforigin 0..1 MS and 
   admtype 0..1 MS and 
   discharge-status 0..1 MS 
* supportingInfo[billingnetworkcontractingstatus].category.coding.code = ClaimInformationCategoryCS#billingnetworkcontractingstatus 
* supportingInfo[billingnetworkcontractingstatus].code from ProviderNetworkStatusVS  (required)
* supportingInfo[billingnetworkcontractingstatus].code 1..1
* supportingInfo[billingnetworkcontractingstatus] ^short = "Claim performing provider network status"
* supportingInfo[billingnetworkcontractingstatus].value[x] 0..0
* supportingInfo[billingnetworkcontractingstatus].timing[x] 0..0
* supportingInfo[referringnetworkcontractingstatus].category.coding.code = ClaimInformationCategoryCS#referringnetworkcontractingstatus
* supportingInfo[referringnetworkcontractingstatus].code from ProviderNetworkStatusVS  (required)
* supportingInfo[referringnetworkcontractingstatus].code 1..1
* supportingInfo[referringnetworkcontractingstatus] ^short = "Claim attending provider network status"
* supportingInfo[referringnetworkcontractingstatus].value[x] 0..0
* supportingInfo[referringnetworkcontractingstatus].timing[x] 0..0
* supportingInfo[clmrecvddate].category.coding.code = #clmrecvddate
* supportingInfo[clmrecvddate] ^short = "Claim Received Date"
* supportingInfo[clmrecvddate].timing[x] only date 
* supportingInfo[clmrecvddate].timing[x] 1..1
* supportingInfo[clmrecvddate].value[x] 0..0
* supportingInfo[typeofbill].category.coding.code = ClaimInformationCategoryCS#typeofbill
* supportingInfo[typeofbill] ^short = "Type of Bill"
* supportingInfo[typeofbill].code from NUBCTypeOfBillVS (required)
* supportingInfo[typeofbill].value[x] 0..0
* supportingInfo[typeofbill].timing[x] 0..0
* supportingInfo[pointoforigin].category.coding.code = #admsrc
* supportingInfo[pointoforigin].code from NUBCPointOfOriginVS (required)
* supportingInfo[pointoforigin] ^short = "Claim Point of Origin for Admission or Visit"
* supportingInfo[pointoforigin].value[x] 0..0
* supportingInfo[pointoforigin].timing[x] 0..0
* supportingInfo[admtype].category.coding.code = #admtype
* supportingInfo[admtype].code from NUBCPriorityOfAdmissionnVS  (required)
* supportingInfo[admtype] ^short = "Claim Priority (Type) of Admission or Visit "
* supportingInfo[admtype].value[x] 0..0
* supportingInfo[admtype].timing[x] 0..0
* supportingInfo[discharge-status].category.coding.code = #discharge-status
* supportingInfo[discharge-status] ^short = "Discharge Status"
* supportingInfo[discharge-status].code from NUBCPatientDischargeStatusVS   (required)
* supportingInfo[discharge-status].value[x] 0..0
* supportingInfo[discharge-status].timing[x] 0..0
* item.revenue from NUBCRevenueCodeVS (required)
* item.modifier from CPTHCPCSModifierCodeVS (required)
* item.productOrService from CPTHCPCSProcedureCodeVS (required)
* item.adjudication ^slicing.rules = #closed
* item.adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* item.adjudication ^slicing.description = "Slice based on value pattern"
* item.adjudication ^slicing.discriminator.type = #value
* item.adjudication ^slicing.discriminator.path = "category.coding.code"
* item.adjudication contains
   adjudicationamounttype 0..* MS and
   denialreason 0..1 MS and
   allowedunits 0..1 MS
* item.adjudication[allowedunits] ^short = "Allowed number of units"
* item.adjudication[allowedunits].category.coding.code = #allowedunits
* item.adjudication[allowedunits].value only decimal
* item.adjudication[allowedunits].reason 0..0
* item.adjudication[allowedunits].amount 0..0
* item.adjudication[denialreason] ^short = "Denial Reason"
* item.adjudication[denialreason].category.coding.code = #denialreason 
* item.adjudication[denialreason].reason from AdjudicationDenialReasonVS
* item.adjudication[denialreason].reason 1..1
* item.adjudication[denialreason].amount 0..0
* item.adjudication[denialreason].value 0..0
* item.adjudication[adjudicationamounttype].category from AdjustmentAmountCategoryVS
* item.adjudication[adjudicationamounttype] ^short = "Amounts"
* item.adjudication[adjudicationamounttype].reason 0..0
* item.adjudication[adjudicationamounttype].amount 1..1
* item.adjudication[adjudicationamounttype].value 0..0
* adjudication ^slicing.rules = #closed
* adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* adjudication ^slicing.description = "Slice based on value pattern"
* adjudication ^slicing.discriminator.type = #value
* adjudication ^slicing.discriminator.path = "category.coding.code"
* adjudication.category 1..1
* adjudication.category from ClaimAdjudicationCategoryVS
* adjudication contains
   adjudicationamounttype 0..* MS and
   denialreason 0..1 MS and
   inoutnetwork 1..1 MS
* adjudication[inoutnetwork] ^short = "Benefit Payment Status"
* adjudication[inoutnetwork].category.coding.code = #inoutnetwork
* adjudication[inoutnetwork].category from BenefitPaymentStatusCategoryVS (required)
* adjudication[denialreason] ^short = "Denial Reason"
* adjudication[denialreason].category.coding.code = #denialreason 
* adjudication[denialreason].reason from AdjudicationDenialReasonVS
* adjudication[denialreason].reason 1..1
* adjudication[denialreason].amount 0..0
* adjudication[denialreason].value 0..0
* adjudication[adjudicationamounttype].category from AdjustmentAmountCategoryVS
* adjudication[adjudicationamounttype] ^short = "Amounts"
* adjudication[adjudicationamounttype].reason 0..0
* adjudication[adjudicationamounttype].amount 1..1
* adjudication[adjudicationamounttype].value 0..0
* careTeam.role from PayerOutpatientFacilityProviderRoleVS (required)
* diagnosis 1..*
* diagnosis.type 1..1
* diagnosis.type from DiagnosisTypeFacilityVS (required)
* diagnosis.diagnosis[x] 1..1 
* diagnosis.diagnosis[x] only CodeableConcept 
* diagnosis.diagnosis[x] from ICD10CMVS (required)
* payment.type from  BenefitPaymentStatusVS (required)

Profile: CARINBBExplanationOfBenefitPharmacy
Parent: CARIN-BB-ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit-Pharmacy
Title: "CARIN BB ExplanationOfBenefit Pharmacy"
Description: "This profile is used for Explanation of Benefits (EOBs) based on claims submitted by retail pharmacies. 
The claims data is based on submission standards adopted by the Department of Health and Human Services defined by NCPDP (National Council for Prescription Drug Program)"
* type.coding.code = #pharmacy 
* provider only Reference(CARINBBOrganization | CARINBBPractitionerRole | CARINBBPractitioner)
* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path = "category.coding.code"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false   // can be omitted, since false is the default
* supportingInfo ^slicing.description = "Slice based on value pattern"
* supportingInfo contains 
   billingnetworkcontractingstatus 0..1 MS and
   brandgenericcode 0..1 MS and
   rxoriginCode 0..1 MS and
   refillNum 0..1 MS and
   dawcode 0..1 MS and
   clmrecvddate 0..1 MS and
   dayssupply 0..1 MS and
   dispensingstatus 0..1 MS 
* supportingInfo[billingnetworkcontractingstatus].category.coding.code = #billingnetworkcontractingstatus
* supportingInfo[billingnetworkcontractingstatus] ^short = "Billing Network Contracting Status"
* supportingInfo[billingnetworkcontractingstatus].code from ProviderNetworkStatusVS (required) 
* supportingInfo[billingnetworkcontractingstatus].code 1..1
* supportingInfo[brandgenericcode].category.coding.code = #brandGenericCode   
* supportingInfo[brandgenericcode] ^short = "BrandGeneric"
* supportingInfo[brandgenericcode].code from NCPDPBrandGenericCodeVS (required)
* supportingInfo[rxoriginCode].category.coding.code = #rxOriginCode   
* supportingInfo[rxoriginCode] ^short = "RxOrigin"
* supportingInfo[rxoriginCode].code from NCPDPPrescriptionOriginCodeVS (required)
* supportingInfo[refillNum].category.coding.code = #refillnum
* supportingInfo[refillNum] ^short = "RefillNum"
* supportingInfo[dawcode].category.coding.code = #dawCode       
* supportingInfo[dawcode] ^short = "Dispense As Written" 
* supportingInfo[dawcode].code from NCPDPDispensedAsWrittenVS (required)
* supportingInfo[clmrecvddate].category.coding.code = #clmrecvddate
* supportingInfo[clmrecvddate] ^short = "Claim Received Date"
* supportingInfo[dayssupply].category.coding.code = #daysSupply
* supportingInfo[dayssupply] ^short = "Days Supply"
* supportingInfo[dispensingstatus].category.coding.code = #dispensingstatus
//* supportingInfo[dispensingstatus].code from --- shouldn't this be bound to a VS
* supportingInfo[dispensingstatus] ^short = "Dispensing Status"
* item.productOrService from FDANationalDrugCodeVS (required)
* item.detail.productOrService  from FDANationalDrugCodeVS (required)
* item.revenue 0..0
* item.detail MS
* item.detail.quantity MS 
* careTeam.role from PayerPharmacyProviderRoleVS (required)
* item.adjudication ^slicing.rules = #closed
* item.adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* item.adjudication ^slicing.description = "Slice based on value pattern"
* item.adjudication ^slicing.discriminator.type = #value
* item.adjudication ^slicing.discriminator.path = "category.coding.code"
* item.adjudication contains
   adjudicationamounttype 0..* MS and
   denialreason 0..1 MS and
   inoutnetwork 0..1 MS
* item.adjudication[allowedunits] ^short = "Allowed number of units"
* item.adjudication[allowedunits].category.coding.code = #allowedunits
* item.adjudication[allowedunits].value only decimal
* item.adjudication[allowedunits].reason 0..0
* item.adjudication[allowedunits].amount 0..0
* item.adjudication[denialreason] ^short = "Denial Reason"
* item.adjudication[denialreason].category.coding.code = #denialreason 
* item.adjudication[denialreason].reason from AdjudicationDenialReasonVS
* item.adjudication[denialreason].reason 1..1
* item.adjudication[denialreason].amount 0..0
* item.adjudication[denialreason].value 0..0
* item.adjudication[adjudicationamounttype].category from AdjustmentAmountCategoryVS
* item.adjudication[adjudicationamounttype] ^short = "Amounts"
* item.adjudication[adjudicationamounttype].reason 0..0
* item.adjudication[adjudicationamounttype].amount 1..1
* item.adjudication[adjudicationamounttype].value 0..0
* adjudication ^slicing.rules = #closed
* adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* adjudication ^slicing.description = "Slice based on value pattern"
* adjudication ^slicing.discriminator.type = #value
* adjudication ^slicing.discriminator.path = "category.coding.code"
* adjudication.category 1..1
* adjudication.category from ClaimAdjudicationCategoryVS
* adjudication contains
   adjudicationamounttype 0..* MS and
   inoutnetwork 1..1 MS
* adjudication[inoutnetwork] ^short = "Benefit Payment Status"
* adjudication[inoutnetwork].category.coding.code = #inoutnetwork
* adjudication[inoutnetwork].category from BenefitPaymentStatusCategoryVS (required)
* adjudication[adjudicationamounttype].category from AdjustmentAmountCategoryVS
* adjudication[adjudicationamounttype] ^short = "Amounts"
* adjudication[adjudicationamounttype].reason 0..0
* adjudication[adjudicationamounttype].amount 1..1
* adjudication[adjudicationamounttype].value 0..0

Profile: CARINBBExplanationOfBenefitProfessionalNonClinician
Parent: CARIN-BB-ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit-Professional-NonClinician
Title: "CARIN BB ExplanationOfBenefit Professional NonClinician"
Description: "This profile is used for Explanation of Benefits (EOBs) based on claims submitted by physicians, suppliers and other non-institutional providers for professional services. These services may be rendered in inpatient or outpatient, including office locations. 
The claims data is based on the professional claim form 1500, submission standards adopted by the Department of Health and Human Services as form CMS-1500."
* type.coding.code = #professional-nonclinician 
* provider only Reference(CARINBBOrganization | CARINBBPractitionerRole | CARINBBPractitioner)
* supportingInfo.category.coding.system = "http://hl7.org/fhir/us/carin/CodeSystem/carin-bb-claiminformationcategory" // ClaimInformationCategoryCS 
* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path = "category.coding.code"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false   // can be omitted, since false is the default
* supportingInfo ^slicing.description = "Slice based on value pattern"
* supportingInfo contains 
   billingnetworkcontractingstatus 0..1 MS and
   referringnetworkcontractingstatus 0..1 MS and
   performingnetworkcontractingstatus 0..1 MS and
   sitenetworkcontractingstatus 0..1 MS and
   clmrecvddate 0..1 MS 
* supportingInfo[billingnetworkcontractingstatus].category.coding.code = #billingnetworkcontractingstatus 
* supportingInfo[billingnetworkcontractingstatus].code from ProviderNetworkStatusVS  (required)
* supportingInfo[billingnetworkcontractingstatus].code 1..1
* supportingInfo[billingnetworkcontractingstatus].category.coding 1..1
* supportingInfo[billingnetworkcontractingstatus].category.coding.system 1..1
* supportingInfo[billingnetworkcontractingstatus].category.coding.code 1..1
* supportingInfo[referringnetworkcontractingstatus].category.coding.code = #referringnetworkcontractingstatus
* supportingInfo[referringnetworkcontractingstatus].code from ProviderNetworkStatusVS  (required)
* supportingInfo[referringnetworkcontractingstatus].code 1..1
* supportingInfo[performingnetworkcontractingstatus].category.coding.code = #performingnetworkcontractingstatus
* supportingInfo[performingnetworkcontractingstatus].code from ProviderNetworkStatusVS  (required)
* supportingInfo[performingnetworkcontractingstatus].code 1..1
* supportingInfo[sitenetworkcontractingstatus].category.coding.code = #sitenetworkcontractingstatus
* supportingInfo[sitenetworkcontractingstatus].code from ProviderNetworkStatusVS  (required)
* supportingInfo[clmrecvddate].category.coding.code = #clmrecvddate
* supportingInfo[clmrecvddate].timing[x] only date 
* supportingInfo[clmrecvddate].timing[x] 1..1
* careTeam.role from PayerProfessionalAndNonClinicianProviderRoleVS (required)
* diagnosis 1..*
* diagnosis.type 1..1
* diagnosis.type from DiagnosisTypeProfessionalNonClinicianVS (required)
* diagnosis.diagnosis[x] 1..1 
* diagnosis.diagnosis[x] only CodeableConcept 
* diagnosis.diagnosis[x] from ICD10CMVS (required)
* item.revenue 0..0
* item.modifier from CPTHCPCSModifierCodeVS (required)
* item.productOrService from CPTHCPCSProcedureCodeVS (required)
* item.adjudication ^slicing.rules = #closed
* item.adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* item.adjudication ^slicing.description = "Slice based on value pattern"
* item.adjudication ^slicing.discriminator.type = #value
* item.adjudication ^slicing.discriminator.path = "category.coding.code"
* item.adjudication contains
   adjudicationamounttype 0..* and
   denialreason 0..1 and
   inoutnetwork 1..1
* item.adjudication[denialreason].category.coding.code = #denialreason 
* item.adjudication[denialreason].reason from AdjudicationDenialReasonVS
* item.adjudication[denialreason].reason 1..1
* item.adjudication[denialreason] ^short = "Denial Reason"
* item.adjudication[denialreason].category.coding.code = #denialreason 
* item.adjudication[denialreason].reason from AdjudicationDenialReasonVS
* item.adjudication[denialreason].reason 1..1
* item.adjudication[denialreason].amount 0..0
* item.adjudication[denialreason].value 0..0
* item.adjudication[adjudicationamounttype].category from ClaimAdjudicationCategoryVS (required)
* item.adjudication[adjudicationamounttype] ^short = "Amounts"
* item.adjudication[adjudicationamounttype].reason 0..0
* item.adjudication[adjudicationamounttype].amount 1..1
* item.adjudication[adjudicationamounttype].value 0..0
* item.adjudication[inoutnetwork] ^short = "Benefit Payment Status"
* item.adjudication[inoutnetwork].category.coding.code = #inoutnetwork
* item.adjudication[inoutnetwork].category from BenefitPaymentStatusCategoryVS (required)
// Do all references to Organization in this profile need to target CARINBBOrganization?
Profile: CARINBBOrganization
Parent:  $USCoreOrganization
Id:  CARIN-BB-Organization
Title: "CARIN BB Organization"
Description: "CARIN Blue Button Organization Profile."
* meta.lastUpdated 1..1
* meta.profile 1..* MS
* identifier.type 1..1
* identifier contains 
   TIN 0..* MS and
   payerid 0..* MS
* identifier.type from IdentifierTypeVS (extensible)
* identifier[NPI].type.coding.code = #NPI
* identifier[NPI].type.coding 1..1
* identifier[NPI].type.coding.code 1..1 
* identifier[TIN].type.coding.code = #TAX
* identifier[TIN].type.coding 1..1
* identifier[TIN].type.coding.code 1..1 
* identifier[TIN].system = "urn:oid:2.16.840.1.113883.4.4"
* identifier[payerid].type.coding.code = #PAYERID
* identifier[payerid].type.coding 1..1
* identifier[payerid].type.coding.code 1..1 
//* identifier[payerid].system = <what>

Profile: CARINBBPatient
Parent: $USCorePatient
Id: CARIN-BB-Patient
Title: "CARIN BB Patient"
Description: "CARIN Blue Button Patient Profile."
* meta.lastUpdated 1..1
* meta.profile 1..* MS
* identifier.type from IdentifierTypeVS (extensible)
* identifier ^slicing.discriminator.type = #value 
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false   // can be omitted, since false is the default
* identifier ^slicing.description = "Slice based on  pattern"
* identifier contains 
   memberid 1..* MS and
   medrecnum 0..* MS and
   uniquememberid 0..* MS and
   patacctnum 0..* MS 
* identifier[memberid].type.coding.code = #MB
* identifier[memberid] ^short = "Member ID"
* identifier[memberid].type.coding 1..*
* identifier[memberid].type.coding.code 1..1 
* identifier[medrecnum].type.coding.code = #MR
* identifier[medrecnum] ^short = "Medical Record Number"
* identifier[medrecnum].type.coding 1..*
* identifier[medrecnum].type.coding.code 1..1 
* identifier[patacctnum].type.coding.code = #PT
* identifier[patacctnum] ^short = "Patient Account Number"
* identifier[patacctnum].type.coding 1..*
* identifier[patacctnum].type.coding.code 1..1 
* identifier[uniquememberid] ^short = "Unique Member ID"
* identifier[uniquememberid].type.coding 1..*
* identifier[uniquememberid].type.coding.code 1..1 
* identifier[uniquememberid].type.coding.code = #UM 



Profile: CARINBBPractitionerRole
Parent: $USCorePractitionerRole
Id: CARIN-BB-PractitionerRole
Title: "CARIN BB PractitionerRole"
Description: "CARIN Blue Button PractitionerRole Profile."
* meta.lastUpdated 1..1
* meta.profile 1..* MS
* organization only Reference(CARINBBOrganization)
* practitioner only Reference(CARINBBPractitioner)
* location only Reference (CARINBBLocation)
// * code   - same binding as Plan-Net
// * specialty  - same binding as Plan-Net

// What needs to change?

Profile: CARINBBPractitioner
Parent: $USCorePractitioner
Id: CARIN-BB-Practitioner
Title: "CARIN BB Practitioner"
Description: "CARIN Blue Button Practitioner Profile."
* meta.lastUpdated 1..1
* meta.profile 1..* MS

// WHat needs to change?
Profile: CARINBBLocation
Parent: $USCoreLocation
Id: CARIN-BB-Location
Title: "CARIN BB Location"
Description: "CARIN Blue Button Location Profile."
* meta.lastUpdated 1..1
* meta.profile 1..* MS

Invariant:  EOB-insurance-focal  
Description: "EOB.insurance:  if focal is true, EOB.insurance.coverage.payor must equal EOB.insurer"
Expression: "insurance.select (focal = true).count() < 2"
Severity:   #error
