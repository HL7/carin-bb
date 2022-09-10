Profile: C4BBExplanationOfBenefitOral
Parent: C4BB-ExplanationOfBenefit
Id: C4BB-ExplanationOfBenefit-Oral
Title: "C4BB ExplanationOfBenefit Oral"
Description: "This profile is used for Explanation of Benefits (EOBs) based on claims submitted by providers of oral services including Dental, Denture and Hygiene. The ADA Dental Claim Form provides a common format for reporting dental services to a patient's dental benefit plan."
// 20210216 CAS: FHIR-30575
//* insert Metaprofile-supportedProfile-slice
//* meta.profile[supportedProfile] = Canonical(C4BBExplanationOfBenefitOral|1.2.0)
* obeys EOB-oral-meta-profile-version


* obeys Oral-EOB-supportinginfo-additionalbodysite-requires-line-item
* obeys Oral-line-item-with-linked-additionalbody-site-requires-bodysite
* obeys Oral-EOB-surface-subsite-requires-tooth-number

* careTeam obeys EOB-prof-careTeam-practitioner
* careTeam.qualification MS
* careTeam.qualification from $USCoreProviderSpecialty (required)  // cardinality constraint?
* type = $HL7ClaimTypeCS#oral
* provider only Reference(C4BBPractitioner)
* insert SupportingInfoSlicing
* supportingInfo contains
   clmrecvddate 0..1 MS and
   servicefacility 0..1 MS and
   orthodontics 0..1 MS and
   prosthesis 0..1 MS and
   additionalbodysite 0..* MS and
   missingtoothnumber 0..* MS and
   medicalrecordnumber 0..1 MS and
   patientaccountnumber 0..1 MS
   

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


* supportingInfo[orthodontics] ^short = "Orthodontics treatment indicator"
* supportingInfo[orthodontics].category = C4BBSupportingInfoType#orthodontics
* supportingInfo[orthodontics].category MS
* supportingInfo[orthodontics].timingDate ^short = "Orthodontics appliance application date (200)"
* supportingInfo[orthodontics].value[x] only Quantity
* supportingInfo[orthodontics].value[x] 1..1 MS
* supportingInfo[orthodontics].valueQuantity ^short = "Total number of months for orthodontia"

* supportingInfo[prosthesis] ^short = "Prosthesis"
* supportingInfo[prosthesis].category = C4BBSupportingInfoType#prosthesis
* supportingInfo[prosthesis].category MS
* supportingInfo[prosthesis].value[x] only boolean
* supportingInfo[prosthesis].value[x] 1..1 MS
* supportingInfo[prosthesis].valueBoolean ^short = "Prosthesis replacement indicator (202"
* supportingInfo[prosthesis].timingDate ^short = "Date of prior prosthesis replacement  (203)"

* supportingInfo[additionalbodysite] ^short = "Additional tooth number or oral cavity code"
* supportingInfo[additionalbodysite].category = C4BBSupportingInfoType#additionalbodysite
* supportingInfo[additionalbodysite].category MS
* supportingInfo[additionalbodysite].sequence MS
* supportingInfo[additionalbodysite].code 1..1 MS
* supportingInfo[additionalbodysite].code from OralBodySite (required)

* supportingInfo[missingtoothnumber] ^short = "Missing tooth number"
* supportingInfo[missingtoothnumber].category = C4BBSupportingInfoType#missingtoothnumber
* supportingInfo[missingtoothnumber].category MS
* supportingInfo[missingtoothnumber].code 1..1 MS
* supportingInfo[missingtoothnumber].code from ADAUniversalNumberingSystem (required)

* supportingInfo[medicalrecordnumber] ^short = "Medical record number"
* supportingInfo[medicalrecordnumber].category = C4BBSupportingInfoType#medicalrecordnumber
* supportingInfo[medicalrecordnumber].valueString 1..1 MS

* supportingInfo[patientaccountnumber] ^short = "Patient account number"
* supportingInfo[patientaccountnumber].category = C4BBSupportingInfoType#patientaccountnumber
* supportingInfo[patientaccountnumber].valueString 1..1 MS

* careTeam.role from C4BBClaimProfessionalAndNonClinicianCareTeamRole   (required)  // was PayerProfessionalAndNonClinicianProviderRole
* careTeam.role 1..1 MS
* diagnosis 0..* MS
* diagnosis.type 1..1 MS
* diagnosis.type from C4BBClaimProfessionalAndNonClinicianDiagnosisType  (required)
* diagnosis.diagnosis[x] 1..1 MS
* diagnosis.diagnosis[x] only CodeableConcept
* diagnosis.diagnosis[x] from CDCICD910CMDiagnosisCodes (required)
* item.modifier from AMACPTCMSHCPCSModifiers (required)

* item.informationSequence MS
* item.modifier MS
* item.productOrService from ADADentalProcedureCode (required)

* item.productOrService MS
* item.location[x] 1..1 MS
* item.location[x] only CodeableConcept
* item.locationCodeableConcept from CMSPlaceofServiceCodes (required)

* item.bodySite MS
* item.bodySite ^short = "First tooth number or oral cavity code"
* item.bodySite from OralBodySite (required) // may change to $ToothNumber
* item.subSite ^short = "Tooth surface for all teeth on line"
* item.subSite from C4BBSurfaceCodes (required)

* insert AdjudicationSlicing
* adjudication MS
* adjudication contains
   billingnetworkcontractingstatus 0..1 MS and
   renderingnetworkcontractingstatus 1..1 MS and 
   benefitpaymentstatus 1..* MS

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

* adjudication[benefitpaymentstatus] ^short = "Indicates the in network or out of network payment status of the claim. (142)"
* adjudication[benefitpaymentstatus].category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
* adjudication[benefitpaymentstatus].reason from  C4BBPayerBenefitPaymentStatus  (required)
* adjudication[benefitpaymentstatus].reason 1..1 MS

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
//* total.category from C4BBAdjudication  (extensible)
* total contains
   adjudicationamounttype 1..* MS

* total[adjudicationamounttype] ^short =  "Total adjudication type and amount"
* total[adjudicationamounttype].category from C4BBAdjudication (required)



/*
Invariant:  Oral-EOB-subsite-requires-tooth
Description: "If item.subsite exists then tooth number is required in bodySite or supportingInfo"
Expression: "ExplanationOfBenefit.item.subSite.exists() implies ExplanationOfBenefit.supportingInfo.where(category.coding.code = 'additionalbodysite' and code.coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem').exists()"
Severity:   #error
//In variant
// ExplanationOfBenefit.item.subSite.exists() implies ExplanationOfBenefit.supportingInfo.where(category.coding.code = 'additionalbodysite' and code.coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem').exists()


// ExplanationOfBenefit.item.subSite.exists() implies ExplanationOfBenefit or ExplanationOfBenefit.supportingInfo.where(category.coding.code = 'additionalbodysite' and code.coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem').exists()
/*
subsite exists implies // ExplanationOfBenefit.item.subSite.exists() implies
   (
      item.bodysite is tooth // ExplanationOfBenefit.item.bodySite.where(coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem').exists()
   or

   )

   All item with subsite informationSequence(s)
      ExplanationOfBenefit.repeat(item.where(subSite.exists()).informationSequence)
   .intersect(
      supportingInfo where tooth sequence
      ExplanationOfBenefit.supportingInfo.where(category.coding.code = 'additionalbodysite' and code.coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem').sequence


Gather all of the item informationSequence that have a surface and the bodySite is not a toothnumber)
   ExplanationOfBenefit.repeat(item.where(subSite.exists() and bodySite.where(coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem').exists().not()).informationSequence)
intersect with the supportingInfo where there is a tooth number




*****************
EVERY ITEM WITH A SURFACE HAS AT LEAST ONE TOOTH ASSOCIATED WITH IT
*****************
*
****** ExplanationOfBenefit.repeat(item.where(subSite.exists() and bodySite.where(coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem').exists().not()))
.count() = 0 or ExplanationOfBenefit.repeat(item.where(subSite.exists() and bodySite.where(coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem').exists().not()).informationSequence).combine(ExplanationOfBenefit.supportingInfo.where(category.coding.code = 'additionalbodysite' and code.coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem').sequence).isDistinct().not()


Set where we need a tooth nuber in supportingInfo
   item.where(subSite.exists() and bodySite.where(coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem').exists().not())

The matching supportingInfo Sequence numbers
   %context.supportingInfo.where(code.coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem' and category.coding.code = 'additionalbodysite').sequence


Match for each line
   where(informationSequence.combine(%context.supportingInfo.where(code.coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem' and category.coding.code = 'additionalbodysite').sequence).isDistinct())

where(informationSequence.combine(%context.supportingInfo.where(code.coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem' and category.coding.code = 'additionalbodysite').sequence).isDistinct().not())

getting close
ExplanationOfBenefit.repeat(item.where(subSite.exists() and (bodySite.where(coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem').exists().not() or where(informationSequence.combine(%context.supportingInfo.where(code.coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem' and category.coding.code = 'additionalbodysite').sequence).isDistinct())))).count() = 0

   ExplanationOfBenefit.repeat(item.where(subSite.exists() and (bodySite.where(coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem').exists().not()
         (issue here) or where(informationSequence.combine(%context.supportingInfo.where(code.coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem' and category.coding.code = 'additionalbodysite').sequence).isDistinct())))).count() = 0






item.informationSequence.combine(%context.supportingInfo.where(code.coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem' and category.coding.code = 'additionalbodysite').sequence).isDistinct().not()

item.informationSequence.combine(%context.supportingInfo.where(code.coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem' and category.coding.code = 'additionalbodysite').sequence).isDistinct().not()


where we find in supporting info

   informationSequence.combine(%context.supportingInfo.where(code.coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem' and category.coding.code = 'additionalbodysite').sequence).isDistinct().not()


mucked
   item.where(bodySite.where(subSite.exists().not() or (coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem').exists().not() and informationSequence.combine(%context.supportingInfo.where(code.coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem' and category.coding.code = 'additionalbodysite').sequence).isDistinct()))







subSite.exists().not()
or
   bodySite.where(coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem').exists().not()
   or



single item success
   item.subSite.exists().not() or item.bodySite.where(coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem').exists() or item.where(informationSequence.combine(%context.supportingInfo.where(code.coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem' and category.coding.code = 'additionalbodysite').sequence).isDistinct()).count() = 0


closer
   item.where(subSite.exists() and (bodySite.where(coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem').exists().not() or informationSequence.combine(%context.supportingInfo.where(code.coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem' and category.coding.code = 'additionalbodysite').sequence).isDistinct()))


FINAL???!!!???!
   item.where(subSite.exists() and (bodySite.where(coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem').exists().not() and informationSequence.combine(%context.supportingInfo.where(code.coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem' and category.coding.code = 'additionalbodysite').sequence).isDistinct())).count() = 0
   item.where(subSite.exists() and (bodySite.where(coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem').exists().not() and informationSequence.combine(%context.supportingInfo.where(code.coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem' and category.coding.code = 'additionalbodysite').sequence).isDistinct())).count() = 0

*****************
EVERY TOOTH HAS A LINE ITEM
*****************

****** ExplanationOfBenefit.repeat(supportingInfo.where(code.coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem' and category.coding.code = 'additionalbodysite')).sequence.subsetOf(ExplanationOfBenefit.item.informationSequence)



ExplanationOfBenefit.repeat(item.where(subSite.exists() and bodySite.where(coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem').exists().not()).informationSequence).combine(ExplanationOfBenefit.supportingInfo.where(category.coding.code = 'additionalbodysite' and code.coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem').sequence).isDistinct().not()

ExplanationOfBenefit.repeat(supportingInfo.where(category.coding.code = 'additionalbodysite' and code.coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem').exists())

ExplanationOfBenefit.repeat(supportingInfo.where(category.coding.code = 'additionalbodysite' and code.coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem').exists())


ExplanationOfBenefit.repeat(supportingInfo.where(code.coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem' and category.coding.code = 'additionalbodysite'))



ExplanationOfBenefit.repeat(supportingInfo.where(code.coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem' and category.coding.code = 'additionalbodysite'))

ExplanationOfBenefit.repeat(supportingInfo.where(code.coding.system='http://hl7.org/fhir/us/carin-bb/CodeSystem/ADAUniversalNumberingSystem' and category.coding.code = 'additionalbodysite')).subsetOf(ExplanationOfBenefit.item.informationSequence)

*/
// This does not work if there is more than one line.



* supportingInfo[clmrecvddate] ^comment = "The date the claim was received by the payer (88)"
* supportingInfo[servicefacility] ^comment = "Service Facility Location information conveys the name, full address and identifier of the facility where services were rendered when that is different from the Billing/Rendering Provider. Service Facility Location is not just an address nor is it a patient’s home. Examples of Service Facility Location include hospitals, nursing homes, laboratories or homeless shelter. Service Facility Location identifier is the facility’s Type 2 Organization NPI if they are a health care provider as defined under HIPAA.
If the service facility is not assigned an NPI, this data element will not be populated.  Reference CMS 1500 element 32a (97, 170, 176)"

* supportingInfo[orthodontics] ^comment = "Orthodontics Treatment Indicator (199)"
* supportingInfo[orthodontics].code ^comment = "Indicates if the treatment is for orthodontics (199)"
* supportingInfo[orthodontics].timingDate ^comment = "Orthodontics Appliance Application Date (200)"
* supportingInfo[orthodontics].valueQuantity ^comment = "Total Number of Months for Orthodontia (201)"

* supportingInfo[prosthesis] ^comment = "Prosthesis Replacement Indicator (202)"
* supportingInfo[prosthesis].valueBoolean ^comment = "Prosthesis Replacement Indicator (202)"
* supportingInfo[prosthesis].timingDate ^comment = "Date of Prior Prosthesis Placement  (203)"


* supportingInfo[additionalbodysite] ^comment = "Additional Body Site - After First Occurrence (204). First tooth number or oral cavity code is indicated in bodySite. All additionalbodysite slices must be referenced by at least one item.informationSequence."
* supportingInfo[additionalbodysite].code ^comment = "Additional Body Site - After First Occurrence (204)"

* supportingInfo[missingtoothnumber] ^comment = "Missing Tooth Number - After First Occurrence (204)"
* supportingInfo[missingtoothnumber].code ^comment = "Missing Tooth Number - After First Occurrence (204)"



* item.bodySite ^comment = "Tooth Number - First Occurrence (196)"
* item.subSite ^comment = "Tooth Surface (197)"

* adjudication[billingnetworkcontractingstatus] ^comment = "Indicates that the Billing Provider has a contract with the Plan (regardless of the network) as of the effective date of service or admission. (101)"
* adjudication[renderingnetworkcontractingstatus] ^comment = "Indicates that the Billing Provider has a contract with the Payer as of the effective date of service or admission. (101)"
* adjudication[benefitpaymentstatus] ^comment = "Indicates the in network or out of network payment status of the claim. (142)"

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



Invariant:  Oral-EOB-surface-subsite-requires-tooth-number
Description: "If item.subsite (tooth surface) exists then tooth number is required in bodySite or supportingInfo[additionalBodySite]"
Expression: "item.where(subSite.exists() and (bodySite.where(coding.system='http://terminology.hl7.org/CodeSystem/ADAUniversalToothDesignationSystem').exists().not() and informationSequence.combine(%context.supportingInfo.where(code.coding.system='http://terminology.hl7.org/CodeSystem/ADAUniversalToothDesignationSystem' and category.coding.code = 'additionalbodysite').sequence).isDistinct())).count() = 0"
Severity:   #error

Invariant:  Oral-EOB-supportinginfo-additionalbodysite-requires-line-item
Description: "supportingInfo repetitions with additional body site must be referred to by one or more repetitions of item.informationSequence"
Expression: "supportingInfo.where(category.coding.code = 'additionalbodysite').sequence.subsetOf(%context.item.informationSequence)"
Severity:   #error


Invariant:  Oral-line-item-with-linked-additionalbody-site-requires-bodysite
Description: "At least one item.bodySite needs to be present if an item.informationSequence references supportingInfo[additionalbodysite].sequence"
//Expression: "item.where(informationSequence.intersect(%context.supportingInfo.where(category.coding.code = 'additionalbodysite').sequence).exists()).bodySite.exists()"
Expression: "item.where(informationSequence.intersect(%context.supportingInfo.where(category.coding.code = 'additionalbodysite').sequence).exists()).where(bodySite.count() != count()).empty()"
Severity:   #error


//item.where(informationSequence.intersect(%context.supportingInfo.where(category.coding.code = 'additionalbodysite').sequence).exists()).where(bodySite.count() != count()).empty()
