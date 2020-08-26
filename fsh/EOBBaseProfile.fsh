Profile: CARINBBExplanationOfBenefit
Parent: ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit
Title: "CARIN BB Explanation Of Benefit"
Description: "Abstract parent profile that includes constraints that are common to the four specific ExplanationOfBenefit (EOB) profiles defined in this Implementation Guide.
All EOB instances should be from one of the four non-abstract EOB profiles defined in this Implementation Guide:  Inpatient, Outpatient, Pharmacy, and Professional/NonClinician"
* meta.lastUpdated 1..1 MS
* meta.profile 1..* MS
* ^abstract = true 
* identifier 1..* 
* identifier.type 1..1 MS
// Dropped in EOBComparsionv13 8/13/2020
// * identifier ^slicing.discriminator.path = "$this"
// * identifier ^slicing.rules = #open
// * identifier ^slicing.discriminator.type = #pattern 
// * identifier ^slicing.ordered = false   // cannot be omitted, since false is the default
// * identifier ^slicing.description = "Slice based on $this pattern"
// * identifier contains 
//    claimnumber 1..1 MS
// * identifier[claimnumber].value 1..1 MS
// * identifier[claimnumber] ^patternIdentifier.type = $IdentifierTypeCS#cn 
// * identifier[claimnumber] ^short = "Claim Number"
* type 1..1 MS
* type from $HL7ClaimType (required)
//   * claim MS   - igor sez we discussed removing MS
* use = #claim 
* patient 1..1 MS
* adjudication MS 
* provider only Reference(CARINBBOrganization or CARINBBPractitioner)   // based on BV2a comments 7/27
* patient only Reference (CARINBBPatient)
* billablePeriod 0..1 MS 
* insurer 1..1 MS
* insurer only Reference(CARINBBOrganization)
* provider 1..1 MS
* related 0..* MS
* related.relationship 1..1 MS
//* related.relationship from RelatedClaim (extensible)
* payee 0..1 MS
* payee.type 1..1 MS
* payee.type from $ClaimPayeeTypeCode (required)
* payee.party 1..1 MS
* payee.party only Reference(CARINBBOrganization or CARINBBPatient or CARINBBPractitioner)
* careTeam 0..* MS 
* careTeam.provider 1..1 MS
* careTeam.provider only Reference(CARINBBOrganization or CARINBBPractitioner)
* careTeam.qualification from $USCoreProviderSpecialty (required)
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
* insurance obeys EOB-insurance-focal 
* insurance.coverage only Reference(CARINBBCoverage)
/* * adjudication.extension contains
   AdjudicationType named adjudication-type 1..1 MS
*/
* adjudication.category from ClaimAdjudicationCategory (required)   // per Igor
* item 0..* MS
* item.adjudication MS 
* item.adjudication.category 1..1 MS
* item.adjudication.category from ClaimAdjudicationCategory (required)  // Per Igor
* item.noteNumber MS
* item.noteNumber ^short = "References number of the associated processNote"
* total.category from ClaimAdjudicationCategory (required)
* payment MS 
* payment.type from ClaimPaymentStatusCode (required)
* processNote MS
* processNote ^short = "Line member payment denial explanation"
* priority from http://hl7.org/fhir/ValueSet/process-priority  // Fix a bug in R4 EOB which points to a CodeSystem.   Eliminates an error on output

Invariant:  EOB-insurance-focal  
Description: "EOB.insurance:  at most one with focal = true"
Expression: "insurance.select (focal = true).count() < 2"
Severity:   #error


Invariant: EOB-inst-careTeam-practitioner
Description: "Institutional EOB:  Careteam roles refer to a practitioner"
Expression: "( careTeam.role.coding.code in 
('attending' or 'pcp' or 'referring' or 'supervising')) implies 
 careTeam.provider.reference.resolve().is(FHIR.Practitioner)"
Severity: #error

Invariant: EOB-inst-careTeam-organization
Description: "Institutional EOB:  Careteam roles refer to a practitioner"
Expression: "( careTeam.role.coding.code='performing') implies 
 careTeam.provider.reference.resolve().is(FHIR.Organization)"
Severity: #error

Invariant: EOB-pharm-careTeam-practitioner
Description: "Pharmacy EOB:  Careteam roles refer to a practitioner"
Expression: "( careTeam.role.coding.code in 
( 'pcp' or 'prescribing')) implies 
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
('performing' or 'pcp' or 'referring' or 'supervising')) implies 
 careTeam.provider.reference.resolve().is(FHIR.Practitioner)"
Severity: #error

Invariant: EOB-prof-careTeam-organization
Description: "Professional EOB:  Careteam roles refer to a practitioner"
Expression: "( careTeam.role.coding.code='site') implies 
 careTeam.provider.reference.resolve().is(FHIR.Organization)"
Severity: #error