Profile: C4BBExplanationOfBenefit
Parent: ExplanationOfBenefit
Id: C4BB-ExplanationOfBenefit
Title: "C4BB Explanation Of Benefit"
Description: "Abstract parent profile that includes constraints that are common to the four specific ExplanationOfBenefit (EOB) profiles defined in this Implementation Guide.
All EOB instances should be from one of the four non-abstract EOB profiles defined in this Implementation Guide:  Inpatient, Outpatient, Pharmacy, and Professional/NonClinician"
* meta.lastUpdated 1..1 MS
* meta.profile 1..* MS
* ^abstract = true 
* identifier 1..* 
* identifier.type 1..1 MS
* type 1..1 MS
* type from $HL7ClaimType (required)
//   * claim MS   - igor sez we discussed removing MS
* use = #claim 
* patient 1..1 MS
* adjudication MS 
* provider only Reference(C4BBOrganization or C4BBPractitioner)   // based on BV2a comments 7/27
* patient only Reference (C4BBPatient)
* billablePeriod 0..1 MS 
* insurer 1..1 MS
* insurer only Reference(C4BBOrganization)
* provider 1..1 MS
* related 0..* MS
* related.relationship 1..1 MS
* related.relationship from C4BBRelatedClaimRelationshipCodes (required)
* related.reference 1..1 MS 
* payee 0..1 MS
* payee.type 1..1 MS
* payee.type from C4BBPayeeType (required)
* payee.party 1..1 MS
* payee.party only Reference(C4BBOrganization or C4BBPatient or C4BBPractitioner)
* careTeam 0..* MS 
* careTeam.provider 1..1 MS
* careTeam.provider only Reference(C4BBOrganization or C4BBPractitioner)
* careTeam.responsible 0..1 MS 
* supportingInfo 0..* MS
* supportingInfo.category from C4BBSupportingInfoType (extensible)
//* supportingInfo.category 1..1 MS
//* supportingInfo.category from C4BBSupportingInfoType (required)
* insurance 1..* MS
* insurance.coverage 1..1 MS
* insurance.focal 1..1  MS
* insurance obeys EOB-insurance-focal 
* insurance.coverage only Reference(C4BBCoverage)
//* adjudication.category from C4BBAdjudicationDiscriminator (required)   // per Igor
* item 0..* MS
* item.adjudication MS 
* item.adjudication.category 1..1 MS
//* item.adjudication.category from C4BBAdjudicationDiscriminator (required)  // Per Igor
* item.noteNumber MS
* item.noteNumber ^short = "References number of the associated processNote"
//* total.category from C4BBAdjudicationDiscriminator (required)
* payment MS 
* payment.type from C4BBPayerClaimPaymentStatusCode (required)
* processNote MS
* processNote ^short = "Line member payment denial explanation"
* priority from http://hl7.org/fhir/ValueSet/process-priority  // Fix a bug in R4 EOB which points to a CodeSystem.   Eliminates an error on output

/*
* identifier ^short = ""
* identifier.type ^ short = ""
* type ^short = ""
* use ^short = ""
* patient ^short = ""
* adjudication ^short = ""
* provider ^short = ""
* patient ^short = ""
* billablePeriod ^short = ""
* billablePeriod.start ^short = ""
* billablePeriod.end ^short = ""
* insurer ^short = ""
* related ^short = ""
* related.relationship ^short = ""
* related ^short = ""
* payee ^short = ""
* payee.type ^short = ""
* payee.party ^short = ""
* careTeam ^short = ""
* careTeam.provider ^short = ""
* careTeam.responsible ^short = ""
* careTeam.role ^short = ""
* careTeam.qualification ^short = ""
* procedure ^short = ""
* procedure.type ^short = ""
* procedure.date ^short = ""
* insurance ^short = ""
* insurance.coverage ^short = ""
* insurance.focal ^short = ""
* insurance.coverage ^short = ""
* adjudication.category ^short = ""
* item ^short = ""
* item.adjudication ^short = ""
* item.adjudication.category ^short = ""
* item.noteNumber ^short = "References number of the associated processNote"
* total.category ^short = ""
* total ^short = ""
* payment ^short = ""
* payment.type ^short = ""
* processNote ^short = ""
*/





Invariant:  EOB-insurance-focal  
Description: "EOB.insurance:  at most one with focal = true"
Expression: "insurance.select (focal = true).count() < 2"
Severity:   #error

Invariant: EOB-inst-careTeam-practitioner  // rewritten with input from Lee Surprenant  FHIR-28530
Description: "Institutional EOB:  Careteam roles refer to a practitioner"
Expression: "(
     careTeam.where(role.where(coding.where(code in ('attending' | 'primary' | 'referring' | 'supervising')).exists()).exists()).exists() implies
     careTeam.where(role.where(coding.where(code in ('attending' | 'primary' | 'referring' | 'supervising')).exists()).exists()).provider.all(resolve() is Practitioner)
    )"
Severity: #error

Invariant: EOB-inst-careTeam-organization    // rewritten with input from Lee Surprenant  FHIR-28530
Description: "Institutional EOB:  Careteam roles refer to an organization"
Expression: "( 
     careTeam.where(role.where(coding.where(code='performing').exists()).exists()).exists() implies
     careTeam.where(role.where(coding.where(code='performing').exists()).exists()).provider.all(resolve() is Organization)
    )"
Severity: #error

Invariant: EOB-pharm-careTeam-practitioner
Description: "Pharmacy EOB:  Careteam roles refer to a practitioner"
Expression: "( careTeam.role.coding.code in 
( 'primary' or 'prescribing')) implies 
 careTeam.provider.reference.resolve().is(FHIR.Practitioner)"
Severity: #error

Invariant: EOB-pharm-careTeam-organization
Description: "Pharmacy EOB:  Careteam roles refer to a practitioner"
Expression: "( careTeam.role.coding.code='performing') implies 
 careTeam.provider.reference.resolve().is(FHIR.Organization)"
Severity: #error

Invariant: EOB-prof-careTeam-practitioner
Description: "Professional EOB:  Careteam roles refer to a practitioner"
Expression: "( careTeam.role.coding.code in 
('performing' or 'primary' or 'referring' or 'supervising')) implies 
 careTeam.provider.reference.resolve().is(FHIR.Practitioner)"
Severity: #error

Invariant: EOB-prof-careTeam-organization
Description: "Professional EOB:  Careteam roles refer to an organization"
Expression: "( careTeam.role.coding.code='site') implies 
 careTeam.provider.reference.resolve().is(FHIR.Organization)"
Severity: #error

Invariant: EOB-careteam-qualification
Description: "Care Team Performing physician's qualifications are from US-Core-Provider-Specialty Value Set"
Expression: "ExplanationOfBenefit.careTeam.role.coding.code='performing' implies ExplanationOfBenefit.careTeam.qualification.memberOf('http://hl7.org/fhir/us/core/ValueSet/us-core-provider-specialty')"
Severity: #error
