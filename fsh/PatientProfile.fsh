Profile: C4BBPatient
Parent: $USCorePatient
Id: C4BB-Patient
Title: "C4BB Patient"
Description: "This profile builds upon the US Core Organization profile. It is used to convey patient information about the patient who received the services described on the claim."
* meta.lastUpdated 1..1 MS
* meta.profile 1..* MS
* identifier.type from C4BBPatientIdentifierType (extensible)
//* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #pattern 
* identifier ^slicing.ordered = false   // can be omitted, since false is the default
* identifier ^slicing.description = "Slice based on $this pattern"
* identifier contains 
   memberid 1..* MS and
   medrecnum 0..* MS and
   uniquememberid 0..* MS and
   patacctnum 0..* MS 
* identifier[memberid].type = $IdentifierType#MB
* identifier[memberid] ^short = "Member ID"
//* identifier[memberid].type.coding 1..* MS
* identifier[medrecnum].type = $IdentifierType#MR
* identifier[medrecnum] ^short = "Medical Record Number"
//* identifier[medrecnum].type.coding 1..* MS
* identifier[patacctnum].type = C4BBIdentifierType#pat
* identifier[patacctnum] ^short = "Patient Account Number"
//* identifier[patacctnum].type.coding 1..* MS
* identifier[uniquememberid] ^short = "Unique Member ID"
//* identifier[uniquememberid].type.coding 1..* MS
* identifier[uniquememberid].type = C4BBIdentifierType#um
* birthDate ^short = "Date of birth of the member (70)"
* gender ^short = "Gender of the member (71)"

* name ^short = "The name of the patient (130)"
* birthDate ^short = "Date of birth of the member (70,DOB_DT)"
* birthDate MS
* gender ^short = "Gender of the member (71,GNDR_CD)"
* gender MS
* deceasedDateTime ^short = "Date of death of the member (124)"
// * deceasedDateTime MS
// * deceasedBoolean MS
* deceased[x] MS 
* deceasedBoolean ^short = "Indicates if the patient is deceased (150)"
* name ^short = "The name of the patient (130)"
* name MS
* meta.lastUpdated ^short = "Defines the date the member demographics were updated (163)"
* meta.lastUpdated MS
