Profile: CARINBBCoverage
Parent: Coverage
Id: CARIN-BB-Coverage
Title: "CARIN BB Coverage"
Description: "CARIN Blue Button Coverage Profile."
//* ^jurisdiction.valueCodeableConcept = "US#urn:iso:std:iso:3166"
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
* relationship from $SubscriberRelationiship (required)
* payor 1..1 MS   // was 1..* in Balloted STU
* payor only Reference (CARINBBOrganization) 
* class MS 
* class.name MS 
* class ^slicing.discriminator.type = #pattern
* class ^slicing.discriminator.path = "type"
* class ^slicing.rules = #open
* class ^slicing.ordered = false   // can be omitted, since false is the default
* class ^slicing.description = "Slice based on value pattern"
* class contains 
   group 1..1  MS and
   plan 1..1 MS
* class[group].type = $CoverageClassCS#group
* class[plan].type = $CoverageClassCS#plan
* payor ^short = "Issuer of the Policy (2 )"
* type ^short = "Identifies if the coverage is PPO, HMO, POS, etc.   (3 )"
* relationship ^short = "Relationship of the member to the person insured (subscriber). (72 )"
* period ^short = "Date that the contract became effective (74 )"
* period ^short = "Date that the contract was terminated or coverage changed (75 )"
* subscriberId ^short = "Identifies the subscriber identification (132 )"
* status ^short = "Identfies the status of the coverage information (default: active) (133 )"
* class[group].value ^short = "Employer account identifier (134 )"
* class[group].name ^short = "Name of the Employer Account (135 )"
* class[plan].value ^short = "Business concept used by a health plan to describe its benefit offerings (154 )"
* class[plan].name ^short = "Name of the health plan benefit offering assigned to the Plan Identfier (155 )"

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
* identifier[claimnumber] ^patternIdentifier.type = $IdentifierTypeCS#cn 
* identifier[claimnumber] ^short = "Claim Number"
* type 1..1 MS
* type from $HL7ClaimType (required)
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
//* related.relationship from RelatedClaim (extensible)
* payee 0..1 MS
* payee.type 1..1 MS
* payee.party 1..1 MS
* payee.party only Reference(CARINBBOrganization or CARINBBPatient or CARINBBPractitioner)
* careTeam 0..* MS 
* careTeam.provider 1..1 MS
* careTeam.provider only Reference(CARINBBOrganization or CARINBBPractitioner)
* careTeam.responsible 0..1 MS 
* careTeam.role 1..1 MS
* supportingInfo 0..* MS
//* supportingInfo.category 1..1 MS
//* supportingInfo.category from ClaimInformationCategory (required)
* supportingInfo.code 0..1 MS 
* supportingInfo.timing[x] 0..1 MS 
* supportingInfo.value[x] 0..1 MS 
* procedure 0..* MS 
* procedure.type 0..* MS 
* procedure.date 0..1 MS 
* insurance 1..* MS
* insurance.coverage 1..1 MS
* insurance.focal 1..1  MS
* insurance.coverage only Reference(CARINBBCoverage)
* adjudication.extension contains
   AdjudicationType named adjudication-type 1..1 MS
* adjudication.category from ClaimAdjudicationCategory (required)   // per Igor
* item 0..* MS
* item.adjudication MS 
* item.adjudication.category 1..1 MS
* item.adjudication.category from ClaimAdjudicationCategory (required)  // Per Igor
* total.category from PayerAdjudicationAmountCategory (extensible)    // IS THIS RIGHT?
* payment MS 
* payment.type from ClaimPaymentStatusCode (required)



Profile: CARINBBExplanationOfBenefitInpatientFacility
Parent: CARIN-BB-ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit-Inpatient-Facility
Title: "CARIN BB ExplanationOfBenefit Inpatient Facility"
Description: "The profile is used for Explanation of Benefits (EOBs) based on claims submitted by clinics, hospitals, skilled nursing facilities and other institutions for inpatient services, which may include the use of equipment and supplies, laboratory services, radiology services and other charges. Inpatient claims are submitted for services rendered at a facility as part of an overnight stay. 
The claims data is based on the institutional claim format UB-04, submission standards adopted by the Department of Health and Human Services as form CMS-1450."
* obeys EOB-inst-careTeam-practitioner
* obeys EOB-inst-careTeam-organization
* type.coding 1..1 MS
* type = $HL7ClaimTypeCS#institutional
* careTeam.role from CARINBBInstitutionalClaimCareTeamRoleCodes (required)  // was  PayerInstitutionalProviderRole 
* diagnosis 1..* MS
* diagnosis.type 1..1 MS
* diagnosis.type from PayerInpatientfacilitydiagnosistype (required)
* diagnosis.diagnosis[x] 1..1 MS
* diagnosis.diagnosisCodeableConcept from ICD10CM (required)
* diagnosis.onAdmission 0..1 MS
* diagnosis.onAdmission from NUBCPresentOnAdmission (required)
* procedure.procedure[x] only CodeableConcept 
* procedure.procedure[x] 1..1 MS
* procedure.procedureCodeableConcept from ICD10PCS (required) 
* provider 1..1
* provider only Reference(CARINBBOrganization)
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false   // can be omitted, since false is the default
* supportingInfo ^slicing.description = "Slice based on value pattern"
* supportingInfo ^slicing.discriminator.type = #pattern
* supportingInfo ^slicing.discriminator.path = "category"
* supportingInfo contains 
   billingnetworkcontractingstatus 0..1 MS and
   attendingnetworkcontractingstatus 0..1 MS and
   referringnetworkcontractingstatus 0..1 MS and
   supervisingnetworkcontractingstatus 0..1 MS and
   clmrecvddate 0..1 MS and
    typeofbill 0..1 MS and 
   pointoforigin 0..1 MS and 
   admtype 0..1 MS and 
   discharge-status 0..1 MS and 
   drg 0..1 MS
* supportingInfo[billingnetworkcontractingstatus].category = ClaimInformationCategoryCS#billingnetworkcontractingstatus 
* supportingInfo[billingnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[billingnetworkcontractingstatus].code 1..1 MS
* supportingInfo[billingnetworkcontractingstatus] ^short = "Claim billing provider network status"
* supportingInfo[billingnetworkcontractingstatus] ^definition = "Claim billing provider network status"
* supportingInfo[attendingnetworkcontractingstatus].category = ClaimInformationCategoryCS#attendingnetworkcontractingstatus
* supportingInfo[attendingnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[attendingnetworkcontractingstatus].code 1..1 MS
* supportingInfo[attendingnetworkcontractingstatus] ^short = "Claim attending provider network status"
* supportingInfo[attendingnetworkcontractingstatus] ^definition = "Claim attending provider network status"
* supportingInfo[referringnetworkcontractingstatus].category  = ClaimInformationCategoryCS#referringnetworkcontractingstatus
* supportingInfo[referringnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[referringnetworkcontractingstatus].code 1..1 MS
* supportingInfo[referringnetworkcontractingstatus] ^short = "Claim referring provider network status"
* supportingInfo[referringnetworkcontractingstatus] ^definition = "Claim referring provider network status"
* supportingInfo[supervisingnetworkcontractingstatus].category  = ClaimInformationCategoryCS#supervisingnetworkcontractingstatus
* supportingInfo[supervisingnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[supervisingnetworkcontractingstatus].code 1..1 MS
* supportingInfo[supervisingnetworkcontractingstatus] ^short = "Claim supervising provider network status"
* supportingInfo[supervisingnetworkcontractingstatus] ^definition = "Claim supervising provider network status"
* supportingInfo[clmrecvddate].category  = ClaimInformationCategoryCS#clmrecvddate
* supportingInfo[clmrecvddate] ^short = "Claim Received Date"
* supportingInfo[clmrecvddate] ^definition  = "Claim Received Date: The date the claim for payment was received"
* supportingInfo[clmrecvddate].timing[x] only date 
* supportingInfo[clmrecvddate].timing[x] 1..1 MS
* supportingInfo[typeofbill].category  = ClaimInformationCategoryCS#typeofbill
* supportingInfo[typeofbill] ^short = "Type of Bill"
* supportingInfo[typeofbill] ^definition = "Type of Bill"
* supportingInfo[typeofbill].code from $NUBCTypeOfBill (required)
* supportingInfo[pointoforigin].category  = ClaimInformationCategoryCS#admsrc
* supportingInfo[pointoforigin].code from $NUBCPointOfOriginForAdmissionOrVisit (required)
* supportingInfo[pointoforigin] ^short = "Claim Point of Origin for Admission or Visit"
* supportingInfo[pointoforigin] ^definition = "Claim Point of Origin for Admission or Visit"
* supportingInfo[admtype].category  = ClaimInformationCategoryCS#admtype
* supportingInfo[admtype].code from NUBCPriorityOfAdmissionn  (required)
* supportingInfo[admtype] ^short = "Claim Priority (Type) of Admission or Visit "
* supportingInfo[admtype] ^definition = "Claim Priority (Type) of Admission or Visit "
* supportingInfo[discharge-status].category  = ClaimInformationCategoryCS#discharge-status
* supportingInfo[discharge-status].code from NUBCPatientDischargeStatus   (required)
* supportingInfo[discharge-status] ^short = "Discharge Status"
* supportingInfo[discharge-status] ^definition = "Discharge Status"
* supportingInfo[drg].category  = ClaimInformationCategoryCS#drg
* supportingInfo[drg].code from CMSDRG  (required)
* supportingInfo[drg] ^short = "Claim diagnosis related group (DRG)"
* supportingInfo[drg] ^definition = "Claim diagnosis related group (DRG), including the code system, the DRG version and the code value"
* item.revenue from $NUBCRevenueCode (required)
* item.modifier from CPTHCPCSModifierCode (required)
* item.productOrService from CPTHCPCSProcedureCode (required)
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
* item.adjudication[allowedunits].category = ClaimAdjudicationCategoryCS#allowedunits
* item.adjudication[allowedunits].value only decimal
* item.adjudication[denialreason] ^short = "Denial Reason"
* item.adjudication[denialreason].category = ClaimAdjudicationCategoryCS#denialreason 
* item.adjudication[denialreason].reason from AdjudicationDenialReason
* item.adjudication[denialreason].reason 1..1
* item.adjudication[adjudicationamounttype].category from AdjudicationCarinBBValueCodes
* item.adjudication[adjudicationamounttype] ^short = "Amounts"
* item.adjudication[adjudicationamounttype].amount MS
* adjudication ^slicing.rules = #closed
* adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* adjudication ^slicing.description = "Slice based on value pattern"
* adjudication ^slicing.discriminator.type = #value

* adjudication.category 1..1 MS 
* adjudication contains
   adjudicationamounttype 0..* MS and
   denialreason 0..1 MS and
   inoutnetwork 1..1 MS
// * adjudication ^slicing.discriminator.path = "category"
* adjudication ^slicing.discriminator.path = "extension('http://hl7.org/fhir/us/carin-bb/StructureDefinition/AdjudicationType').value"
* adjudication[inoutnetwork].extension[adjudication-type].valueCodeableConcept  = $AdjudicationSliceCodesCS#inoutnetwork
* adjudication[denialreason].extension[adjudication-type].valueCodeableConcept  = $AdjudicationSliceCodesCS#denialreason
* adjudication[adjudicationamounttype].extension[adjudication-type].valueCodeableConcept  = $AdjudicationSliceCodesCS#adjudicationamounttype
* adjudication[inoutnetwork] ^short = "Benefit Payment Status"
* adjudication[inoutnetwork].category from BenefitPaymentStatus (required)
* adjudication[denialreason] ^short = "Denial Reason"
* adjudication[denialreason].category = ClaimAdjudicationCategoryCS#denialreason 
* adjudication[denialreason].reason from AdjudicationDenialReason
* adjudication[denialreason].reason 1..1
* adjudication[adjudicationamounttype].category from AdjudicationCarinBBValueCodes  (required)
* adjudication[adjudicationamounttype] ^short = "Amounts"
* adjudication[adjudicationamounttype].amount 1..1
* payment.adjustmentReason from AdjudicationDenialReason (extensible)

Alias: $AdjudicationTypeExt = http://hl7.org/fhir/us/carin-bb/StructureDefinition/AdjudicationType

Profile: CARINBBExplanationOfBenefitOutpatientFacility
Parent: CARIN-BB-ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit-Outpatient-Facility
Title: "CARIN BB ExplanationOfBenefit Outpatient Facility"
Description: "This profile is used for Explanation of Benefits (EOBs) based on claims submitted by clinics, hospitals, skilled nursing facilities and other institutions for outpatient services, which may include including the use of equipment and supplies, laboratory services, radiology services and other charges. Outpatient claims are submitted for services rendered at a facility that are not part of an overnight stay. 
The claims data is based on the institutional claim form UB-04, submission standards adopted by the Department of Health and Human Services as form CMS-1450."
* obeys EOB-inst-careTeam-practitioner
* obeys EOB-inst-careTeam-organization
* type  = $HL7ClaimTypeCS#institutional
* careTeam.role from CARINBBInstitutionalClaimCareTeamRoleCodes (required)   // was PayerInstitutionalProviderRole
* diagnosis 1..*
* diagnosis.diagnosis[x] 1..1 MS
* diagnosis.diagnosisCodeableConcept from ICD10CM (required)
* provider only Reference(CARINBBOrganization)
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false   // can be omitted, since false is the default
* supportingInfo ^slicing.description = "Slice based on value pattern"
* supportingInfo ^slicing.discriminator.type = #pattern
* supportingInfo ^slicing.discriminator.path = "category"
* supportingInfo contains 
   billingnetworkcontractingstatus 0..1 MS and
   attendingnetworkcontractingstatus 0..1 MS and
   referringnetworkcontractingstatus 0..1 MS and
   supervisingnetworkcontractingstatus 0..1 MS and
   clmrecvddate 0..1 MS and
   typeofbill 0..1 MS and 
   pointoforigin 0..1 MS and 
   admtype 0..1 MS and 
   discharge-status 0..1 MS 
* supportingInfo[billingnetworkcontractingstatus].category = ClaimInformationCategoryCS#billingnetworkcontractingstatus 
* supportingInfo[billingnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[billingnetworkcontractingstatus].code 1..1
* supportingInfo[billingnetworkcontractingstatus] ^short = "Claim performing provider network status"
* supportingInfo[attendingnetworkcontractingstatus].category = ClaimInformationCategoryCS#attendingnetworkcontractingstatus
* supportingInfo[attendingnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[attendingnetworkcontractingstatus].code 1..1 MS
* supportingInfo[attendingnetworkcontractingstatus] ^short = "Claim attending provider network status"
* supportingInfo[attendingnetworkcontractingstatus] ^definition = "Claim attending provider network status"
* supportingInfo[referringnetworkcontractingstatus].category = ClaimInformationCategoryCS#referringnetworkcontractingstatus
* supportingInfo[referringnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[referringnetworkcontractingstatus].code 1..1
* supportingInfo[referringnetworkcontractingstatus] ^short = "Claim attending provider network status"
* supportingInfo[supervisingnetworkcontractingstatus].category  = ClaimInformationCategoryCS#supervisingnetworkcontractingstatus
* supportingInfo[supervisingnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[supervisingnetworkcontractingstatus].code 1..1 MS
* supportingInfo[supervisingnetworkcontractingstatus] ^short = "Claim supervising provider network status"
* supportingInfo[supervisingnetworkcontractingstatus] ^definition = "Claim supervising provider network status"
* supportingInfo[clmrecvddate].category = ClaimInformationCategoryCS#clmrecvddate
* supportingInfo[clmrecvddate] ^short = "Claim Received Date"
* supportingInfo[clmrecvddate].timing[x] only date 
* supportingInfo[clmrecvddate].timing[x] 1..1
* supportingInfo[typeofbill].category = ClaimInformationCategoryCS#typeofbill
* supportingInfo[typeofbill] ^short = "Type of Bill"
* supportingInfo[typeofbill].code from $NUBCTypeOfBill (required)
* supportingInfo[pointoforigin].category = ClaimInformationCategoryCS#admsrc
* supportingInfo[pointoforigin].code from $NUBCPointOfOriginForAdmissionOrVisit (required)
* supportingInfo[pointoforigin] ^short = "Claim Point of Origin for Admission or Visit"
* supportingInfo[admtype].category = ClaimInformationCategoryCS#admtype
* supportingInfo[admtype].code from NUBCPriorityOfAdmissionn  (required)
* supportingInfo[admtype] ^short = "Claim Priority (Type) of Admission or Visit "
* supportingInfo[discharge-status].category = ClaimInformationCategoryCS#discharge-status
* supportingInfo[discharge-status] ^short = "Discharge Status"
* supportingInfo[discharge-status].code from NUBCPatientDischargeStatus   (required)
* item.revenue from $NUBCRevenueCode (required)
* item.modifier from CPTHCPCSModifierCode (required)
* item.productOrService from CPTHCPCSProcedureCode (required)
* item.productOrService ^definition = "Put the definition here for item.productOrService here"
* item.productOrService ^short = "Put the short definition here for item.productOrService here"
* item.productOrService ^comment = "Put the comment here for item.productOrService here"
* item  ^definition = "Put the definition here for item"
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
* item.adjudication[denialreason].reason from AdjudicationDenialReason
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
   denialreason 0..1 MS and
   inoutnetwork 1..1 MS
* adjudication[inoutnetwork] ^short = "Benefit Payment Status"
* adjudication[inoutnetwork].category from BenefitPaymentStatus (required)
* adjudication[denialreason] ^short = "Denial Reason"
* adjudication[denialreason].category = ClaimAdjudicationCategoryCS#denialreason 
* adjudication[denialreason].reason from AdjudicationDenialReason
* adjudication[denialreason].reason 1..1 MS
* adjudication[adjudicationamounttype].category from AdjudicationCarinBBValueCodes (required)
* adjudication[adjudicationamounttype] ^short = "Amounts"
* adjudication[adjudicationamounttype].amount 1..1 MS
* diagnosis 1..*
* diagnosis.type 1..1 MS
* diagnosis.type from PayerOutpatientfacilitydiagnosistype (required)
* diagnosis.diagnosis[x] 1..1 MS
* diagnosis.diagnosisCodeableConcept from ICD10CM (required)
* payment.adjustmentReason from AdjudicationDenialReason (extensible)




Profile: CARINBBExplanationOfBenefitPharmacy
Parent: CARIN-BB-ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit-Pharmacy
Title: "CARIN BB ExplanationOfBenefit Pharmacy"
Description: "This profile is used for Explanation of Benefits (EOBs) based on claims submitted by retail pharmacies. 
The claims data is based on submission standards adopted by the Department of Health and Human Services defined by NCPDP (National Council for Prescription Drug Program)"
* obeys EOB-pharm-careTeam-practitioner
* obeys EOB-pharm-careTeam-organization
* type = $HL7ClaimTypeCS#pharmacy 
* provider only Reference(CARINBBOrganization or CARINBBPractitionerRole or CARINBBPractitioner)
* supportingInfo ^slicing.discriminator.type = #pattern 
* supportingInfo ^slicing.discriminator.path = "category"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false   // can be omitted, since false is the default
* supportingInfo ^slicing.description = "Slice based on $value pattern"
* supportingInfo contains 
   billingnetworkcontractingstatus 0..1 MS and
   brandgenericcode 0..1 MS and
   rxoriginCode 0..1 MS and
   refillNum 0..1 MS and
   dawcode 0..1 MS and
   clmrecvddate 0..1 MS and
   dayssupply 0..1 MS 
* supportingInfo[billingnetworkcontractingstatus].category = ClaimInformationCategoryCS#billingnetworkcontractingstatus
* supportingInfo[billingnetworkcontractingstatus] ^short = "Billing Network Contracting Status"
* supportingInfo[billingnetworkcontractingstatus].code from PayerProviderContractingStatus (required) 
* supportingInfo[billingnetworkcontractingstatus].code 1..1
* supportingInfo[brandgenericcode].category = ClaimInformationCategoryCS#brandgenericcode   
* supportingInfo[brandgenericcode] ^short = "BrandGeneric"
* supportingInfo[brandgenericcode].code from NCPDPBrandGenericCode (required)
* supportingInfo[rxoriginCode].category = ClaimInformationCategoryCS#rxorigincode   
* supportingInfo[rxoriginCode] ^short = "RxOrigin"
* supportingInfo[rxoriginCode].code from NCPDPPrescriptionOriginCode (required)
* supportingInfo[refillNum].category = ClaimInformationCategoryCS#refillnum
* supportingInfo[refillNum] ^short = "RefillNum"
* supportingInfo[dawcode].category = ClaimInformationCategoryCS#dawcode       
* supportingInfo[dawcode] ^short = "Dispense As Written product selection code" 
* supportingInfo[dawcode] ^definition = "Dispense As Written product selection code: Prescriber's instruction regarding substitution of generic equivalents or order to dispense the specific prescribed medication." 
* supportingInfo[dawcode].code from NCPDPDispensedAsWritten (required)
* supportingInfo[clmrecvddate].category = ClaimInformationCategoryCS#clmrecvddate
* supportingInfo[clmrecvddate] ^short = "Claim Received Date"
* supportingInfo[dayssupply].category = ClaimInformationCategoryCS#dayssupply
* supportingInfo[dayssupply] ^short = "Days Supply"
* item.productOrService from FDANDCNCPDPCompoundCode (required)
* item.detail.productOrService  from FDANationalDrugCode (required)
* item.detail MS
* item.detail.quantity MS 
* careTeam.role from CARINBBPharmacyClaimCareTeamRoleCodes (required)   // was PayerPharmacyProviderRole
* item.adjudication ^slicing.rules = #closed
* item.adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* item.adjudication ^slicing.description = "Slice based on $this pattern"
* item.adjudication ^slicing.discriminator.type = #pattern
* item.adjudication ^slicing.discriminator.path = "category"
* item.adjudication contains
   adjudicationamounttype 0..* MS and
   denialreason 0..1 MS and
   inoutnetwork 0..1 MS
* item.adjudication[inoutnetwork] ^short = "Benefit Payment Status"
* item.adjudication[inoutnetwork].category from BenefitPaymentStatus (required)
* item.adjudication[denialreason] ^short = "Denial Reason"
* item.adjudication[denialreason].category = ClaimAdjudicationCategoryCS#denialreason 
* item.adjudication[denialreason].reason from NCPDPRejectCode
* item.adjudication[denialreason].reason 1..1
* item.adjudication[adjudicationamounttype].category from AdjudicationCarinBBValueCodes
* item.adjudication[adjudicationamounttype] ^short = "Amounts"
* item.adjudication[adjudicationamounttype].amount  MS
* adjudication ^slicing.rules = #closed
* adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* adjudication ^slicing.description = "Slice based on $this vpattern"
* adjudication ^slicing.discriminator.type = #pattern
* adjudication ^slicing.discriminator.path = "category"
* adjudication.category 1..1
* adjudication contains
   inoutnetwork 1..1 MS
* adjudication[inoutnetwork] ^short = "Benefit Payment Status"
* adjudication[inoutnetwork].category from BenefitPaymentStatus (required)

Profile: CARINBBExplanationOfBenefitProfessionalNonClinician
Parent: CARIN-BB-ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit-Professional-NonClinician
Title: "CARIN BB ExplanationOfBenefit Professional NonClinician"
Description: "This profile is used for Explanation of Benefits (EOBs) based on claims submitted by physicians, suppliers and other non-institutional providers for professional services. These services may be rendered in inpatient or outpatient, including office locations. 
The claims data is based on the professional claim form 1500, submission standards adopted by the Department of Health and Human Services as form CMS-1500."
* obeys EOB-prof-careTeam-practitioner
* obeys EOB-prof-careTeam-organization
* type = $HL7ClaimTypeCS#professional
* provider only Reference(CARINBBOrganization or CARINBBPractitionerRole or CARINBBPractitioner)
* supportingInfo ^slicing.discriminator.type = #pattern 
* supportingInfo ^slicing.discriminator.path = "category"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false   // can be omitted, since false is the default
* supportingInfo ^slicing.description = "Slice based on $this pattern"
* supportingInfo contains 
   billingnetworkcontractingstatus 0..1 MS and
   referringnetworkcontractingstatus 0..1 MS and
   performingnetworkcontractingstatus 0..1 MS and
   sitenetworkcontractingstatus 0..1 MS and
   clmrecvddate 0..1 MS 
* supportingInfo[billingnetworkcontractingstatus].category = $ClaimInformationCategoryCS#billingnetworkcontractingstatus 
* supportingInfo[billingnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[billingnetworkcontractingstatus].code 1..1 
* supportingInfo[billingnetworkcontractingstatus].category.coding 1..1
* supportingInfo[referringnetworkcontractingstatus].category = $ClaimInformationCategoryCS#referringnetworkcontractingstatus
* supportingInfo[referringnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[referringnetworkcontractingstatus].code 1..1
* supportingInfo[performingnetworkcontractingstatus].category = $ClaimInformationCategoryCS#performingnetworkcontractingstatus
* supportingInfo[performingnetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[performingnetworkcontractingstatus].code 1..1
* supportingInfo[sitenetworkcontractingstatus].category = $ClaimInformationCategoryCS#sitenetworkcontractingstatus
* supportingInfo[sitenetworkcontractingstatus].code from PayerProviderContractingStatus  (required)
* supportingInfo[clmrecvddate].category = ClaimInformationCategoryCS#clmrecvddate
* supportingInfo[clmrecvddate].timing[x] only date 
* supportingInfo[clmrecvddate].timing[x] 1..1
* careTeam.role from CARINBBProfessionalAndNonclinicanClaimCareTeamRoleCodes  (required)  // was PayerProfessionalAndNonClinicianProviderRole
* diagnosis 1..*
* diagnosis.type 1..1
* diagnosis.type from PayerProfessionalandnoncliniciandiagnosistype (required)
* diagnosis.diagnosis[x] 1..1 MS
* diagnosis.diagnosisCodeableConcept from ICD10CM (required)
* item.modifier from CPTHCPCSModifierCode (required)
* item.productOrService from CPTHCPCSProcedureCode (required)
* item.locationCodeableConcept from CMSPlaceOfService (required)
* item.adjudication ^slicing.rules = #closed 
* item.adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* item.adjudication ^slicing.description = "Slice based on value pattern"
* item.adjudication ^slicing.discriminator.type = #pattern 
* item.adjudication ^slicing.discriminator.path = "category"
* item.adjudication contains
   adjudicationamounttype 0..* and
   denialreason 0..1 and
   inoutnetwork 1..1 and
   allowedunits 0..1 MS
* item.adjudication[allowedunits] ^short = "Allowed number of units"
* item.adjudication[allowedunits].category = ClaimAdjudicationCategoryCS#allowedunits
* item.adjudication[allowedunits].value only decimal
* item.adjudication[denialreason].category  = $ClaimAdjudicationCategoryCS#denialreason 
* item.adjudication[denialreason].reason from AdjudicationDenialReason
* item.adjudication[denialreason].reason 1..1 MS
* item.adjudication[denialreason] ^short = "Denial Reason"
* item.adjudication[adjudicationamounttype].category from AdjudicationCarinBBValueCodes 
* item.adjudication[adjudicationamounttype] ^short = "Amounts"
* item.adjudication[adjudicationamounttype].amount  MS
* item.adjudication[inoutnetwork] ^short = "Benefit Payment Status"
* item.adjudication[inoutnetwork].category from BenefitPaymentStatus (required)


// Do all references to Organization in this profile need to target CARINBBOrganization?
Profile: CARINBBOrganization
Parent:  $USCoreOrganization
Id:  CARIN-BB-Organization
Title: "CARIN BB Organization"
Description: "CARIN Blue Button Organization Profile."
* meta.lastUpdated 1..1  MS
* meta.profile 1..* MS
// Slicing stuff missing?
// * identifier ^slicing.discriminator.path = "$this"
// * identifier ^slicing.rules = #open
// * identifier ^slicing.discriminator.type = #pattern 
// * identifier ^slicing.ordered = false   // can be omitted, since false is the default
// * identifier ^slicing.description = "Slice based on $this pattern"
//* identifier.type 1..1 MS
//* identifier.type from OrganizationIdentifierType (extensible)
* identifier contains 
   tax 0..* MS and
   payerid 0..* MS
* identifier[tax] ^short = "Tax ID Number"
* identifier[tax] ^patternIdentifier.type  = $IdentifierTypeCS#tax
* identifier[tax].type.coding 1..1 MS
* identifier[tax].system = "urn:oid:2.16.840.1.113883.4.4"
* identifier[payerid] ^short = "Payer ID"
* identifier[payerid] ^patternIdentifier.type  = $IdentifierTypeCS#payerid 
* identifier[payerid].type.coding 1..1 MS
//* identifier[payerid].system = <what>

Profile: CARINBBPatient
Parent: $USCorePatient
Id: CARIN-BB-Patient
Title: "CARIN BB Patient"
Description: "CARIN Blue Button Patient Profile."
* meta.lastUpdated 1..1 MS
* meta.profile 1..* MS
* identifier.type from PatientIdentifierType (extensible)
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
* identifier[memberid] ^patternIdentifier.type = $IdentifierTypeCS#mb
* identifier[memberid] ^short = "Member ID"
* identifier[memberid].type.coding 1..* MS
* identifier[medrecnum] ^patternIdentifier.type = $IdentifierTypeCS#mr
* identifier[medrecnum] ^short = "Medical Record Number"
* identifier[medrecnum].type.coding 1..* MS
* identifier[patacctnum] ^patternIdentifier.type = $IdentifierTypeCS#pt
* identifier[patacctnum] ^short = "Patient Account Number"
* identifier[patacctnum].type.coding 1..* MS
* identifier[uniquememberid] ^short = "Unique Member ID"
* identifier[uniquememberid].type.coding 1..* MS
* identifier[uniquememberid] ^patternIdentifier.type = $IdentifierTypeCS#um



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
* code from $USCoreProviderRole (required)   
* specialty from $USCoreProviderSpecialty (required )


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


Invariant: EOB-inst-careTeam-practitioner
Description: "Institutional EOB:  Careteam roles refer to a practitioner"
Expression: "(ExplanationOfBenefit.careTeam.role.coding.code in 
('attending' or 'pcp' or 'referring' or 'supervising')) implies 
ExplanationOfBenefit.careTeam.provider.reference.resolve().is(FHIR.Practitioner)"
Severity: #error

Invariant: EOB-inst-careTeam-organization
Description: "Institutional EOB:  Careteam roles refer to a practitioner"
Expression: "(ExplanationOfBenefit.careTeam.role.coding.code='performing') implies 
ExplanationOfBenefit.careTeam.provider.reference.resolve().is(FHIR.Organization)"
Severity: #error

Invariant: EOB-pharm-careTeam-practitioner
Description: "Pharmacy EOB:  Careteam roles refer to a practitioner"
Expression: "(ExplanationOfBenefit.careTeam.role.coding.code in 
( 'pcp' or 'prescribing')) implies 
ExplanationOfBenefit.careTeam.provider.reference.resolve().is(FHIR.Practitioner)"
Severity: #error

Invariant: EOB-pharm-careTeam-organization
Description: "Pharmacy EOB:  Careteam roles refer to a practitioner"
Expression: "(ExplanationOfBenefit.careTeam.role.coding.code='performing') implies 
ExplanationOfBenefit.careTeam.provider.reference.resolve().is(FHIR.Organization)"
Severity: #error

Invariant: EOB-prof-careTeam-practitioner
Description: "Institutional EOB:  Careteam roles refer to a practitioner"
Expression: "(ExplanationOfBenefit.careTeam.role.coding.code in 
('performing' or 'pcp' or 'referring' or 'supervising')) implies 
ExplanationOfBenefit.careTeam.provider.reference.resolve().is(FHIR.Practitioner)"
Severity: #error

Invariant: EOB-prof-careTeam-organization
Description: "Institutional EOB:  Careteam roles refer to a practitioner"
Expression: "(ExplanationOfBenefit.careTeam.role.coding.code='site') implies 
ExplanationOfBenefit.careTeam.provider.reference.resolve().is(FHIR.Organization)"
Severity: #error


//  Proposed Change to Slicing Style 
Extension: AdjudicationType
Title: "Adjudication Type"
Description: "An extension to provide a human-readable description of an organization."
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from AdjudicationSlideCodes (required) 

ValueSet: AdjudicationSlideCodes
Title: "Adjudication Slice Codes"
Description: "Codes used to discriminate slices of adjudication and item.adjudication"
* codes from system AdjudicationSliceCodesCS

CodeSystem: AdjudicationSliceCodesCS
Title: "Adjudication Slice Codes"
Description: "Codes used to discriminate slices of adjudication and item.adjudication"
* #inoutnetwork "In Out Network" "In Out Network"
* #denialreason "Denial Reason" "Denial Reason"
* #adjudicationamounttype "Ajudication Amount Type" "Ajudication Amount Type" 
* #allowedunits "Allowed Units" "Allowed Units"

Alias: $AdjudicationSliceCodesCS = http://hl7.org/fhir/us/carin-bb/CodeSystem/AdjudicationSliceCodesCS