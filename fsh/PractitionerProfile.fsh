
Profile: C4BBPractitioner
Parent: $USCorePractitioner
Id: C4BB-Practitioner
Title: "C4BB Practitioner"
Description: "This profile builds upon the US Core Organization profile. It is used to convey patient information about the patient who received the services described on the claim."
* meta.lastUpdated 1..1 MS
* meta.profile 1..* MS
* identifier 1..* MS
* identifier[NPI] 1..1 MS 
* identifier contains 
   tax 0..* MS 
* identifier[tax] ^short = "Tax ID Number" 
* identifier[tax] ^patternIdentifier.type  = $IdentifierType#TAX
* identifier[tax] ^patternIdentifier.system = $TAXCodeCS 
* identifier[NPI] ^short = "The National Provider Identifier assigned to the Billing Provider, Care Team members and the Service Facility (93, 94, 95, 99, 100, 122, 173)"
* name ^short = "The National Provider Identifier assigned to the Billing Provider, Care Team members and the Service Facility (93, 94, 95, 97, 99, 100, 122, 173)"
* meta.lastUpdated ^short = "Defines the date the Resource was created or updated, whichever is later. (163)"
* meta.profile ^short = "Profile this resource claims to conform to. (189)"

/* ADD TAX ID like Organizaiton */