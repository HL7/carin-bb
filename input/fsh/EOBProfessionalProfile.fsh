Profile: C4BBExplanationOfBenefitProfessionalNonClinician
Parent: C4BB-ExplanationOfBenefit
Id: C4BB-ExplanationOfBenefit-Professional-NonClinician
Title: "C4BB ExplanationOfBenefit Professional NonClinician"
Description: "This profile is used for Explanation of Benefits (EOBs) based on claims submitted by physicians, suppliers and other non-institutional providers for professional and vision services. These services may be rendered in inpatient or outpatient, including office locations. The claims data is based on the professional claim form 1500, submission standards adopted by the Department of Health and Human Services as form CMS-1500."
// 20210322 CAS: FHIR-30575
//* insert Metaprofile-supportedProfile-slice
//* meta.profile[supportedProfile] = Canonical(C4BBExplanationOfBenefitProfessionalNonClinician|1.2.0)
* obeys EOB-professional-nonclinician-meta-profile-version
* obeys EOB-prof-all-transportation-supportinginfo-linked-to-line

* careTeam obeys EOB-prof-careTeam-practitioner
* careTeam.qualification MS
* careTeam.qualification from $USCoreProviderSpecialty (required)  // cardinality constraint?

* billablePeriod 1..1
//* type = $HL7ClaimTypeCS#professional
* type from C4BBProfessionalAndNonClinicianClaimType (required)


// * provider only Reference(C4BBOrganization or C4BBPractitionerRole or C4BBPractitioner) -- set in base class
* insert SupportingInfoSlicing
* supportingInfo contains
   clmrecvddate 0..1 MS and
   servicefacility 0..1 MS and
   // 20210312 CAS: https://jira.hl7.org/browse/FHIR-31534 - Medical Record Number and Patient Account Number
   medicalrecordnumber 0..1 MS and
   patientaccountnumber 0..1 MS and
   patientweight 0..* MS and
   ambulancetransportreason 0..* MS and
   transportationdistance 0..* MS and
   roudtrippurpose 0..* MS and
   stretcherpurpose 0..* MS and
   pickuplocation 0..* MS and
   dropofflocation 0..* MS

* supportingInfo[clmrecvddate] ^short = "Claim received date"
* supportingInfo[clmrecvddate].category = C4BBSupportingInfoType#clmrecvddate
* supportingInfo[clmrecvddate].category MS
* supportingInfo[clmrecvddate].timing[x] only date
* supportingInfo[clmrecvddate].timing[x] 1..1 MS

* supportingInfo[servicefacility] ^short = "Service facility"
* supportingInfo[servicefacility].category = C4BBSupportingInfoType#servicefacility
* supportingInfo[servicefacility].category MS
* supportingInfo[servicefacility].valueReference 1..1 MS
* supportingInfo[servicefacility].valueReference only Reference(C4BBOrganization)
// 20210312 CAS: https://jira.hl7.org/browse/FHIR-31534 - Medical Record Number and Patient Account Number
* supportingInfo[medicalrecordnumber] ^short = "Medical record number"
* supportingInfo[medicalrecordnumber].category = C4BBSupportingInfoType#medicalrecordnumber
* supportingInfo[medicalrecordnumber].valueString 1..1 MS

* supportingInfo[patientaccountnumber] ^short = "Patient account number"
* supportingInfo[patientaccountnumber].category = C4BBSupportingInfoType#patientaccountnumber
* supportingInfo[patientaccountnumber].valueString 1..1 MS


* supportingInfo[patientweight].category = C4BBSupportingInfoType#patientweight
* supportingInfo[patientweight].value[x] only Quantity
* supportingInfo[patientweight].valueQuantity 1..1
* supportingInfo[patientweight].valueQuantity.unit = "[lb_av]"
* supportingInfo[patientweight].valueQuantity.system = "http://unitsofmeasure.org"
* supportingInfo[patientweight].valueQuantity.value 1..1
* supportingInfo[patientweight].code 0..0
* supportingInfo[patientweight].timing[x] 0..0

* supportingInfo[ambulancetransportreason].category = C4BBSupportingInfoType#ambulancetransportreason
* supportingInfo[ambulancetransportreason].reason 1..1
* supportingInfo[ambulancetransportreason].reason from C4BBAmbulanceTransportReason (required)
* supportingInfo[ambulancetransportreason].code 0..0
* supportingInfo[ambulancetransportreason].timing[x] 0..0

* supportingInfo[transportationdistance].category = C4BBSupportingInfoType#transportationdistance
* supportingInfo[transportationdistance].value[x] only Quantity
* supportingInfo[transportationdistance].valueQuantity 1..1
* supportingInfo[transportationdistance].valueQuantity.unit = "[mi_i]"
* supportingInfo[transportationdistance].valueQuantity.system = "http://unitsofmeasure.org"
* supportingInfo[transportationdistance].valueQuantity.value 1..1
* supportingInfo[transportationdistance].code 0..0
* supportingInfo[transportationdistance].timing[x] 0..0

* supportingInfo[roudtrippurpose].category = C4BBSupportingInfoType#roudtrippurpose
* supportingInfo[roudtrippurpose].value[x] only string
* supportingInfo[roudtrippurpose].valueString 1..1
* supportingInfo[roudtrippurpose].code 0..0
* supportingInfo[roudtrippurpose].timing[x] 0..0

* supportingInfo[stretcherpurpose].category = C4BBSupportingInfoType#stretcherpurpose
* supportingInfo[stretcherpurpose].value[x] only string
* supportingInfo[stretcherpurpose].valueString 1..1
* supportingInfo[stretcherpurpose].code 0..0
* supportingInfo[stretcherpurpose].timing[x] 0..0

* supportingInfo[pickuplocation].category = C4BBSupportingInfoType#pickuplocation
* supportingInfo[pickuplocation].value[x] only string
* supportingInfo[pickuplocation].valueString 1..1
* supportingInfo[pickuplocation].code 0..0
* supportingInfo[pickuplocation].timing[x] 0..0

* supportingInfo[dropofflocation].category = C4BBSupportingInfoType#dropofflocation
* supportingInfo[dropofflocation].value[x] only string
* supportingInfo[dropofflocation].valueString 1..1
* supportingInfo[dropofflocation].code 0..0
* supportingInfo[dropofflocation].timing[x] 0..0


* careTeam.role from C4BBClaimProfessionalAndNonClinicianCareTeamRole   (required)  // was PayerProfessionalAndNonClinicianProviderRole
* careTeam.role 1..1 MS
* diagnosis 1..* MS
* diagnosis.type 1..1 MS
* diagnosis.type from C4BBClaimProfessionalAndNonClinicianDiagnosisType  (required)
* diagnosis.diagnosis[x] 1..1 MS
* diagnosis.diagnosis[x] only CodeableConcept
* diagnosis.diagnosis[x] from CDCICD910CMDiagnosisCodes (required)
* item.modifier from AMACPTCMSHCPCSModifiers (required)
// CAS 20210118: Add MS to Professional and NonClinican item.productOrService and item.modifier https://jira.hl7.org/browse/FHIR-30358
* item.modifier MS
* item.productOrService from AMACPTCMSHCPCSProcedureCodes (required)
* item.productOrService obeys EOB-vision-item-productorservice
// 20210201 CAS: FHIR-30357 - item.productOrService is required when item.revenue is provided
//* item.productOrService obeys EOB-prof-item-productorservice
// CAS 20210118: Add MS to Professional and NonClinican item.productOrService and item.modifier https://jira.hl7.org/browse/FHIR-30358
* item.productOrService MS
* item.serviced[x] 1..1
// FHIR-34148 - Make Professional NonClinician EoB item.location required Persuasive, change cardinality to 1..1 and maske Must Support
* item.location[x] 1..1 MS
* item.location[x] only CodeableConcept
* item.locationCodeableConcept from CMSPlaceofServiceCodes (required)

* insert AdjudicationSlicing
* adjudication MS
* adjudication contains
   billingnetworkcontractingstatus 0..1 MS and
   renderingnetworkcontractingstatus 0..1 MS

* adjudication[billingnetworkcontractingstatus] ^short = "Billing provider contracting status"
* adjudication[billingnetworkcontractingstatus].category = C4BBAdjudicationDiscriminator#billingnetworkcontractingstatus
* adjudication[billingnetworkcontractingstatus].category MS
* adjudication[billingnetworkcontractingstatus].reason from C4BBPayerProviderContractingStatus  (required)
* adjudication[billingnetworkcontractingstatus].reason 1..1 MS

* adjudication[renderingnetworkcontractingstatus] ^short = "Rendering provider contracting status"
* adjudication[renderingnetworkcontractingstatus].category = C4BBAdjudicationDiscriminator#renderingnetworkcontractingstatus
* adjudication[renderingnetworkcontractingstatus].category MS
* adjudication[renderingnetworkcontractingstatus].reason from C4BBPayerProviderContractingStatus  (required)
* adjudication[renderingnetworkcontractingstatus].reason 1..1 MS

* insert ItemAdjudicationSlicing
* item.adjudication MS
* item.adjudication contains
   adjudicationamounttype 1..* MS and
   adjustmentreason 0..1 MS and
   benefitpaymentstatus 1..1 MS and
   allowedunits 0..1 MS

* item.adjudication[allowedunits] ^short = "The quantity of units, times, days, visits, services, or treatments for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider.  (149)"
* item.adjudication[allowedunits].category = C4BBAdjudicationDiscriminator#allowedunits
* item.adjudication[allowedunits].value only decimal
* item.adjudication[adjustmentreason].category  = C4BBAdjudicationDiscriminator#adjustmentreason
* item.adjudication[adjustmentreason].reason from X12ClaimAdjustmentReasonCodesCMSRemittanceAdviceRemarkCodes
* item.adjudication[adjustmentreason].reason 1..1 MS
* item.adjudication[adjustmentreason] ^short = "Reason codes used to interpret the Non-Covered Amount (92)"

* item.adjudication[adjudicationamounttype] ^short =  "Line level adjudication type and amount"
* item.adjudication[adjudicationamounttype].category from C4BBAdjudication
* item.adjudication[adjudicationamounttype] ^short = "Amounts"
* item.adjudication[adjudicationamounttype].amount  MS
* item.adjudication[adjudicationamounttype].amount 1..1

* item.adjudication[benefitpaymentstatus] ^short = "Indicates the in network or out of network payment status of the claim. (142)"
* item.adjudication[benefitpaymentstatus].category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
* item.adjudication[benefitpaymentstatus].reason from  C4BBPayerBenefitPaymentStatus  (required)
* item.adjudication[benefitpaymentstatus].reason 1..1 MS

* insert TotalSlicing
* total.category from C4BBAdjudication  (extensible)
* total contains
   adjudicationamounttype 1..* MS

* total[adjudicationamounttype] ^short =  "Total adjudication type and amount"
* total[adjudicationamounttype].category from C4BBAdjudication  (required)

* supportingInfo[clmrecvddate] ^comment = "The date the claim was received by the payer (88)"

* supportingInfo[servicefacility] ^comment = "Service Facility Location information conveys the name, full address and identifier of the facility where services were rendered when that is different from the Billing/Rndering Provider. Service Facility Location is not just an address nor is it a patient’s home. Examples of Service Facility Location include hospitals, nursing homes, laboratories or homeless shelter. Service Facility Location identifier is the facility’s Type 2 Organization NPI if they are a health care provider as defined under HIPAA.
If the service facility is not assigned an NPI, this data element will not be populated.  Reference CMS 1500 element 32a (97, 170, 176)"
* supportingInfo[medicalrecordnumber] ^comment = "Provider submitted medical record number that can be included on the claim. (109)"
* supportingInfo[patientaccountnumber] ^comment = "Provider assigned patient account number that can be included on the claim. (109)"
* adjudication[billingnetworkcontractingstatus] ^comment = "Indicates that the Billing Provider has a contract with the Plan (regardless of the network) as of the effective date of service or admission. (101)"
* adjudication[renderingnetworkcontractingstatus] ^comment = "Indicates that the Billing Provider has a contract with the Payer as of the effective date of service or admission. (101)"
* item.adjudication[allowedunits] ^comment = "The quantity of units, times, days, visits, services, or treatments allowed for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider. (149)"
* item.adjudication[adjustmentreason] ^comment = "Reason codes used to interpret the Non-Covered Amount that are provided to the Provider. (92)"
* item.adjudication[adjudicationamounttype] ^comment = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* item.adjudication[benefitpaymentstatus] ^comment = "Indicates the in network or out of network payment status of the claim. (142)"
* total[adjudicationamounttype] ^comment = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* diagnosis ^comment = "Diagnosis codes describe an individual's disease or medical condition. (6, 7, 8, 21, 22, 23, 30)"
* diagnosis.type ^comment = "Indicates if the professional and non-clinician diagnosis is principal or secondary (21, 22, 23)"
* diagnosis.sequence ^comment =  "Diagnosis.sequence values do not necessarily indicate any order in which the diagnosis was reported or identified.  client app implementations should not assign any significance to the sequence values.  client app implementations should use the values of diagnosis.type to identify primary, secondary, etc."
* item.productOrService ^comment = "Medical procedure a patient received from a health care provider. Current coding methods include: CPT-4 and HCFA Common Procedure Coding System Level II - (HCPCSII). (40)"
* item.modifier ^comment = "Modifier(s) for the procedure represented on this line. Identifies special circumstances related to the performance of the service. (41)"
* item.quantity ^comment = "The quantity of units, times, days, visits, services, or treatments for the service described by the HCPCS code or CPT procedure code, submitted by the provider. (42)"
* item.location[x] ^comment = "Code indicating the location, such as inpatient, outpatient facility, office, or home health agency, where this service was performed. (46)"
* careTeam.provider ^comment = "The National Provider Identifier assigned to the primary, supervising, rendering, purchased service and referring care team. (95, 96, 99)"
* item.serviced[x]  ^comment = "Date services began/ended. Located on CMS 1500 (Form Locator 24A) (118)"
* total.amount ^comment = "Total amount for each category (i.e., submitted, eligible, etc.) (148)"

* insert EOBBaseProfileComments


//FHIR-37615
//Fields to report non-emergency transportation services data
//Create Invariant requiring all ExplanationOfBenefit.SupportingInfo where category from C4BBTransportationServiceCategories sequence is referenced in ExplanationOfBenefit.line.informationSequence
// Potential starter to test
// supportingInfo.where(memberOf('C4BBTransportationServiceCategories'))).sequence.subsetOf(item.informationSequence.distinct())