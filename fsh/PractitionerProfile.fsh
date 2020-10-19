
Profile: C4BBPractitioner
Parent: $USCorePractitioner
Id: C4BB-Practitioner
Title: "C4BB Practitioner"
Description: "This profile builds upon the US Core Practitioner profile. It is used to convey information about the practitioner who provided to the patient services described on the claim."
* obeys Practitioner-identifier
* meta.lastUpdated 1..1 MS
* meta.profile 1..* MS
* identifier 1..* MS
* identifier[NPI] 0..1 MS 
* identifier contains 
   tax 0..* MS 
* identifier[tax] ^short = "Tax ID Number" 
* identifier[tax] ^patternIdentifier.type  = $IdentifierType#TAX
* identifier[tax] ^patternIdentifier.system = $TAXCodeCS 
* identifier[NPI] ^patternIdentifier.type = C4BBIdentifierType#npi 
* identifier[NPI] ^short = "The National Provider Identifier assigned to the Performing Provider. This is the lowest level of provider available (for example, if both individual and group are available, then the individual should be provided) (95)"
* name ^short = "The National Provider Identifier assigned to the Billing Provider, Care Team members and the Service Facility (93, 94, 95, 97, 99, 100, 122, 173)"
* meta.lastUpdated ^short = "Defines the date the practitioner's demographics were updated (163)"
* meta.profile ^short = "Profile this resource claims to conform to. (189)"
* name ^short = "The name of the Performing Provider. This is the lowest level of provider available (for example, if both individual and group are available, then the individual should be provided) (168)"


Invariant:  Practitioner-identifier  
Description: "Practitioner.identifier must include an NPI or a Tax ID"
Expression: "identifier.where(type.where(coding.where(code in ('npi' | 'TAX')).exists()).exists()).exists()"
Severity:   #error