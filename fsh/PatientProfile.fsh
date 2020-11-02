Profile: C4BBPatient
Parent: $USCorePatient
Id: C4BB-Patient
Title: "C4BB Patient"
Description: "This profile builds upon the US Core Organization profile. It is used to convey information about the patient who received the services described on the claim."
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

* identifier[memberid] ^short = "Identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided. (1)"
* identifier[memberid] ^definition = "Identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided. (1)"
* identifier[memberid] ^comment = " Identifier payers assign to a beneficiary for a contract; it may be different for various lines of business; ie. QHP vs MA."
* identifier[uniquememberid] ^short = "Unique identifier for a member assigned by the Payer. (191)"
* identifier[uniquememberid] ^definition = "Unique identifier for a member assigned by the Payer. (191)"
* identifier[uniquememberid] ^comment = "Mastered person identifier across all lines of business"
* identifier[medrecnum] ^short = "Provider submitted medical record number that can be included on the claim. (109)"
* identifier[medrecnum] ^definition = "Provider submitted medical record number that can be included on the claim. (109)"
* identifier[patacctnum] ^short = "Provider assigned patient account number that can be included on the claim. (109)"
* identifier[patacctnum] ^definition = "Provider assigned patient account number that can be included on the claim. (109)"
* birthDate ^short = "Date of birth of the member (70)"
* birthDate ^definition = "Date of birth of the member (70)"
* gender ^short = "Gender of the member (71)"
* gender ^definition = "Gender of the member (71)"
* name ^short = "The name of the patient (130)"
* name ^definition = "The name of the patient (130)"
//* birthDate ^short = "Date of birth of the member (70,DOB_DT)"
//* gender ^short = "Gender of the member (71,GNDR_CD)"
* deceasedDateTime ^short = "Date of death of the member (124)"
* deceasedDateTime ^definition = "Date of death of the member (124)"
* deceasedBoolean ^short = "Indicates if the patient is deceased (150)"
* deceasedBoolean ^definition = "Indicates if the patient is deceased (150)"
* meta.lastUpdated ^short = "Defines the date the Resource was created or updated, whichever comes last (163)"
* meta.lastUpdated ^definition = "Defines the date the Resource was created or updated, whichever comes last (163)"
* meta.lastUpdated ^comment = "Payers SHALL provide the last time the data was updated or the date of creation in the payer’s system of record, whichever comes last. Apps will use the meta.lastUpdated value to determine if the Reference resources are as of the current date or date of service."
* meta.profile ^short = "Profile this resource claims to conform to (189)"
* meta.profile ^definition = "Profile this resource claims to conform to (189)"
* address.line ^short = "Member's street name, number, direction & P.O. Box etc. (158)"
* address.line ^definition = "Member's street name, number, direction & P.O. Box etc. (158)"  
* address.city ^short = "The city for the member's primary address (192)" 
* address.city ^definition = "The city for the member's primary address (192)" 
* address.district ^short = "The county for the member's primary address (125)" 
* address.district ^definition = "The county for the member's primary address (125)" 
* address.state ^short = "The state for the member's primary address (126)" 
* address.state ^definition = "The state for the member's primary address (126)" 
* address.postalCode ^short = "This represents the member's 5 digit zip code (131)" 
* address.postalCode ^definition = "This represents the member's 5 digit zip code (131)" 
* address.country ^short = "The country for the member's primary address (127)"
* address.country ^definition = "The country for the member's primary address (127)"