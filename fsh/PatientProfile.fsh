Profile: CARINBBPatient
Parent: $USCorePatient
Id: CARIN-BB-Patient
Title: "CARIN BB Patient"
Description: "This profile builds upon the US Core Organization profile. It is used to convey patient information about the patient who received the services described on the claim."
* meta.lastUpdated 1..1 MS
* meta.profile 1..* MS
* identifier.type from PatientIdentifierType (extensible)
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #pattern 
* identifier ^slicing.ordered = false   // can be omitted, since false is the default
* identifier ^slicing.description = "Slice based on $this pattern"
* identifier contains 
   memberid 1..* MS and
   medrecnum 0..* MS and
   uniquememberid 0..* MS and
   patacctnum 0..* MS 
* identifier[memberid] ^patternIdentifier.type = IdentifierTypeCS#mb
* identifier[memberid] ^short = "Member ID"
* identifier[memberid].type.coding 1..* MS
* identifier[medrecnum] ^patternIdentifier.type = IdentifierTypeCS#mr
* identifier[medrecnum] ^short = "Medical Record Number"
* identifier[medrecnum].type.coding 1..* MS
* identifier[patacctnum] ^patternIdentifier.type = IdentifierTypeCS#pt
* identifier[patacctnum] ^short = "Patient Account Number"
* identifier[patacctnum].type.coding 1..* MS
* identifier[uniquememberid] ^short = "Unique Member ID"
* identifier[uniquememberid].type.coding 1..* MS
* identifier[uniquememberid] ^patternIdentifier.type = IdentifierTypeCS#um
* birthDate ^short = "Date of birth of the member (70)"
* gender ^short = "Gender of the member (71)"
* deceasedDateTime ^short = "Date of death of the member (124)"
* name ^short = "The name of the patient (130)"
* address ^short = "This represents the member's 5 digit zip code (131)"
* deceasedBoolean ^short = "Indicates if the patient is deceased (150)"
* birthDate MS
* gender MS
* address MS
* name MS
* address MS
* deceasedBoolean MS
* deceasedDateTime MS