
Profile: C4BBPractitioner
Parent: $USCorePractitioner
Id: C4BB-Practitioner
Title: "C4BB Practitioner"
Description: "This profile builds upon the US Core Practitioner profile. It is used to convey information about the practitioner who provided to the patient services described on the claim."
* obeys Practitioner-identifier
* meta 1..1 MS
* meta.lastUpdated 1..1 MS
* meta.profile 1..*
* insert Metaprofile-supportedProfile-slice
// 20210322 CAS: FHIR-30575
* meta.profile[supportedProfile] = Canonical(C4BBPractitioner|1.2.0)
* identifier 1..* MS
* identifier[NPI] 0..1 MS 
* identifier contains 
   tax 0..* MS 
   

* identifier[NPI] ^short = "National Provider Identifier"
* identifier[tax] ^short = "Tax ID Number"


* identifier[tax] ^comment = "Tax ID Number.  Either the Tax Id or an NPI must be provided" 
* identifier[tax] ^patternIdentifier.type  = $IdentifierType#TAX
* identifier[tax] ^patternIdentifier.system = $TAXCodeCS 
* identifier[NPI] ^patternIdentifier.type = $HL7IdentifierType#NPI
* identifier[NPI] ^comment = "The National Provider Identifier assigned to the Rendering Provider. This is the lowest level of provider available (for example, if both individual and group are available, then the individual should be provided) (95).  Either the Tax Id or an NPI must be provided"
* meta.lastUpdated ^comment = "Defines the date the Resource was created or updated, whichever comes last (163).  Payers SHALL provide the last time the data was updated or the date of creation in the payer’s system of record, whichever comes last. Apps will use the meta.lastUpdated value to determine if the Reference resources are as of the current date or date of service."
* meta.profile ^comment = "meta.profile is required as a matter of convenience of receiving systems. The meta.profile should be used by the Server to hint/assert/declare that this instance conforms to one (or more) stated profiles (with business versions). meta.profile does not capture any business logic, processing directives, or semantics (for example, inpatient or outpatient). Clients should not assume that the Server will exhaustively indicate all profiles with all versions that this instance conforms to. Clients can (and should) perform their own validation of conformance to the indicated profile(s) and to any other profiles of interest. CPCDS data element (190)"
* name ^comment = "The name of the Rendering Provider. This is the lowest level of provider available (for example, if both individual and group are available, then the individual should be provided) (168)"
* address ^comment = "Address(es) of the practitioner"

Invariant:  Practitioner-identifier  
Description: "Practitioner.identifier must include an NPI or a Tax ID"
Expression: "identifier.where(type.where(coding.where(code in ('NPI' | 'TAX')).exists()).exists()).exists()"
Severity:   #error