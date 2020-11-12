Profile: C4BBPatient
Parent: $USCorePatient
Id: C4BB-Patient
Title: "C4BB Patient"
Description: "This profile builds upon the US Core Patient profile. It is used to convey information about the patient who received the services described on the claim."
* meta.lastUpdated 1..1 MS
* meta.profile 1..* MS
* meta 1..1 MS
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
//* identifier[memberid].type.coding 1..* MS
* identifier[medrecnum].type = $IdentifierType#MR
//* identifier[medrecnum].type.coding 1..* MS
* identifier[patacctnum].type = C4BBIdentifierType#pat
//* identifier[patacctnum].type.coding 1..* MS
//* identifier[uniquememberid].type.coding 1..* MS
* identifier[uniquememberid].type = C4BBIdentifierType#um

* birthDate MS
* gender MS
// * deceasedDateTime MS
// * deceasedBoolean MS
* deceased[x] MS 
* name MS
* meta.lastUpdated MS
* address.district MS
* address.country MS 

* identifier[memberid] ^comment = "Identifier for a member assigned by the Payer for a contract; it may be different for various lines of business; ie. QHP vs MA. If members receive ID cards, that is the identifier that should be provided. (1)."
* identifier[uniquememberid] ^comment = "Mastered person identifier that is a unique identifier for a member assigned by the Payer across all lines of business (191)"
* identifier[medrecnum] ^comment = "Provider submitted medical record number that can be included on the claim. (109)"
* identifier[patacctnum] ^comment = "Provider assigned patient account number that can be included on the claim. (109)"
* birthDate ^comment = "Date of birth of the member (70)"
* gender ^comment = "Gender of the member (71)"
* name ^comment = "The name of the patient (130)"
* deceasedDateTime ^comment = "Date of death of the member (124)"
* deceasedBoolean ^comment = "Indicates if the patient is deceased (150)"
* meta.lastUpdated ^comment = "Defines the date the Resource was created or updated, whichever comes last (163).  Payers SHALL provide the last time the data was updated or the date of creation in the payer’s system of record, whichever comes last. Apps will use the meta.lastUpdated value to determine if the Reference resources are as of the current date or date of service."
* meta.profile ^comment = "CPCDS data element (190)"
* address.line ^comment = "Member's street name, number, direction & P.O. Box etc. (158)"
* address.city ^comment = "The city for the member's primary address (192)" 
* address.district ^comment = "The county for the member's primary address (125)" 
* address.state ^comment = "The state for the member's primary address (126)" 
* address.postalCode ^comment = "This represents the member's 5 digit zip code (131)" 
* address.country ^comment = "The country for the member's primary address (127)"