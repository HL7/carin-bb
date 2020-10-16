Profile: C4BBCoverage
Parent: Coverage
Id: C4BB-Coverage
Title: "C4BB Coverage"
Description: "Data that reflect a payer’s coverage that was effective as of the date of service or the date of admission of the claim."
//* ^jurisdiction.valueCodeableConcept = "US#urn:iso:std:iso:3166"
* meta.lastUpdated 1..1 MS
* meta.profile 1..* MS
* identifier MS 
* subscriber 0..1 
* subscriber only Reference(C4BBPatient)
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
   group 1..1  MS and
   plan 1..1 MS
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


* payor ^short = "Issuer of the Policy (2)"
* type ^short = "Identifies if the coverage is PPO, HMO, POS, etc. (3)"
* relationship ^short = "Relationship of the member to the person insured (subscriber). (72)"
* period ^short = "Date that the contract became effective (74) and Date that the contract was terminated or coverage changed (75)"
* subscriberId ^short = "The identifier assigned by the Payer on the subscriber's ID card. (132)"
* status ^short = "Identfies the status of the coverage information (default: active) (133)"
* class[group].value ^short = "Employer account identifier (134)"
* class[group].name ^short = "Name of the Employer Account (135)"
* class[plan].value ^short = "Business concept used by a health plan to describe its benefit offerings (154)"
* class[plan].name ^short = "Name of the health plan benefit offering assigned to the Plan Identfier (155)"
* meta.lastUpdated ^short = "Defines the date the coverage that was effective as of the date of service or admission was created or updated, whichever is later (163)"

