Profile: CARINBBCoverage
Parent: Coverage
Id: CARIN-BB-Coverage
Title: "CARIN BB Coverage"
Description: "CARIN Blue Button Coverage Profile."
* meta.lastUpdated 1..1 MS
* meta.profile 1..* MS
* identifier MS 
* status MS
* subscriber 0..1 
* subscriber only Reference(CARINBBPatient)
* subscriberId 1..1 MS
* beneficiary 1..1 MS
* beneficiary only Reference(CARINBBPatient) 
* relationship 1..1 MS
* relationship from $SubscriberRelationishipVS (required)
* payor 1..1 MS   // was 1..* in Balloted STU
* payor only Reference (CARINBBOrganization) 
* class MS 
* class.name MS 
* class ^slicing.discriminator.type = #pattern
* class ^slicing.discriminator.path = "$this"
* class ^slicing.rules = #open
* class ^slicing.ordered = false   // can be omitted, since false is the default
* class ^slicing.description = "Slice based on value pattern"
* class contains 
   Group 1..1  MS and
   Plan 1..1 MS
* class[Group].type.coding.code = CoverageClassCS#group
* class[Plan].type.coding.code = CoverageClassCS#plan
 

Profile: CARINBBExplanationOfBenefit
Parent: ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit
Title: "CARIN BB Explanation Of Benefit"
Description: "Abstract parent profile that includes constraints that are common to the four specific ExplanationOfBenefit (EOB) profiles defined in this Implementation Guide.
All EOB instances should be from one of the four non-abstract EOB profiles defined in this Implementation Guide:  Inpatient, Outpatient, Pharmacy, and Professional/NonClinician"
* obeys EOB-insurance-focal 
* meta.lastUpdated 1..1 MS
* meta.profile 1..* MS
* ^abstract = true 
* identifier 1..* 
* identifier.type 1..1 MS
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #pattern 
* identifier ^slicing.ordered = false   // cannot be omitted, since false is the default
* identifier ^slicing.description = "Slice based on $this pattern"
* identifier contains 
   claimnumber 1..1 MS
* identifier[claimnumber].value 1..1 MS
* identifier[claimnumber].type = IdentifierTypeCS#cn 
* identifier[claimnumber] ^short = "Claim Number"
* type 1..1 MS
* type from $HL7ClaimTypeVS (required)
//   * claim MS   - igor sez we discussed removing MS
* use = #claim 
* patient 1..1 MS
* adjudication MS 
* patient only Reference (CARINBBPatient)
* billablePeriod 0..1 MS 
* insurer 1..1 MS
* insurer only Reference(CARINBBOrganization)
* provider 1..1 MS
* related 0..* MS
* related.relationship 1..1 MS
* diagnosis.diagnosis[x] only CodeableConcept 
//* related.relationship from RelatedClaimVS (extensible)
* payee 0..1 MS
* payee.type 1..1 MS
* payee.party 1..1 MS
* payee.party only Reference(CARINBBPractitionerRole | CARINBBPatient)
* careTeam 0..* MS 
* careTeam.provider 1..1 MS
* careTeam.responsible 0..1 MS 
* careTeam.role 1..1 MS
//* careTeam.role from PayerProviderRoleVS (required)
* supportingInfo 0..* MS
* supportingInfo.category 1..1 MS
* supportingInfo.category from ClaimInformationCategoryVS
* supportingInfo.code 0..1 MS 
* supportingInfo.timing[x] 0..1 MS 
* supportingInfo.value[x] 0..1 MS 
* procedure 0..* MS 
* procedure.type 0..* MS 
* procedure.date 0..1 MS 
* procedure.procedure[x] only CodeableConcept 
* procedure.procedure[x] 1..1 MS
* procedure.procedureCodeableConcept from ICD10PCSVS (required) 
* insurance 1..* MS
* insurance.coverage 1..1 MS
* insurance.focal 1..1  MS
* insurance.coverage only Reference(CARINBBCoverage)
/*   Eliminate slicing on focal.   Constraint ensures that only one element with focal = true
* insurance ^slicing.discriminator.type = #pattern
* insurance ^slicing.discriminator.path = "value:focal"
* insurance ^slicing.rules = #closed
* insurance ^slicing.ordered = false   // can be omitted, since false is the default
* insurance ^slicing.description = "Slice based on value pattern"
* insurance contains 
   PrimaryInsurance 0..1 and
   SecondaryInsurance 0..1
* insurance[PrimaryInsurance].focal = false
* insurance[SecondaryInsurance].focal = true 
*/
* adjudication.category from ClaimAdjudicationCategoryVS (required)   // per Igor
* item 0..* MS
* item.adjudication MS 
* item.adjudication.category 1..1 MS
* item.adjudication.category from ClaimAdjudicationCategoryVS (required)  // Per Igor
* total.category from PayerAdjudicationAmountCategoryVS (extensible)    // IS THIS RIGHT?
* payment MS 
* payment.adjustmentReason from AdjudicationDenialReasonVS (extensible)
* payment.type from ClaimPaymentStatusCodeVS (required)
* payee.type from ClaimPayeeTypeCodeVS (required)


Profile: CARINBBExplanationOfBenefitInpatientFacility
Parent: CARIN-BB-ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit-Inpatient-Facility
Title: "CARIN BB ExplanationOfBenefit Inpatient Facility"
Description: "The profile is used for Explanation of Benefits (EOBs) based on claims submitted by clinics, hospitals, skilled nursing facilities and other institutions for inpatient services, which may include the use of equipment and supplies, laboratory services, radiology services and other charges. Inpatient claims are submitted for services rendered at a facility as part of an overnight stay. 
The claims data is based on the institutional claim format UB-04, submission standards adopted by the Department of Health and Human Services as form CMS-1450."

* type.coding 1..1 MS
* type.coding.code = #institutional
* diagnosis 1..* MS
* diagnosis.type 1..1 MS
* diagnosis.type from PayerInpatientfacilitydiagnosistype (required)
* diagnosis.diagnosis[x] 1..1 MS
* diagnosis.diagnosisCodeableConcept from ICD10CMVS (required)
* diagnosis.onAdmission 0..1 MS
* diagnosis.onAdmission from NUBCPresentOnAdmissionVS (required)
* provider 1..1
* provider only Reference(CARINBBOrganization)
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false   // can be omitted, since false is the default
* supportingInfo ^slicing.description = "Slice based on $this pattern"
* supportingInfo ^slicing.discriminator.type = #pattern
// * supportingInfo ^slicing.discriminator.path = "category.coding.code"
* supportingInfo ^slicing.discriminator.path = "$this"
* supportingInfo.category 1..1 MS
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
* supportingInfo[billingnetworkcontractingstatus].code 1..1 MS
* supportingInfo[billingnetworkcontractingstatus] ^short = "Claim performing provider network status"
* supportingInfo[attendingnetworkcontractingstatus].category.coding.code = ClaimInformationCategoryCS#attendingnetworkcontractingstatus
* supportingInfo[attendingnetworkcontractingstatus].code from ProviderNetworkStatusVS  (required)
* supportingInfo[attendingnetworkcontractingstatus].code 1..1 MS
* supportingInfo[attendingnetworkcontractingstatus] ^short = "Claim attending provider network status"
* supportingInfo[referringnetworkcontractingstatus].category.coding.code = ClaimInformationCategoryCS#referringnetworkcontractingstatus
* supportingInfo[referringnetworkcontractingstatus].code from ProviderNetworkStatusVS  (required)
* supportingInfo[referringnetworkcontractingstatus].code 1..1 MS
* supportingInfo[referringnetworkcontractingstatus] ^short = "Claim attending provider network status"
* supportingInfo[clmrecvddate].category.coding.code = ClaimInformationCategoryCS#clmrecvddate
* supportingInfo[clmrecvddate] ^short = "Claim Received Date"
* supportingInfo[clmrecvddate].timing[x] only date 
* supportingInfo[clmrecvddate].timing[x] 1..1 MS
* supportingInfo[typeofbill].category.coding.code = ClaimInformationCategoryCS#typeofbill
* supportingInfo[typeofbill] ^short = "Type of Bill"
* supportingInfo[typeofbill].code from NUBCTypeOfBillVS (required)
* supportingInfo[pointoforigin].category.coding.code = ClaimInformationCategoryCS#admsrc
* supportingInfo[pointoforigin].code from NUBCPointOfOriginVS (required)
* supportingInfo[pointoforigin] ^short = "Claim Point of Origin for Admission or Visit"
* supportingInfo[admtype].category.coding.code = ClaimInformationCategoryCS#admtype
* supportingInfo[admtype].code from NUBCPriorityOfAdmissionnVS  (required)
* supportingInfo[admtype] ^short = "Claim Priority (Type) of Admission or Visit "
* supportingInfo[discharge-status].category.coding.code = ClaimInformationCategoryCS#discharge-status
* supportingInfo[discharge-status].code from NUBCPatientDischargeStatusVS   (required)
* supportingInfo[discharge-status] ^short = "Discharge Status"
* supportingInfo[ms-drg].category.coding.code = ClaimInformationCategoryCS#ms-drg
* supportingInfo[ms-drg].code from MSDRGVS  (required)
* supportingInfo[ms-drg] ^short = "Claim diagnosis related group (DRG), including the code system, the DRG version and the code value"

* item.revenue from NUBCRevenueCodeVS (required)
* item.modifier from CPTHCPCSModifierCodeVS (required)
* item.productOrService from CPTHCPCSProcedureCodeVS (required)
* item.adjudication ^slicing.rules = #closed
* item.adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* item.adjudication ^slicing.description = "Slice based on $this pattern"
* item.adjudication ^slicing.discriminator.type = #pattern 
* item.adjudication ^slicing.discriminator.path = "$this"
* item.adjudication contains
   adjudicationamounttype 0..* MS and
   denialreason 0..1 MS and
   allowedunits 0..1 MS
* item.adjudication[allowedunits] ^short = "Allowed number of units"
* item.adjudication[allowedunits].category.coding.code = ClaimAdjudicationCategoryCS#allowedunits
* item.adjudication[allowedunits].value only decimal
* item.adjudication[denialreason] ^short = "Denial Reason"
* item.adjudication[denialreason].category.coding.code = ClaimAdjudicationCategoryCS#denialreason 
* item.adjudication[denialreason].reason from AdjudicationDenialReasonVS
* item.adjudication[denialreason].reason 1..1
* item.adjudication[adjudicationamounttype].category from AdjudicationPayerValueCodesVS
* item.adjudication[adjudicationamounttype] ^short = "Amounts"
* item.adjudication[adjudicationamounttype].amount 1..1
* adjudication ^slicing.rules = #closed
* adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* adjudication ^slicing.description = "Slice based on $this pattern"
* adjudication ^slicing.discriminator.type = #pattern
* adjudication ^slicing.discriminator.path = "$this"
* adjudication.category 1..1 MS 
* adjudication contains
   adjudicationamounttype 0..* MS and
   denialreason 0..1 MS and
   inoutnetwork 1..1 MS
* adjudication[inoutnetwork] ^short = "Benefit Payment Status"
* adjudication[inoutnetwork].category.coding.code = ClaimAdjudicationCategoryCS#inoutnetwork
* adjudication[inoutnetwork].category from BenefitPaymentStatusVS (required)
* adjudication[denialreason] ^short = "Denial Reason"
* adjudication[denialreason].category.coding.code = ClaimAdjudicationCategoryCS#denialreason 
* adjudication[denialreason].reason from AdjudicationDenialReasonVS
* adjudication[denialreason].reason 1..1
* adjudication[adjudicationamounttype].category from AdjudicationPayerValueCodesVS  (required)
* adjudication[adjudicationamounttype] ^short = "Amounts"
* adjudication[adjudicationamounttype].amount 1..1
* careTeam.role from PayerInpatientFacilityProviderRoleVSProviderRoleVS (required)


Profile: CARINBBExplanationOfBenefitOutpatientFacility
Parent: CARIN-BB-ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit-Outpatient-Facility
Title: "CARIN BB ExplanationOfBenefit Outpatient Facility"
Description: "This profile is used for Explanation of Benefits (EOBs) based on claims submitted by clinics, hospitals, skilled nursing facilities and other institutions for outpatient services, which may include including the use of equipment and supplies, laboratory services, radiology services and other charges. Outpatient claims are submitted for services rendered at a facility that are not part of an overnight stay. 
The claims data is based on the institutional claim form UB-04, submission standards adopted by the Department of Health and Human Services as form CMS-1450."
* type.coding.code = #institutional
* diagnosis 1..*
* diagnosis.diagnosis[x] 1..1 MS
* diagnosis.diagnosisCodeableConcept from ICD10CMVS (required)
* provider only Reference(CARINBBOrganization)
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false   // can be omitted, since false is the default
* supportingInfo ^slicing.description = "Slice based on $this pattern"
* supportingInfo ^slicing.discriminator.type = #pattern
* supportingInfo ^slicing.discriminator.path = "$this"
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
* supportingInfo[referringnetworkcontractingstatus].category.coding.code = ClaimInformationCategoryCS#referringnetworkcontractingstatus
* supportingInfo[referringnetworkcontractingstatus].code from ProviderNetworkStatusVS  (required)
* supportingInfo[referringnetworkcontractingstatus].code 1..1
* supportingInfo[referringnetworkcontractingstatus] ^short = "Claim attending provider network status"
* supportingInfo[clmrecvddate].category.coding.code = ClaimInformationCategoryCS#clmrecvddate
* supportingInfo[clmrecvddate] ^short = "Claim Received Date"
* supportingInfo[clmrecvddate].timing[x] only date 
* supportingInfo[clmrecvddate].timing[x] 1..1
* supportingInfo[typeofbill].category.coding.code = ClaimInformationCategoryCS#typeofbill
* supportingInfo[typeofbill] ^short = "Type of Bill"
* supportingInfo[typeofbill].code from NUBCTypeOfBillVS (required)
* supportingInfo[pointoforigin].category.coding.code = ClaimInformationCategoryCS#admsrc
* supportingInfo[pointoforigin].code from NUBCPointOfOriginVS (required)
* supportingInfo[pointoforigin] ^short = "Claim Point of Origin for Admission or Visit"
* supportingInfo[admtype].category.coding.code = ClaimInformationCategoryCS#admtype
* supportingInfo[admtype].code from NUBCPriorityOfAdmissionnVS  (required)
* supportingInfo[admtype] ^short = "Claim Priority (Type) of Admission or Visit "
* supportingInfo[discharge-status].category.coding.code = ClaimInformationCategoryCS#discharge-status
* supportingInfo[discharge-status] ^short = "Discharge Status"
* supportingInfo[discharge-status].code from NUBCPatientDischargeStatusVS   (required)
* item.revenue from NUBCRevenueCodeVS (required)
* item.modifier from CPTHCPCSModifierCodeVS (required)
* item.productOrService from CPTHCPCSProcedureCodeVS (required)
* item.adjudication ^slicing.rules = #closed
* item.adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* item.adjudication ^slicing.description = "Slice based on $this pattern"
* item.adjudication ^slicing.discriminator.type = #pattern
* item.adjudication ^slicing.discriminator.path = "$this"
* item.adjudication contains
   adjudicationamounttype 0..* MS and
   denialreason 0..1 MS and
   allowedunits 0..1 MS
* item.adjudication[allowedunits] ^short = "Allowed number of units"
* item.adjudication[allowedunits].category.coding.code = ClaimAdjudicationCategoryCS#allowedunits
* item.adjudication[allowedunits].value only decimal
* item.adjudication[denialreason] ^short = "Denial Reason"
* item.adjudication[denialreason].category.coding.code = ClaimAdjudicationCategoryCS#denialreason 
* item.adjudication[denialreason].reason from AdjudicationDenialReasonVS
* item.adjudication[denialreason].reason 1..1 MS
* item.adjudication[adjudicationamounttype].category from AdjudicationPayerValueCodesVS
* item.adjudication[adjudicationamounttype] ^short = "Amounts"
* item.adjudication[adjudicationamounttype].amount 1..1 MS
* adjudication ^slicing.rules = #closed
* adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* adjudication ^slicing.description = "Slice based on $this pattern"
* adjudication ^slicing.discriminator.type = #pattern
* adjudication ^slicing.discriminator.path = "$this"
* adjudication.category 1..1 MS
* adjudication contains
   adjudicationamounttype 0..* MS and
   denialreason 0..1 MS and
   inoutnetwork 1..1 MS
* adjudication[inoutnetwork] ^short = "Benefit Payment Status"
* adjudication[inoutnetwork].category.coding.code = ClaimAdjudicationCategoryCS#inoutnetwork
* adjudication[inoutnetwork].category from BenefitPaymentStatusVS (required)
* adjudication[denialreason] ^short = "Denial Reason"
* adjudication[denialreason].category.coding.code = ClaimAdjudicationCategoryCS#denialreason 
* adjudication[denialreason].reason from AdjudicationDenialReasonVS
* adjudication[denialreason].reason 1..1 MS
* adjudication[adjudicationamounttype].category from AdjudicationPayerValueCodesVS (required)
* adjudication[adjudicationamounttype] ^short = "Amounts"
* adjudication[adjudicationamounttype].amount 1..1 MS
* careTeam.role from PayerOutpatientFacilityProviderRoleVS (required)
* diagnosis 1..*
* diagnosis.type 1..1 MS
* diagnosis.type from PayerOutpatientfacilitydiagnosistype (required)
* diagnosis.diagnosis[x] 1..1 MS
* diagnosis.diagnosisCodeableConcept from ICD10CMVS (required)

Profile: CARINBBExplanationOfBenefitPharmacy
Parent: CARIN-BB-ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit-Pharmacy
Title: "CARIN BB ExplanationOfBenefit Pharmacy"
Description: "This profile is used for Explanation of Benefits (EOBs) based on claims submitted by retail pharmacies. 
The claims data is based on submission standards adopted by the Department of Health and Human Services defined by NCPDP (National Council for Prescription Drug Program)"
* type.coding.code = #pharmacy 
* provider only Reference(CARINBBOrganization | CARINBBPractitionerRole | CARINBBPractitioner)
* supportingInfo ^slicing.discriminator.type = #pattern 
* supportingInfo ^slicing.discriminator.path = "$path"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false   // can be omitted, since false is the default
* supportingInfo ^slicing.description = "Slice based on $this pattern"
* supportingInfo contains 
   billingnetworkcontractingstatus 0..1 MS and
   brandgenericcode 0..1 MS and
   rxoriginCode 0..1 MS and
   refillNum 0..1 MS and
   dawcode 0..1 MS and
   clmrecvddate 0..1 MS and
   dayssupply 0..1 MS and
   dispensingstatus 0..1 MS 
* supportingInfo[billingnetworkcontractingstatus].category.coding.code = ClaimInformationCategoryCS#billingnetworkcontractingstatus
* supportingInfo[billingnetworkcontractingstatus] ^short = "Billing Network Contracting Status"
* supportingInfo[billingnetworkcontractingstatus].code from ProviderNetworkStatusVS (required) 
* supportingInfo[billingnetworkcontractingstatus].code 1..1
* supportingInfo[brandgenericcode].category.coding.code = ClaimInformationCategoryCS#brandGenericCode   
* supportingInfo[brandgenericcode] ^short = "BrandGeneric"
* supportingInfo[brandgenericcode].code from NCPDPBrandGenericCodeVS (required)
* supportingInfo[rxoriginCode].category.coding.code = ClaimInformationCategoryCS#rxOriginCode   
* supportingInfo[rxoriginCode] ^short = "RxOrigin"
* supportingInfo[rxoriginCode].code from NCPDPPrescriptionOriginCodeVS (required)
* supportingInfo[refillNum].category.coding.code = ClaimInformationCategoryCS#refillnum
* supportingInfo[refillNum] ^short = "RefillNum"
* supportingInfo[dawcode].category.coding.code = ClaimInformationCategoryCS#dawCode       
* supportingInfo[dawcode] ^short = "Dispense As Written" 
* supportingInfo[dawcode].code from NCPDPDispensedAsWrittenVS (required)
* supportingInfo[clmrecvddate].category.coding.code = ClaimInformationCategoryCS#clmrecvddate
* supportingInfo[clmrecvddate] ^short = "Claim Received Date"
* supportingInfo[dayssupply].category.coding.code = ClaimInformationCategoryCS#daysSupply
* supportingInfo[dayssupply] ^short = "Days Supply"
* supportingInfo[dispensingstatus].category.coding.code = ClaimInformationCategoryCS#dispensingstatus
//* supportingInfo[dispensingstatus].code from --- shouldn't this be bound to a VS
* supportingInfo[dispensingstatus] ^short = "Dispensing Status"
* item.productOrService from FDANDCNCPDPCompoundCodeVS (required)
* item.detail.productOrService  from FDANationalDrugCodeVS (required)
* item.detail MS
* item.detail.quantity MS 
* careTeam.role from PayerPharmacyProviderRoleVS (required)
* item.adjudication ^slicing.rules = #closed
* item.adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* item.adjudication ^slicing.description = "Slice based on $this pattern"
* item.adjudication ^slicing.discriminator.type = #pattern
* item.adjudication ^slicing.discriminator.path = "$this"
* item.adjudication contains
   adjudicationamounttype 0..* MS and
   denialreason 0..1 MS and
   inoutnetwork 0..1 MS
* item.adjudication[inoutnetwork] ^short = "Benefit Payment Status"
* item.adjudication[inoutnetwork].category.coding.code = ClaimAdjudicationCategoryCS#inoutnetwork
* item.adjudication[inoutnetwork].category from BenefitPaymentStatusVS (required)
* item.adjudication[denialreason] ^short = "Denial Reason"
* item.adjudication[denialreason].category.coding.code = ClaimAdjudicationCategoryCS#denialreason 
* item.adjudication[denialreason].reason from NCPDPRejectCodeVS
* item.adjudication[denialreason].reason 1..1
* item.adjudication[adjudicationamounttype].category from AdjudicationPayerValueCodesVS
* item.adjudication[adjudicationamounttype] ^short = "Amounts"
* item.adjudication[adjudicationamounttype].amount 1..1
* adjudication ^slicing.rules = #closed
* adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* adjudication ^slicing.description = "Slice based on $this vpattern"
* adjudication ^slicing.discriminator.type = #pattern
* adjudication ^slicing.discriminator.path = "$this"
* adjudication.category 1..1
* adjudication contains
   adjudicationamounttype 0..* MS and
   inoutnetwork 1..1 MS
* adjudication[inoutnetwork] ^short = "Benefit Payment Status"
* adjudication[inoutnetwork].category.coding.code = ClaimAdjudicationCategoryCS#inoutnetwork
* adjudication[inoutnetwork].category from BenefitPaymentStatusVS (required)
* adjudication[adjudicationamounttype].category from AdjudicationPayerValueCodesVS (required)
* adjudication[adjudicationamounttype] ^short = "Amounts"
* adjudication[adjudicationamounttype].amount 1..1

Profile: CARINBBExplanationOfBenefitProfessionalNonClinician
Parent: CARIN-BB-ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit-Professional-NonClinician
Title: "CARIN BB ExplanationOfBenefit Professional NonClinician"
Description: "This profile is used for Explanation of Benefits (EOBs) based on claims submitted by physicians, suppliers and other non-institutional providers for professional services. These services may be rendered in inpatient or outpatient, including office locations. 
The claims data is based on the professional claim form 1500, submission standards adopted by the Department of Health and Human Services as form CMS-1500."
* type.coding.code = #professional
* provider only Reference(CARINBBOrganization | CARINBBPractitionerRole | CARINBBPractitioner)
* supportingInfo.category.coding.system = "http://hl7.org/fhir/us/carin/CodeSystem/carin-bb-claiminformationcategory" // ClaimInformationCategoryCS 
* supportingInfo ^slicing.discriminator.type = #pattern 
* supportingInfo ^slicing.discriminator.path = "$this"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false   // can be omitted, since false is the default
* supportingInfo ^slicing.description = "Slice based on $this pattern"
* supportingInfo contains 
   billingnetworkcontractingstatus 0..1 MS and
   referringnetworkcontractingstatus 0..1 MS and
   performingnetworkcontractingstatus 0..1 MS and
   sitenetworkcontractingstatus 0..1 MS and
   clmrecvddate 0..1 MS 
* supportingInfo[billingnetworkcontractingstatus].category.coding.code = ClaimInformationCategoryCS#billingnetworkcontractingstatus 
* supportingInfo[billingnetworkcontractingstatus].code from ProviderNetworkStatusVS  (required)
* supportingInfo[billingnetworkcontractingstatus].code 1..1
* supportingInfo[billingnetworkcontractingstatus].category.coding 1..1
* supportingInfo[billingnetworkcontractingstatus].category.coding.system 1..1
* supportingInfo[billingnetworkcontractingstatus].category.coding.code 1..1
* supportingInfo[referringnetworkcontractingstatus].category.coding.code = ClaimInformationCategoryCS#referringnetworkcontractingstatus
* supportingInfo[referringnetworkcontractingstatus].code from ProviderNetworkStatusVS  (required)
* supportingInfo[referringnetworkcontractingstatus].code 1..1
* supportingInfo[performingnetworkcontractingstatus].category.coding.code = ClaimInformationCategoryCS#performingnetworkcontractingstatus
* supportingInfo[performingnetworkcontractingstatus].code from ProviderNetworkStatusVS  (required)
* supportingInfo[performingnetworkcontractingstatus].code 1..1
* supportingInfo[sitenetworkcontractingstatus].category.coding.code = ClaimInformationCategoryCS#sitenetworkcontractingstatus
* supportingInfo[sitenetworkcontractingstatus].code from ProviderNetworkStatusVS  (required)
* supportingInfo[clmrecvddate].category.coding.code = ClaimInformationCategoryCS#clmrecvddate
* supportingInfo[clmrecvddate].timing[x] only date 
* supportingInfo[clmrecvddate].timing[x] 1..1
* careTeam.role from PayerProfessionalAndNonClinicianProviderRoleVS (required)
* diagnosis 1..*
* diagnosis.type 1..1
* diagnosis.type from PayerProfessionalandnoncliniciandiagnosistype (required)
* diagnosis.diagnosis[x] 1..1 MS
* diagnosis.diagnosisCodeableConcept from ICD10CMVS (required)
* item.modifier from CPTHCPCSModifierCodeVS (required)
* item.productOrService from CPTHCPCSProcedureCodeVS (required)
* item.adjudication ^slicing.rules = #closed
* item.adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* item.adjudication ^slicing.description = "Slice based on $this pattern"
* item.adjudication ^slicing.discriminator.type = #pattern
* item.adjudication ^slicing.discriminator.path = "$this"
* item.adjudication contains
   adjudicationamounttype 0..* and
   denialreason 0..1 and
   inoutnetwork 1..1
* item.adjudication[denialreason].category.coding.code = ClaimAdjudicationCategoryCS#denialreason 
* item.adjudication[denialreason].reason from AdjudicationDenialReasonVS
* item.adjudication[denialreason].reason 1..1 MS
* item.adjudication[denialreason] ^short = "Denial Reason"
* item.adjudication[adjudicationamounttype].category from AdjudicationPayerValueCodesVS (required)
* item.adjudication[adjudicationamounttype] ^short = "Amounts"
* item.adjudication[adjudicationamounttype].amount 1..1 MS
* item.adjudication[inoutnetwork] ^short = "Benefit Payment Status"
* item.adjudication[inoutnetwork].category.coding.code = ClaimAdjudicationCategoryCS#inoutnetwork
* item.adjudication[inoutnetwork].category from BenefitPaymentStatusVS (required)


// Do all references to Organization in this profile need to target CARINBBOrganization?
Profile: CARINBBOrganization
Parent:  $USCoreOrganization
Id:  CARIN-BB-Organization
Title: "CARIN BB Organization"
Description: "CARIN Blue Button Organization Profile."
* meta.lastUpdated 1..1  MS
* meta.profile 1..* MS
// Slicing stuff missing?
* identifier.type from OrganizationIdentifierTypeVS (extensible)
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #pattern 
* identifier ^slicing.ordered = false   // can be omitted, since false is the default
* identifier ^slicing.description = "Slice based on $this pattern"
* identifier.type 1..1 MS
* identifier contains 
   TIN 0..* MS and
   payerid 0..* MS
* identifier.type from OrganizationIdentifierTypeVS (extensible)
* identifier[NPI] ^short = "National Provider Identifier"
* identifier[NPI].type.coding.code = IdentifierTypeCS#npi
* identifier[NPI].type.coding 1..1 MS
* identifier[NPI].type.coding.code 1..1  MS
* identifier[TIN] ^short = "Tax ID Number"
* identifier[TIN].type.coding.code = IdentifierTypeCS#tax
* identifier[TIN].type.coding 1..1 MS
* identifier[TIN].type.coding.code 1..1  MS
* identifier[TIN].system = "urn:oid:2.16.840.1.113883.4.4"
* identifier[payerid] ^short = "Payer ID"
* identifier[payerid].type.coding.code = IdentifierTypeCS#payerid 
* identifier[payerid].type.coding 1..1 MS
* identifier[payerid].type.coding.code 1..1  MS
//* identifier[payerid].system = <what>

Profile: CARINBBPatient
Parent: $USCorePatient
Id: CARIN-BB-Patient
Title: "CARIN BB Patient"
Description: "CARIN Blue Button Patient Profile."
* meta.lastUpdated 1..1 MS
* meta.profile 1..* MS
* identifier.type from PatientIdentifierTypeVS (extensible)
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #pattern 
* identifier ^slicing.ordered = false   // can be omitted, since false is the default
* identifier ^slicing.description = "Slice based on $this pattern"
* identifier contains 
   memberid 1..* MS and
   medrecnum 0..* MS and
   uniquememberid 0..* MS and
   patacctnum 0..* MS 
* identifier[memberid].type.coding.code = IdentifierTypeCS#mb
* identifier[memberid] ^short = "Member ID"
* identifier[memberid].type.coding 1..* MS
* identifier[memberid].type.coding.code 1..1  MS
* identifier[medrecnum].type.coding.code = IdentifierTypeCS#mr
* identifier[medrecnum] ^short = "Medical Record Number"
* identifier[medrecnum].type.coding 1..* MS
* identifier[medrecnum].type.coding.code 1..1  MS
* identifier[patacctnum].type.coding.code = IdentifierTypeCS#pt
* identifier[patacctnum] ^short = "Patient Account Number"
* identifier[patacctnum].type.coding 1..* MS
* identifier[patacctnum].type.coding.code 1..1  MS
* identifier[uniquememberid] ^short = "Unique Member ID"
* identifier[uniquememberid].type.coding 1..* MS
* identifier[uniquememberid].type.coding.code 1..1  MS
* identifier[uniquememberid].type.coding.code = IdentifierTypeCS#um



Profile: CARINBBPractitionerRole
Parent: $USCorePractitionerRole
Id: CARIN-BB-PractitionerRole
Title: "CARIN BB PractitionerRole"
Description: "CARIN Blue Button PractitionerRole Profile."
* meta.lastUpdated 1..1 MS
* meta.profile 1..* MS
* organization only Reference(CARINBBOrganization)
* practitioner only Reference(CARINBBPractitioner)
* location only Reference (CARINBBLocation)
* code from PayerProviderRoleVS (required)
// * specialty  - same binding as Plan-Net

// What needs to change?

Profile: CARINBBPractitioner
Parent: $USCorePractitioner
Id: CARIN-BB-Practitioner
Title: "CARIN BB Practitioner"
Description: "CARIN Blue Button Practitioner Profile."
* meta.lastUpdated 1..1 MS
* meta.profile 1..* MS

// WHat needs to change?
Profile: CARINBBLocation
Parent: $USCoreLocation
Id: CARIN-BB-Location
Title: "CARIN BB Location"
Description: "CARIN Blue Button Location Profile."
* meta.lastUpdated 1..1 MS
* meta.profile 1..* MS

Invariant:  EOB-insurance-focal  
Description: "EOB.insurance:  at most one slice with focal = true"
Expression: "insurance.select (focal = true).count() < 2"
Severity:   #error
