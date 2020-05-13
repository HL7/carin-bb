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
* class ^slicing.discriminator.type = #pattern
* class ^slicing.discriminator.path = "value:type"
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
* provider only Reference(CARINBBOrganization)
* related 0..* MS
* related.relationship 1..1
* related.relationship from RelatedClaimVS (extensible)
* payee 0..1 MS
* payee.type 1..1
* payee.party 1..1
* payee.party only Reference(CARINBBPractitionerRole | CARINBBPatient)
* careTeam 0..* MS 
* careTeam.provider 1..1
* careTeam.provider only Reference(CARINBBPractitionerRole)
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
* item.locationReference only Reference(CARINBBLocation)
* item.quantity 0..1 MS
* item.net 0..1 MS
* total.category from AdjudicationAmountCategoryVS (extensible)
* payment.adjustmentReason from AdjudicationDenialReasonVS (extensible)

Profile: CARINBBExplanationOfBenefitInpatientFacility
Parent: CARIN-BB-ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit-Inpatient-Facility
Title: "CARIN BB ExplanationOfBenefit Inpatient Facility"
Description: "This profile is built upon the CARINBBExplanationOfBenefit Profile. The profile is used for Explanation of Benefits (EOBs) based on claims submitted by clinics, hospitals, skilled nursing facilities and other institutions for inpatient services, which may include the use of equipment and supplies, laboratory services, radiology services and other charges. Inpatient claims are submitted for services rendered at a facility as part of an overnight stay. 
The claims data is based on the institutional claim format UB-04, submission standards adopted by the Department of Health and Human Services as form CMS-1450."
* type.coding 1..1
* type.coding.code = #inpatient-facility
* supportingInfo ^slicing.discriminator.path = "value:category.coding.code"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false   // can be omitted, since false is the default
* supportingInfo ^slicing.description = "Slice based on value pattern"

* supportingInfo contains 
   billingnetworkcontractingstatus 0..1 and
   attendingnetworkcontractingstatus 0..1 and
   referringnetworkcontractingstatus 0..1 and
   clmrecvddate 0..1 and
   typeofservice 0..1 and
   tob-typeoffacility 0..1 and
   tob-billclassification 0..1 and 
   tob-frequency 0..1 and
   admsrc 0..1 and 
   admtype 0..1 and 
   discharge-status 0..1 and 
   ms-drg 0..1 and 
   placeofservice 0..1

* supportingInfo.category.coding.system = "http://hl7.org/fhir/us/carin/CodeSystem/carin-bb-claiminformationcategory"
* supportingInfo[billingnetworkcontractingstatus].category.coding.code = #billingnetworkcontractingstatus 
* supportingInfo[billingnetworkcontractingstatus].code from NetworkContractingStatusVS  (required)
* supportingInfo[attendingnetworkcontractingstatus].category.coding.code = #attendingnetworkcontractingstatus
* supportingInfo[attendingnetworkcontractingstatus].code from NetworkContractingStatusVS  (required)
* supportingInfo[referringnetworkcontractingstatus].category.coding.code = #referringnetworkcontractingstatus
* supportingInfo[referringnetworkcontractingstatus].code from NetworkContractingStatusVS  (required)
* supportingInfo[clmrecvddate].category.coding.code = #clmrecvddate
* supportingInfo[clmrecvddate].timing[x] only date 
* supportingInfo[clmrecvddate].timing[x] 1..1
* supportingInfo[typeofservice].category.coding.code = #typeofservice
* supportingInfo[typeofservice].code from TypeOfServiceVS  (required)
* supportingInfo[tob-typeoffacility].category.coding.code = #tob-typeoffacility
* supportingInfo[tob-typeoffacility].code from TypeOfFacilityVS (required)
* supportingInfo[tob-billclassification].category.coding.code = #tob-billclassification
* supportingInfo[tob-billclassification].code from TypeOfBillClassificationVS  (required)
* supportingInfo[tob-frequency].category.coding.code = #tob-frequency
* supportingInfo[tob-frequency].code from TypeOfBillFrequencyVS  (required)
* supportingInfo[admsrc].category.coding.code = #admsrc
* supportingInfo[admsrc].code from NUBCPointOfOriginVS (required)
* supportingInfo[admtype].category.coding.code = #admtype
* supportingInfo[admtype].code from NUBCPriorityOfAdmissionnVS  (required)
* supportingInfo[discharge-status].category.coding.code = #discharge-status
* supportingInfo[discharge-status].code from NUBCPatientDischargeStatusVS   (required)
* supportingInfo[ms-drg].category.coding.code = #ms-drg
* supportingInfo[ms-drg].code from MSDRGVS  (required)
* supportingInfo[placeofservice].category.coding.code = #placeofservice


Profile: CARINBBExplanationOfBenefitOutpatientFacility
Parent: CARIN-BB-ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit-Outpatient-Facility
Title: "CARIN BB ExplanationOfBenefit Outpatient Facility"
Description: "This profile is built upon the CARINBBExplanationOfBenefit Profile. The profile is used for Explanation of Benefits (EOBs) based on claims submitted by clinics, hospitals, skilled nursing facilities and other institutions for outpatient services, which may include including the use of equipment and supplies, laboratory services, radiology services and other charges. Outpatient claims are submitted for services rendered at a facility that are not part of an overnight stay. 
The claims data is based on the institutional claim form UB-04, submission standards adopted by the Department of Health and Human Services as form CMS-1450."
* type.coding.code = #outpatient-facility
* supportingInfo.category.coding.system = "http://hl7.org/fhir/us/carin/CodeSystem/carin-bb-claiminformationcategory" // ClaimInformationCategoryCS 
* supportingInfo ^slicing.discriminator.path = "value:category.coding.code"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false   // can be omitted, since false is the default
* supportingInfo ^slicing.description = "Slice based on value pattern"
* supportingInfo contains 
   placeOfServiceCode 0..1 and
   patientDischargeStatusCode 0..1 and
   sourceInpatientAdmissionTypeCode 0..1 and
   sourceInpatientAdmissionCode 0..1 and
   frequencyCode 0..1 and
   serviceClassificationCode 0..1 and
   facilityTypeCode 0..1 and 
   claimReceivedDate 0..1 and
   referringProviderNetworkStatus 0..1 and 
   billingProviderNetworkStatus 0..1 
* supportingInfo[placeOfServiceCode].category.coding.code = #placeofservice
* supportingInfo[patientDischargeStatusCode].category.coding.code = #discharge-status
* supportingInfo[sourceInpatientAdmissionTypeCode].category.coding.code = #admtype 
* supportingInfo[sourceInpatientAdmissionCode].category.coding.code = #admsrc
* supportingInfo[sourceInpatientAdmissionCode].code from NUBCPointOfOriginVS (required)
* supportingInfo[frequencyCode].category.coding.code = #tob-frequency
* supportingInfo[serviceClassificationCode].category.coding.code = #tob-billclassification
* supportingInfo[facilityTypeCode].category.coding.code = #tob-typeoffacility
* supportingInfo[claimReceivedDate].category.coding.code = #clmrecvddate
* supportingInfo[referringProviderNetworkStatus].category.coding.code = #referringnetworkcontractingstatus
* supportingInfo[billingProviderNetworkStatus].category.coding.code = #billingnetworkcontractingstatus


Profile: CARINBBExplanationOfBenefitPharmacy
Parent: CARIN-BB-ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit-Pharmacy
Title: "CARIN BB ExplanationOfBenefit Pharmacy"
Description: "This profile is built upon the CARINBBExplanationOfBenefit Profile. The profile is used for Explanation of Benefits (EOBs) based on claims submitted by retail pharmacies. 
The claims data is based on submission standards adopted by the Department of Health and Human Services defined by NCPDP (National Council for Prescription Drug Program)"
* type.coding.code = #pharmacy 
* supportingInfo.category.coding.system = "http://hl7.org/fhir/us/carin/CodeSystem/carin-bb-claiminformationcategory" // ClaimInformationCategoryCS 
* supportingInfo ^slicing.discriminator.path = "value:category.coding.code"
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
* supportingInfo[brandGenericCode].category.coding.code = #brandGenericCode   //BrandGeneric Code?
* supportingInfo[rxOriginCode].category.coding.code = #rxOriginCode   // Code?
* supportingInfo[refillNum].category.coding.code = #refillnum
* supportingInfo[dawCode].category.coding.code = #dawCode        // DAW Code?
* supportingInfo[claimReceivedDate].category.coding.code = #clmrecvddate
* supportingInfo[daysSupply].category.coding.code = #daysSupply
* supportingInfo[billingProviderNetworkStatus].category.coding.code = #billingnetworkcontractingstatus

Profile: CARINBBExplanationOfBenefitProfessionalNonClinician
Parent: CARIN-BB-ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit-Professional-NonClinician
Title: "CARIN BB ExplanationOfBenefit Professional NonClinician"
Description: "This profile is built upon the CARINBBExplanationOfBenefit Profile. The profile is used for Explanation of Benefits (EOBs) based on claims submitted by physicians, suppliers and other non-institutional providers for professional services. These services may be rendered in inpatient or outpatient, including office locations. 
The claims data is based on the professional claim form 1500, submission standards adopted by the Department of Health and Human Services as form CMS-1500."
* type.coding.code = #professional-nonclinician 
* supportingInfo.category.coding.system = "http://hl7.org/fhir/us/carin/CodeSystem/carin-bb-claiminformationcategory" // ClaimInformationCategoryCS 
* supportingInfo ^slicing.discriminator.path = "value:category.coding.code"
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
* supportingInfo[billingnetworkcontractingstatus].code from NetworkContractingStatusVS  (required)
* supportingInfo[referringnetworkcontractingstatus].category.coding.code = #referringnetworkcontractingstatus
* supportingInfo[referringnetworkcontractingstatus].code from NetworkContractingStatusVS  (required)
* supportingInfo[performingnetworkcontractingstatus].category.coding.code = #performingnetworkcontractingstatus
* supportingInfo[performingnetworkcontractingstatus].code from NetworkContractingStatusVS  (required)
* supportingInfo[sitenetworkcontractingstatus].category.coding.code = #sitenetworkcontractingstatus
* supportingInfo[sitenetworkcontractingstatus].code from NetworkContractingStatusVS  (required)
* supportingInfo[clmrecvddate].category.coding.code = #clmrecvddate
* supportingInfo[clmrecvddate].timing[x] only date 
* supportingInfo[clmrecvddate].timing[x] 1..1


Profile: CARINBBOrganization
Parent: Organization
Id:  CARIN-BB-Organization
Title: "CARIN BB Organization"
Description: "CARIN Blue Button Organization Profile."

Profile: CARINBBPatient
Parent: $USCorePatient
Id: CARIN-BB-Patient
Title: "CARIN BB Patient"
Description: "CARIN Blue Button Patient Profile."

Profile: CARINBBPractitioner
Parent: $USCorePractitioner
Id: CARIN-BB-Practitioner
Title: "CARIN BB Practitioner"
Description: "CARIN Blue Button Practitioner Profile."

Profile: CARINBBPractitionerRole
Parent: $USCorePractitionerRole
Id: CARIN-BB-PractitionerRole
Title: "CARIN BB PractitionerRole"
Description: "CARIN Blue Button PractitionerRole Profile."

Profile: CARINBBLocation
Parent: $USCoreLocation
Id: CARIN-BB-Location
Title: "CARIN BB Location"
Description: "CARIN Blue Button Location Profile."
