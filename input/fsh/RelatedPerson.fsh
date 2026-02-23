Profile: C4BBRelatedPerson
Parent: USCoreRelatedPersonProfile|7.0.0
Id: C4BB-RelatedPerson
Title: "C4BB RelatedPerson"
Description: "This profile is used to convey basic demographic information about a person related to the claim."
* ^extension[$compliesWithProfile].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-relatedperson|6.1.0"
//* ^extension[$compliesWithProfile].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-relatedperson|7.0.0"
* meta 1..1 MS
* meta.lastUpdated 1..1 MS
* meta.profile 1..*
//* active 1..1 MS
//* patient 1..1 MS
* patient only Reference(C4BBPatient)
//* relationship 0..* MS
//* name 0..* MS
//* telecom 0..* MS
//* address 0..* MS
//* obeys relatedperson-name-or-relationship
//* obeys relatedperson-meta-profile-version

/*
Invariant: relatedperson-name-or-relationship
Description: "Either a name or a relationship SHALL be provided (or both)"
Expression: "name.exists() or relationship.exists()"
Severity: #error
*/