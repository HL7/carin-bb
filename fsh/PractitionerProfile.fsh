
Profile: C4BBPractitioner
Parent: $USCorePractitioner
Id: C4BB-Practitioner
Title: "C4BB Practitioner"
Description: "This profile builds upon the US Core Practitioner profile. It is used to convey information about the practitioner who provided to the patient services described on the claim."
* obeys Practitioner-identifier
* meta.lastUpdated 1..1 MS
* meta.profile 1..* MS
* meta 1..1 MS
* identifier 1..* MS
* identifier[NPI] 0..1 MS 
* identifier contains 
   tax 0..* MS 


* identifier[tax] ^short = "Tax ID Number" 
* identifier[tax] ^definition = "Tax ID Number" 
* identifier[tax] ^comment = "Either the Tax Id or an NPI must be provided" 
* identifier[tax] ^patternIdentifier.type  = $IdentifierType#TAX
* identifier[tax] ^patternIdentifier.system = $TAXCodeCS 
* identifier[NPI] ^patternIdentifier.type = C4BBIdentifierType#npi 
* identifier[NPI] ^short = "The National Provider Identifier assigned to the Performing Provider. This is the lowest level of provider available (for example, if both individual and group are available, then the individual should be provided) (95)"
* identifier[NPI] ^definition = "The National Provider Identifier assigned to the Performing Provider. This is the lowest level of provider available (for example, if both individual and group are available, then the individual should be provided) (95)"
* identifier[NPI] ^comment = "Either the Tax Id or an NPI must be provided" 
* meta.lastUpdated ^short = "Defines the date the Resource was created or updated, whichever comes last (163)"
* meta.lastUpdated ^definition = "Defines the date the Resource was created or updated, whichever comes last (163)"
* meta.lastUpdated ^comment = "Payers SHALL provide the last time the data was updated or the date of creation in the payer’s system of record, whichever comes last. Apps will use the meta.lastUpdated value to determine if the Reference resources are as of the current date or date of service."
* meta.profile ^short = "Profile this resource claims to conform to (189)"
* meta.profile ^definition = "Profile this resource claims to conform to (189)"
* name ^short = "The name of the Performing Provider. This is the lowest level of provider available (for example, if both individual and group are available, then the individual should be provided) (168)"
* name ^definition = "The name of the Performing Provider. This is the lowest level of provider available (for example, if both individual and group are available, then the individual should be provided) (168)"
* address ^short = "Address(es) of the practitioner"
* address ^definition = "Address(es) of the practitioner"

Invariant:  Practitioner-identifier  
Description: "Practitioner.identifier must include an NPI or a Tax ID"
Expression: "identifier.where(type.where(coding.where(code in ('npi' | 'TAX')).exists()).exists()).exists()"
Severity:   #error