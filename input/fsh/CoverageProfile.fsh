Profile: C4BBCoverage
Parent: Coverage
Id: C4BB-Coverage
Title: "C4BB Coverage"
Description: "Data that reflect a payer’s coverage that was effective as of the date of service or the date of admission of the claim."
//* ^jurisdiction.valueCodeableConcept = "US#urn:iso:std:iso:3166"
* meta.lastUpdated 1..1 MS
* meta.profile 1..* MS
// 20210216 CAS: FHIR-30575 Pulled from block vote1a
//* insert Metaprofile-supportedProfile-slice
//* meta.profile[supportedProfile] = Canonical(C4BBCoverage)
* meta 1..1 MS
* identifier MS 
// 20210312 CAS: Remove per https://jira.hl7.org/browse/FHIR-31535 - Revert Coverage.Subscriber Type to that defined by the base Resource
//* subscriber 0..1 
//* subscriber only Reference(C4BBPatient)
* subscriberId 1..1 MS
* beneficiary 1..1 MS
* beneficiary only Reference(C4BBPatient) 
* relationship 1..1 MS
* relationship from $SubscriberRelationiship (required)
* payor 1..1 MS   // was 1..* in Balloted STU
* payor only Reference (C4BBOrganization) 
* class MS 
* class ^slicing.discriminator.type = #pattern
* class ^slicing.discriminator.path = "type"
* class ^slicing.rules = #open
* class ^slicing.ordered = false   // can be omitted, since false is the default
* class ^slicing.description = "Slice based on value pattern"
* class contains 
   group 0..1  MS and
   plan 0..1 MS
* class[group].type = $CoverageClassCS#group
* class[plan].type = $CoverageClassCS#plan

* payor MS
* relationship MS
* period MS
* period MS
* subscriberId MS
* status MS
* class[group].value MS
* class[group].name MS
* class[plan].value MS
* class[plan].name MS


* meta.lastUpdated ^comment = "Defines the date the coverage that was effective as of the date of service or admission (163). The Coverage Reference Resource SHALL be returned with data that was effective as of the date of service or admission of the claim"
* meta.profile ^comment = "CPCDS data element (190)"
* status ^comment = "Identfies the status of the coverage information (default: active) (133)"
* type ^comment = "Identifies if the coverage is PPO, HMO, POS, etc. (3)"
* subscriberId  ^comment = "The identifier assigned by the Payer on the subscriber's ID card (132)"
* beneficiary ^comment = "Identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided (1).  This is the party who receives treatment for which the costs are reimbursed under the coverage. alternate path:  EOB.patient(Patient).identifier"
* relationship ^comment = "Relationship of the member to the person insured (subscriber). (72)"
* period ^comment = "Date that the contract became effective (74) and Date that the contract was terminated or coverage changed (75)"
* payor ^comment = "Issuer of the Policy (2)"
* class[group].value ^comment = "Employer account identifier (134)"
* class[group].name ^comment = "Name of the Employer Account (135)"
* class[plan].value ^comment = "Business concept used by a health plan to describe its benefit offerings (154)"
* class[plan].name ^comment = "Name of the health plan benefit offering assigned to the Plan Identfier (155)"