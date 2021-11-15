Profile: C4BBCoverage
Parent: Coverage
Id: C4BB-Coverage
Title: "C4BB Coverage"
Description: "Data that reflect a payer’s coverage that was effective as of the date of service or the date of admission of the claim."
//* ^jurisdiction.valueCodeableConcept = "US#urn:iso:std:iso:3166"
* meta 1..1 MS
* meta.lastUpdated 1..1 MS
* meta.profile 1..*
// 20210216 CAS: FHIR-30575 Pulled from block vote1a
* insert Metaprofile-supportedProfile-slice
* meta.profile[supportedProfile] = Canonical(C4BBCoverage|1.2.0)
* identifier MS 
// 20210312 CAS: Remove per https://jira.hl7.org/browse/FHIR-31535 - Revert Coverage.Subscriber Type to that defined by the base Resource
//* subscriber 0..1 
//* subscriber only Reference(C4BBPatient)
* subscriberId 1..1 MS
* beneficiary 1..1 MS
* beneficiary only Reference(C4BBPatient) 
* relationship 1..1 MS
* relationship from $SubscriberRelationship (required)
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
* class[group] ^short = "Group"
* class[group].type = $CoverageClassCS#group
* class[group].value ^short = "Group Number"
* class[group].name ^short = "Group Name"

* class[plan] ^short = "Plan"
* class[plan].type = $CoverageClassCS#plan
* class[plan].value ^short = "Plan Number"
* class[plan].name ^short = "Plan Name"


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