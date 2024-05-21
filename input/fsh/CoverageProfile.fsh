// TODO relax meta.profile no invariant, just require at least one. Across all profiles (Jira ticket? If no ticket, create one.)

Profile: C4BBCoverage
Parent: USCoreCoverageProfile
Id: C4BB-Coverage
Title: "C4BB Coverage"
Description: "Data that reflect a payer’s coverage that was effective as of the date of service or the date of admission of the claim."
//* ^jurisdiction.valueCodeableConcept = "US#urn:iso:std:iso:3166"
* meta 1..1 MS
* meta.lastUpdated 1..1 MS
* meta.profile 1..*
// 20210216 CAS: FHIR-30575 Pulled from block vote1a
//* insert Metaprofile-supportedProfile-slice
//* meta.profile[supportedProfile] = Canonical(C4BBCoverage|1.2.0)
//* obeys coverage-meta-profile-version
* identifier MS 
* identifier ^short = "Member ID and other identifiers"
// 20210312 CAS: Remove per https://jira.hl7.org/browse/FHIR-31535 - Revert Coverage.Subscriber Type to that defined by the base Resource
//* subscriber 0..1 
//* subscriber only Reference(C4BBPatient)

* extension contains
   $R5CoverageKind named coverage-kind 1..1 and
   InsuranceProductLine named product-line 0..1  MS and
   InsuranceProductType named product-type 0..1 MS and
   CoverageBenefitType named benefit-type 0..* MS


* extension[coverage-kind]
  * valueCode 1..1
  * valueCode = #insurance
//* extension[$R5CoverageKind] 1..1
//* extension[$R5CoverageKind].valueCode 1..1
/* extension contains 
//   coverage-kind 0..1

https://build.fhir.org/branches/2024-01-gg-xver-extensions2/versions.html#extensions

* extension[coverage-kind].url = $R5CoverageKind

* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Immunization.administeredProduct"
* extension.extension.url = "reference"
* extension.extension.valueReference = Reference(Medication/something)
* occurrenceDateTime = "2024-01-01T01:01:01Z"
*/
/*

Needs to be made in to extensions
* class contains 
   product-line 0..1  MS and
   product 0..1 MS and
   benefit 0..1  MS
* class[product-line] ^short = "Product Line"
* class[product-line].type = C4BBCoverageClassCS#product-line
* class[product-line].value ^short = "Product Line"
* class[product-line].value from C4BBInsuranceProductLineVS (extensible)
* class[product-line].name ^short = "Product Line Description"

* class[product] ^short = "Product Type"
* class[product].type = C4BBCoverageClassCS#product
* class[product].value ^short = "Plan Type"
* class[product].value from C4BBInsuranceProductTypeVS (extensible)
* class[product].name ^short = "Plan Type Description"

* class[benefit] ^short = "Benefit Type"
* class[benefit].type = C4BBCoverageClassCS#benefit-type
* class[benefit].value ^short = "Benefit Type"
* class[benefit].value from http://hl7.org/fhir/us/ndh/ValueSet/NdhCoverageTypeVS (extensible)
* class[benefit].name ^short = "Benefit Type Description"
*/


* subscriberId 1..1
//* beneficiary 1..1 MS Now part of US Core 6.1
* beneficiary only Reference(C4BBPatient) 
* relationship 1..1 MS
* relationship from $SubscriberRelationship (required)
* payor 1..1 MS   // was 1..* in Balloted STU
* payor only Reference (C4BBOrganization) 

/*   Now part of US Core 6.1
* class MS 
* class ^slicing.discriminator.type = #pattern
* class ^slicing.discriminator.path = "type"
* class ^slicing.rules = #open
* class ^slicing.ordered = false   // can be omitted, since false is the default
* class ^slicing.description = "Slice based on value pattern"
* class contains 
   group 0..1  MS and
   plan 0..1 MS
* class[group] ^short = "Group"
* class[group].type = $CoverageClassCS#group
* class[group].value ^short = "Group Number"
* class[group].name ^short = "Group Name"

* class[plan] ^short = "Plan"
* class[plan].type = $CoverageClassCS#plan
* class[plan].value ^short = "Plan Number"
* class[plan].name ^short = "Plan Name"
*/

//* payor MS    Now part of US Core 6.1
//* relationship MS  Now part of US Core 6.1
//* period MS   Now part of US Core 6.1
* period MS
* subscriberId MS
//* status MS   Now part of US Core 6.1
* class[group].value MS
* class[group].name MS
* class[plan].value MS
* class[plan].name MS


* meta.lastUpdated ^comment = "Defines the date the coverage that was effective as of the date of service or admission (163). The Coverage Reference Resource SHALL be returned with data that was effective as of the date of service or admission of the claim"
* meta.profile ^comment = "meta.profile is required as a matter of convenience of receiving systems. The meta.profile should be used by the Server to hint/assert/declare that this instance conforms to one (or more) stated profiles (with business versions). meta.profile does not capture any business logic, processing directives, or semantics (for example, inpatient or outpatient). Clients should not assume that the Server will exhaustively indicate all profiles with all versions that this instance conforms to. Clients can (and should) perform their own validation of conformance to the indicated profile(s) and to any other profiles of interest. CPCDS data element (190)"
* status ^comment = "Identifies the status of the coverage information (default: active) (133)"
* type ^comment = "Identifies if the coverage is PPO, HMO, POS, etc. (3)"
* subscriberId  ^comment = "The identifier assigned by the Payer on the subscriber's ID card (132)"
* beneficiary ^comment = "Identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided (1).  This is the party who receives treatment for which the costs are reimbursed under the coverage. alternate path:  EOB.patient(Patient).identifier"
* relationship ^comment = "Relationship of the member to the person insured (subscriber). (72)"
* period ^comment = "Date that the contract became effective (74) and Date that the contract was terminated or coverage changed (75)"
* payor ^comment = "Issuer of the Policy (2)"
* class[group].value ^comment = "Employer account identifier (134)"
* class[group].name ^comment = "Name of the Employer Account (135)"
* class[plan].value ^comment = "Business concept used by a health plan to describe its benefit offerings (154)"
* class[plan].name ^comment = "Name of the health plan benefit offering assigned to the Plan Identifier (155)"



// TODO move to THO or correct file

CodeSystem: C4BBInsuranceProductLineCS
Title: "C4BB Insurance Product Line Code System"
Description: "Insurance Product Line Code System"
* #commercial "Commercial" "Commercial"
* #medicare "Medicare" "Medicare"
* #medicare-advantage "Medicare Advantage" "Medicare Advantage"
* #medicaid "Medicaid" "Medicaid"
* #tricare "TriCare" "TriCare"
* #champva "CHAMPVA" "Civilian Health and Medical Program of the Department of Veterans Affairs (CHAMPVA)"
* #exchange "Exchange" "Exchange" // What is this? Is it a QHP, and if so, why does it have to be distinguished from Commercial?
* #chip "CHIP" "Children's Health Insurance Program (CHIP)"
* #corrections "Department of Corrections" "US Department of Corrections"

* ^caseSensitive = true
* ^experimental = false
* ^copyright = "This CodeSystem is not copyrighted."

ValueSet: C4BBInsuranceProductLineVS
Title: "C4BB Insurance Product Line Value Set"
Description: "Insurance Product Line Value Set"
* codes from system C4BBInsuranceProductLineCS
* ^copyright = "This Valueset is not copyrighted."
* ^experimental = false

CodeSystem: C4BBInsuranceProductTypeCS
Title: "C4BB Insurance Product Type Code System"
Description: "Insurance Product Type Code System"
* #hmo "Commercial" "Commercial"
* #ppo "Medicare" "Medicare"
* #pos "Medicare POS" "Medicare Point-of-Service (POS)"
* #epo "Exclusive Provider Organization" "Exclusive Provider Organization"
* #work-comp "Worker's Comp" "Worker's Compensation"
* #ffs "Fee for Service" "Fee for Service"
* ^caseSensitive = true
* ^experimental = false
* ^copyright = "This CodeSystem is not copyrighted."

ValueSet: C4BBInsuranceProductTypeVS
Title: "C4BB Insurance Product Type Value Set"
Description: "Insurance Product Type Value Set"
* codes from system C4BBInsuranceProductTypeCS
* ^copyright = "This Valueset is not copyrighted."
* ^experimental = false

/*
CodeSystem: C4BBCoverageClassCS
Title: "C4BB Insurance Product Line Code System"
Description: "Insurance Product Line Code System"
* #product-line "Product Line" "Insurance Product Line"
* #product "Product" "Type of Insurance Product"
* #benefit-type "Benefit Type" "Type of benefit offered through insurance coverage"
* ^copyright = "This Valueset is not copyrighted."
* ^experimental = false
*/


ValueSet: C4BBCoverageClassVS
Title: "C4BB Coverage Class Value Set"
Description: "C4BB Coverage Class Value Set"
* codes from system C4BBInsuranceProductLineCS
* codes from system $CoverageClassCS
* ^copyright = "This Valueset is not copyrighted."
* ^experimental = false



Extension: InsuranceProductLine
//Id: usdf-FormularyReference-extension
Title: "Insurance Product Line"
Description: "Insurance Product Line."
* ^context[+].type = #element
* ^context[=].expression = "Coverage"
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from C4BBInsuranceProductLineVS (extensible)


Extension: InsuranceProductType
//Id: usdf-FormularyReference-extension
Title: "Insurance Product Type"
Description: "Insurance Product Type."
* ^context[+].type = #element
* ^context[=].expression = "Coverage"
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from C4BBInsuranceProductTypeVS (extensible)

Extension: CoverageBenefitType
//Id: usdf-FormularyReference-extension
Title: "Coverage Benefit Type"
Description: "Coverage Benefit Type."
* ^context[+].type = #element
* ^context[=].expression = "Coverage"
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from http://hl7.org/fhir/us/ndh/ValueSet/NdhCoverageTypeVS (extensible)
