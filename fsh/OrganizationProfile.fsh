Profile: C4BBOrganization
Parent:  $USCoreOrganization
Id:  C4BB-Organization
Title: "C4BB Organization"
Description: "This profile builds upon the US Core Organization profile. It is used to convey a payer or provider organization may be updated to include service facility pending resolution of FHIR-26705.
."
* meta.lastUpdated 1..1  MS
* meta.profile 1..* MS
// Slicing stuff missing?
// * identifier ^slicing.discriminator.path = "$this"
// * identifier ^slicing.rules = #open
// * identifier ^slicing.discriminator.type = #pattern 
// * identifier ^slicing.ordered = false   // can be omitted, since false is the default
// * identifier ^slicing.description = "Slice based on $this pattern"
//* identifier.type 1..1 MS
//* identifier.type from OrganizationIdentifierType (extensible)
* identifier contains 
   tax 0..* MS and
   payerid 0..* MS and
   naiccode 0..* MS 
//* identifier[CLIA] ^patternIdentifier.type  = C4BBIdentifierType#clia 
//* identifier[CLIA].type 1..1 MS
* identifier[NPI] ^patternIdentifier.type  = C4BBIdentifierType#npi 
* identifier[NPI].type 1..1 MS
* identifier[tax] ^short = "Tax ID Number"
* identifier[tax] ^patternIdentifier.type  = $IdentifierType#TAX
* identifier[tax].type 1..1 MS
* identifier[tax] ^patternIdentifier.system = "urn:oid:2.16.840.1.113883.4.4"
* identifier[payerid] ^short = "Payer ID"
* identifier[payerid] ^patternIdentifier.type  = C4BBIdentifierType#payerid 
* identifier[payerid].type 1..1 MS
* identifier[naiccode] ^short = "NAIC Code"
* identifier[naiccode].type 1..1 MS
* identifier[naiccode] ^patternIdentifier.system = $NAICCodeCS
* identifier[naiccode] ^patternIdentifier.type  = C4BBIdentifierType#naiccode  