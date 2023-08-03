Profile: C4BBProvenance
Parent: $USCoreProvenance
Id: C4BB-Provenance
Title: "C4BB Provenance"
Description: "This profile builds upon the US Core Provenance profile. It is used to convey information about the provenance of data included in this guide."
* meta 1..1 MS
* meta.lastUpdated 1..1 MS
* meta.profile 1..*
//* insert Metaprofile-supportedProfile-slice
// 20210216 CAS: FHIR-30575 Pulled from block vote1a

* obeys provenance-meta-profile-version

* agent[ProvenanceAuthor].type 1..1
//* agent[ProvenanceAuthor].type from http://hl7.org/fhir/us/davinci-pdex/ValueSet/ProvenanceAgentType
// is this a fix
// * agent.type 1..1
* agent.type from http://hl7.org/fhir/us/core/ValueSet/us-core-provenance-participant-type
// end of fix
* agent.who 1..1 MS
* agent.who ^short = "Provide US Core Organization. If no Organization provide US Core Practitioner"
* agent.who only Reference(C4BBOrganization or C4BBPractitioner)