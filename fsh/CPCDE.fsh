Profile: CARINBBCoverage
Parent: Coverage
Id: CARIN-BB-Coverage
Title: "CARIN BB Coverage"
Description: "CARIN Blue Button Coverage Profile."
* subscriber 0..1 
* subscriber only Reference(CARINBBPatient)
* subscriberId 1..1
* beneficiary 1..1 
* beneficiary only Reference(CARINBBPatient)
* relationship 1..1
* payor 1..* 
* payor only Reference (CARINBBOrganization)
* class ^slicing.discriminator.type = #value
* class ^slicing.discriminator.path = "type.coding.code"
* class ^slicing.rules = #open
* class ^slicing.ordered = false   // can be omitted, since false is the default
* class ^slicing.description = "Slice based on value pattern"
* class contains 
   Group 1..1 and
   Plan 1..1
* class[Group].type.coding.code = #group
* class[Plan].type.coding.code = #plan
 

Profile: CARINBBExplanationOfBenefit
Parent: ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit
Title: "CARIN BB Explanation Of Benefit"
Description: "This profile is built upon the ExplanationOfBenefit Resource. It includes constraints that are common to the more specific EOB profiles defined in this IG. Each of the more specific EOB profiles builds upon this profile. MustSupport implementer guidance is 
included in this base profile (e.g. profile flags). The more specific EOB profiles therefore inherit MustSupport guidance from this base profile."
* id 1..1
* identifier 1..* MS 
* type 1..1
* type from ClaimTypeVS (extensible)
* use = #claim 
* patient 1..1 
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
* diagnosis 0..* MS 
* diagnosis.type 1..1
* diagnosis.diagnosis[x] 1..1 
* diagnosis.diagnosis[x] only CodeableConcept    // Shouldn't this be constrained to a VS?
* diagnosis.type from DiagnosisTypeVS (extensible)
* diagnosis.onAdmission 0..1 MS
* procedure 0..* MS 
* procedure.type 0..* MS 
* procedure.date 0..1 MS 
* procedure.procedure[x] 1..1 
* procedure.procedure[x] only CodeableConcept   // SHouldn't this be constrained to a VS? 
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
* item.careTeamSequence 0..* MS
* item.diagnosisSequence 0..* MS
* item.procedureSequence 0..* MS
* item.informationSequence 0..* MS
* item.category 0..1 MS
* item.modifier 0..* MS
* item.serviced[x] 0..1 MS
* item.location[x] 0..1 MS
//* item.locationReference only Reference(CARINBBLocation)
* item.quantity 0..1 MS
* item.net 0..1 MS
* total.category from AdjudicationAmountCategoryVS (extensible)
* payment.adjustmentReason from AdjudicationDenialReasonVS (extensible)
* payment.type from ClaimPaymentStatusCodeVS (required)
* payee.type from ClaimPayeeTypeCodeVS (required)
* supportingInfo.category.coding from ClaimInformationCategoryVS (required)

Profile: CARINBBExplanationOfBenefitInpatientFacility
Parent: CARIN-BB-ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit-Inpatient-Facility
Title: "CARIN BB ExplanationOfBenefit Inpatient Facility"
Description: "This profile is built upon the CARINBBExplanationOfBenefit Profile. The profile is used for Explanation of Benefits (EOBs) based on claims submitted by clinics, hospitals, skilled nursing facilities and other institutions for inpatient services, which may include the use of equipment and supplies, laboratory services, radiology services and other charges. Inpatient claims are submitted for services rendered at a facility as part of an overnight stay. 
The claims data is based on the institutional claim format UB-04, submission standards adopted by the Department of Health and Human Services as form CMS-1450."
* type.coding 1..1
* type.coding.code = #inpatient-facility
* provider 1..1
* provider only Reference(CARINBBOrganization)
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false   // can be omitted, since false is the default
* supportingInfo ^slicing.description = "Slice based on value pattern"
* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path = "category.coding.code"
* supportingInfo.category 1..1 
* supportingInfo contains 
   billingnetworkcontractingstatus 0..1 and
   attendingnetworkcontractingstatus 0..1 and
   referringnetworkcontractingstatus 0..1 and
   clmrecvddate 0..1 and
 //  typeofservice 0..1 and
 //  tob-typeoffacility 0..1 and
 //  tob-billclassification 0..1 and 
 //  tob-frequency 0..1 and
 //  placeofservice 0..1  and 
   typeofbill 0..1 and 
   pointoforigin 0..1 and 
   admtype 0..1 and 
   discharge-status 0..1 and 
   ms-drg 0..1 
* supportingInfo[billingnetworkcontractingstatus].category.coding.code = ClaimInformationCategoryCS#billingnetworkcontractingstatus 
* supportingInfo[billingnetworkcontractingstatus].code from ProviderNetworkStatusVS  (required)
* supportingInfo[billingnetworkcontractingstatus] ^short = "Claim performing provider network status"
* supportingInfo[billingnetworkcontractingstatus].value[x] 0..0
* supportingInfo[billingnetworkcontractingstatus].timing[x] 0..0
* supportingInfo[attendingnetworkcontractingstatus].category.coding.code = ClaimInformationCategoryCS#attendingnetworkcontractingstatus
* supportingInfo[attendingnetworkcontractingstatus].code from ProviderNetworkStatusVS  (required)
* supportingInfo[attendingnetworkcontractingstatus] ^short = "Claim attending provider network status"
* supportingInfo[attendingnetworkcontractingstatus].value[x] 0..0
* supportingInfo[attendingnetworkcontractingstatus].timing[x] 0..0
* supportingInfo[referringnetworkcontractingstatus].category.coding.code = ClaimInformationCategoryCS#referringnetworkcontractingstatus
* supportingInfo[referringnetworkcontractingstatus].code from ProviderNetworkStatusVS  (required)
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
/* 
* supportingInfo[typeofservice].category.coding.code = #typeofservice
* supportingInfo[typeofservice].code from TypeOfServiceVS  (required)
* supportingInfo[typeofservice] ^short = "Type of Service"
* supportingInfo[tob-typeoffacility].category.coding.code = #tob-typeoffacility
* supportingInfo[tob-typeoffacility].code from TypeOfFacilityVS (required)
* supportingInfo[tob-billclassification].category.coding.code = #tob-billclassification
* supportingInfo[tob-billclassification].code from TypeOfBillClassificationVS  (required)
* supportingInfo[tob-frequency].category.coding.code = #tob-frequency
* supportingInfo[tob-frequency].code from TypeOfBillFrequencyVS  (required)
* supportingInfo[placeofservice].category.coding.code = #placeofservice
*/
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
* supportingInfo[pointoforigin] ^short = "Discharge Status"
* supportingInfo[ms-drg].category.coding.code = #ms-drg
* supportingInfo[ms-drg].code from MSDRGVS  (required)
* supportingInfo[ms-drg] ^short = "Claim diagnosis related group (DRG), including the code system, the DRG version and the code value"
* supportingInfo[ms-drg].value[x] 0..0
* supportingInfo[ms-drg].timing[x] 0..0



* item.revenue from NUBCRevenueCodeVS (required)
* item.adjudication ^slicing.rules = #closed
* item.adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* item.adjudication ^slicing.description = "Slice based on value pattern"
* item.adjudication ^slicing.discriminator.type = #value
* item.adjudication ^slicing.discriminator.path = "category.coding.code"
* item.adjudication.category 1..1 
* item.adjudication.category from ClaimAdjudicationCategoryVS
* item.adjudication contains
   adjudicationamounttype 0..* and
   denialreason 0..1 and
   allowedunits 0..1 
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
   adjudicationamounttype 0..* and
   denialreason 0..1 and
   inoutnetwork 1..1
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

* diagnosis.diagnosisCodeableConcept from ICD10CMVS (required)
* diagnosis.onAdmission from NUBCPresentOnAdmissionVS (required)
* diagnosis.type from DiagnosisTypeFacilityVS (required)
* careTeam.role from PayerInpatientFacilityProviderRoleVSProviderRoleVS (required)
* payment.type from  BenefitPaymentStatusVS (required)


Profile: CARINBBExplanationOfBenefitOutpatientFacility
Parent: CARIN-BB-ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit-Outpatient-Facility
Title: "CARIN BB ExplanationOfBenefit Outpatient Facility"
Description: "This profile is built upon the CARINBBExplanationOfBenefit Profile. The profile is used for Explanation of Benefits (EOBs) based on claims submitted by clinics, hospitals, skilled nursing facilities and other institutions for outpatient services, which may include including the use of equipment and supplies, laboratory services, radiology services and other charges. Outpatient claims are submitted for services rendered at a facility that are not part of an overnight stay. 
The claims data is based on the institutional claim form UB-04, submission standards adopted by the Department of Health and Human Services as form CMS-1450."
* type.coding.code = #outpatient-facility
* provider only Reference(CARINBBOrganization)
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false   // can be omitted, since false is the default
* supportingInfo ^slicing.description = "Slice based on value pattern"
* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path = "category.coding.code"
* supportingInfo contains 
   placeOfServiceCode 0..1 and
   discharge-status 0..1 and
   admtype 0..1 and
   pointoforigin 0..1 and
   frequencyCode 0..1 and
   serviceClassificationCode 0..1 and
   facilityTypeCode 0..1 and 
   claimReceivedDate 0..1 and
   referringProviderNetworkStatus 0..1 and 
   billingProviderNetworkStatus 0..1 
* supportingInfo[placeOfServiceCode].category.coding.code = ClaimInformationCategoryCS#placeofservice
* supportingInfo[discharge-status].category.coding.code = ClaimInformationCategoryCS#discharge-status
* supportingInfo[discharge-status].code from NUBCPatientDischargeStatusVS (required)
* supportingInfo[admtype].category.coding.code = ClaimInformationCategoryCS#admtype 
* supportingInfo[admtype].code from NUBCPriorityOfAdmissionnVS (required)
* supportingInfo[pointoforigin].category.coding.code = ClaimInformationCategoryCS#admsrc
* supportingInfo[pointoforigin].code from NUBCPointOfOriginVS (required)
* supportingInfo[frequencyCode].category.coding.code = ClaimInformationCategoryCS#tob-frequency
* supportingInfo[serviceClassificationCode].category.coding.code = ClaimInformationCategoryCS#tob-billclassification
* supportingInfo[facilityTypeCode].category.coding.code = ClaimInformationCategoryCS#tob-typeoffacility
* supportingInfo[claimReceivedDate].category.coding.code = ClaimInformationCategoryCS#clmrecvddate
* supportingInfo[referringProviderNetworkStatus].category.coding.code = ClaimInformationCategoryCS#referringnetworkcontractingstatus
* supportingInfo[referringProviderNetworkStatus].code from ProviderNetworkStatusVS (required) 
* supportingInfo[discharge-status].code from NUBCPatientDischargeStatusVS (required)
* supportingInfo[billingProviderNetworkStatus].category.coding.code = ClaimInformationCategoryCS#billingnetworkcontractingstatus
* supportingInfo[billingProviderNetworkStatus].code from ProviderNetworkStatusVS (required) 
* item.revenue from NUBCRevenueCodeVS (required)
* careTeam.role from PayerOutpatientFacilityProviderRoleVS (required)
* diagnosis.type from DiagnosisTypeFacilityVS (required)
* diagnosis.diagnosisCodeableConcept from ICD10CMVS (required)
* payment.type from  BenefitPaymentStatusVS (required)

Profile: CARINBBExplanationOfBenefitPharmacy
Parent: CARIN-BB-ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit-Pharmacy
Title: "CARIN BB ExplanationOfBenefit Pharmacy"
Description: "This profile is built upon the CARINBBExplanationOfBenefit Profile. The profile is used for Explanation of Benefits (EOBs) based on claims submitted by retail pharmacies. 
The claims data is based on submission standards adopted by the Department of Health and Human Services defined by NCPDP (National Council for Prescription Drug Program)"
* type.coding.code = #pharmacy 
* provider only Reference(CARINBBOrganization | CARINBBPractitionerRole | CARINBBPractitioner)
* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path = "category.coding.code"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false   // can be omitted, since false is the default
* supportingInfo ^slicing.description = "Slice based on value pattern"
* supportingInfo contains 
   brandGenericCode 0..1 and
   rxOriginCode 0..1 and
   refillNum 0..1 and
   dawCode 0..1 and
   claimReceivedDate 0..1 and
   daysSupply 0..1 and
   billingProviderNetworkStatus 0..1 
* supportingInfo[brandGenericCode].category.coding.code = #brandGenericCode   
* supportingInfo[brandGenericCode].code from NCPDPBrandGenericCodeVS (required)
* supportingInfo[rxOriginCode].category.coding.code = #rxOriginCode   
* supportingInfo[rxOriginCode].code from NCPDPPrescriptionOriginCodeVS (required)
* supportingInfo[refillNum].category.coding.code = #refillnum
* supportingInfo[dawCode].category.coding.code = #dawCode        
* supportingInfo[dawCode].code from NCPDPDispensedAsWrittenVS (required)
* supportingInfo[claimReceivedDate].category.coding.code = #clmrecvddate
* supportingInfo[daysSupply].category.coding.code = #daysSupply
* supportingInfo[billingProviderNetworkStatus].category.coding.code = #billingnetworkcontractingstatus
* supportingInfo[billingProviderNetworkStatus].code from ProviderNetworkStatusVS (required) 
* item.productOrService from FDANationalDrugCodeVS (required)
* item.detail.productOrService  from FDANationalDrugCodeVS (required)
* item.revenue 0..0
* careTeam.role from PayerPharmacyProviderRoleVS (required)

Profile: CARINBBExplanationOfBenefitProfessionalNonClinician
Parent: CARIN-BB-ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit-Professional-NonClinician
Title: "CARIN BB ExplanationOfBenefit Professional NonClinician"
Description: "This profile is built upon the CARINBBExplanationOfBenefit Profile. The profile is used for Explanation of Benefits (EOBs) based on claims submitted by physicians, suppliers and other non-institutional providers for professional services. These services may be rendered in inpatient or outpatient, including office locations. 
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
   billingnetworkcontractingstatus 0..1 and
   referringnetworkcontractingstatus 0..1 and
   performingnetworkcontractingstatus 0..1 and
   sitenetworkcontractingstatus 0..1 and
   clmrecvddate 0..1 
* supportingInfo[billingnetworkcontractingstatus].category.coding.code = #billingnetworkcontractingstatus 
* supportingInfo[billingnetworkcontractingstatus].code from ProviderNetworkStatusVS  (required)
* supportingInfo[billingnetworkcontractingstatus].category.coding 1..1
* supportingInfo[billingnetworkcontractingstatus].category.coding.system 1..1
* supportingInfo[billingnetworkcontractingstatus].category.coding.code 1..1
* supportingInfo[referringnetworkcontractingstatus].category.coding.code = #referringnetworkcontractingstatus
* supportingInfo[referringnetworkcontractingstatus].code from ProviderNetworkStatusVS  (required)
* supportingInfo[performingnetworkcontractingstatus].category.coding.code = #performingnetworkcontractingstatus
* supportingInfo[performingnetworkcontractingstatus].code from ProviderNetworkStatusVS  (required)
* supportingInfo[sitenetworkcontractingstatus].category.coding.code = #sitenetworkcontractingstatus
* supportingInfo[sitenetworkcontractingstatus].code from ProviderNetworkStatusVS  (required)
* supportingInfo[clmrecvddate].category.coding.code = #clmrecvddate
* supportingInfo[clmrecvddate].timing[x] only date 
* supportingInfo[clmrecvddate].timing[x] 1..1
* careTeam.role from PayerProfessionalAndNonClinicianProviderRoleVS (required)
* diagnosis.type from DiagnosisTypeProfessionalNonClinicianVS (required)
* item.revenue 0..0
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
* item.adjudication[adjudicationamounttype].category from ClaimAdjudicationCategoryVS (required)
* item.adjudication[inoutnetwork].category from BenefitPaymentStatusCategoryVS (required)


// Do all references to Organization in this profile need to target CARINBBOrganization?
Profile: CARINBBOrganization
Parent:  $USCoreOrganization
Id:  CARIN-BB-Organization
Title: "CARIN BB Organization"
Description: "CARIN Blue Button Organization Profile."
* identifier.type 1..1
* identifier contains 
   TIN 0..*
* identifier.type from IdentiferTypeVS (extensible)
* identifier[NPI].type.coding.code = #NPI
* identifier[NPI].type.coding 1..1
* identifier[NPI].type.coding.code 1..1 
* identifier[TIN].type.coding.code = #TAX
* identifier[TIN].type.coding 1..1
* identifier[TIN].type.coding.code 1..1 
* identifier[TIN].system = "urn:oid:2.16.840.1.113883.4.4"

Profile: CARINBBPatient
Parent: $USCorePatient
Id: CARIN-BB-Patient
Title: "CARIN BB Patient"
Description: "CARIN Blue Button Patient Profile."
* identifier.type from IdentiferTypeVS (extensible)
* identifier ^slicing.discriminator.type = #value 
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false   // can be omitted, since false is the default
* identifier ^slicing.description = "Slice based on  pattern"
* identifier contains 
   memberid 1..* MS and
   medrecnum 0..* MS and
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



Profile: CARINBBPractitionerRole
Parent: $USCorePractitionerRole
Id: CARIN-BB-PractitionerRole
Title: "CARIN BB PractitionerRole"
Description: "CARIN Blue Button PractitionerRole Profile."
* organization only Reference(CARINBBOrganization)
* practitioner only Reference(CARINBBPractitioner)
* location only Reference (CARINBBLocation)

// What needs to change?
Profile: CARINBBPractitioner
Parent: $USCorePractitioner
Id: CARIN-BB-Practitioner
Title: "CARIN BB Practitioner"
Description: "CARIN Blue Button Practitioner Profile."

// WHat needs to change?
Profile: CARINBBLocation
Parent: $USCoreLocation
Id: CARIN-BB-Location
Title: "CARIN BB Location"
Description: "CARIN Blue Button Location Profile."
