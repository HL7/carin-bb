
Profile: C4BBPractitioner
Parent: $USCorePractitioner
Id: C4BB-Practitioner
Title: "C4BB Practitioner"
Description: "This profile builds upon the US Core Practitioner profile. It is used to convey information about the practitioner who provided to the patient services described on the claim."
* obeys Practitioner-identifier
* meta.lastUpdated 1..1 MS
* meta.profile 1..* MS
//* insert Metaprofile-supportedProfile-slice
// 20210216 CAS: FHIR-30575 Pulled from block vote1a
//* meta.profile[supportedProfile] = Canonical(C4BBPractitioner)
* meta 1..1 MS
* identifier 1..* MS
* identifier[NPI] 0..1 MS 
* identifier contains 
   tax 0..* MS 


* identifier[tax] ^comment = "Tax ID Number.  Either the Tax Id or an NPI must be provided" 
* identifier[tax] ^patternIdentifier.type  = $IdentifierType#TAX
* identifier[tax] ^patternIdentifier.system = $TAXCodeCS 
* identifier[NPI] ^patternIdentifier.type = C4BBIdentifierType#npi 
* identifier[NPI] ^comment = "The National Provider Identifier assigned to the Performing Provider. This is the lowest level of provider available (for example, if both individual and group are available, then the individual should be provided) (95).  Either the Tax Id or an NPI must be provided"
* meta.lastUpdated ^comment = "Defines the date the Resource was created or updated, whichever comes last (163).  Payers SHALL provide the last time the data was updated or the date of creation in the payer’s system of record, whichever comes last. Apps will use the meta.lastUpdated value to determine if the Reference resources are as of the current date or date of service."
* meta.profile ^comment = "CPCDS data element (190)"
* name ^comment = "The name of the Performing Provider. This is the lowest level of provider available (for example, if both individual and group are available, then the individual should be provided) (168)"
* address ^comment = "Address(es) of the practitioner"

Invariant:  Practitioner-identifier  
Description: "Practitioner.identifier must include an NPI or a Tax ID"
Expression: "identifier.where(type.where(coding.where(code in ('npi' | 'TAX')).exists()).exists()).exists()"
Severity:   #error