Profile: C4BBOrganization
Parent:  $USCoreOrganization
Id:  C4BB-Organization
Title: "C4BB Organization"
Description: "This profile builds upon the US Core Organization profile. It is used to convey a payer, provider, payee or service facility organization."

* obeys uncontained-requires-lastUpdated
* meta 1..1 MS
* meta.lastUpdated 0..1  MS
* meta.profile 1..*
// 20210322 CAS: FHIR-30575
//* insert Metaprofile-supportedProfile-slice
//* meta.profile[supportedProfile] = Canonical(C4BBOrganization|1.2.0)
//* obeys organization-meta-profile-version

* identifier contains
   tax 0..* MS and
   payerid 0..* MS and
   naiccode 0..* MS
* identifier[NPI] ^patternIdentifier.type  = $HL7IdentifierType#NPI
// * identifier[NPI].type
* identifier[tax] ^short = "Tax ID Number"
* identifier[tax] ^patternIdentifier.type  = $IdentifierType#TAX
// * identifier[tax].type
* identifier[tax] ^patternIdentifier.system = $TAXCodeCS
* identifier[payerid] ^short = "Payer ID used in HIPAA covered claims submission transactions"
* identifier[payerid] ^patternIdentifier.type  = C4BBIdentifierType#payerid
// * identifier[payerid].type
* identifier[naiccode] ^short = "NAIC Code"
// * identifier[naiccode].type
* identifier[naiccode] ^patternIdentifier.system = $NAICCodeCS
* identifier[naiccode] ^patternIdentifier.type  = C4BBIdentifierType#naiccode

* identifier[tax] ^comment = "Tax ID Number"
* identifier[payerid] ^comment = "Internal value assigned by the payer responsible for the claim (2)"
* identifier[naiccode] ^comment = "NAIC Code of the payer responsible for the claim (2)"
* identifier[NPI] ^comment = "The National Provider Identifier assigned to the Billing Provider, Care Team members and the Service Facility (93, 94, 95, 97, 99, 100, 122, 173).  Service Facility NPI will be populated with the value 'NPI has not been assigned' if an NPI has not been assigned to the Service Location Organization"
* address ^comment = "Enter address of the location where the services were rendered.  If the location is a component of the Billing Provider, do not populate this data element"
* meta.lastUpdated ^comment = "Defines the date the Resource was created or updated, whichever comes last (163).  Payers SHALL provide the last time the data was updated or the date of creation in the payer’s system of record, whichever comes last. Apps will use the meta.lastUpdated value to determine if the Reference resources are as of the current date or date of service.  lastUpdated required unless the Resource is \"contained\""
* meta.profile ^comment = "meta.profile is required as a matter of convenience of receiving systems. The meta.profile should be used by the Server to hint/assert/declare that this instance conforms to one (or more) stated profiles (with business versions). meta.profile does not capture any business logic, processing directives, or semantics (for example, inpatient or outpatient). Clients should not assume that the Server will exhaustively indicate all profiles with all versions that this instance conforms to. Clients can (and should) perform their own validation of conformance to the indicated profile(s) and to any other profiles of interest. CPCDS data element (190)"




Invariant: uncontained-requires-lastUpdated
Description: "meta.lastUpdated required if not a contained resource"
Expression: "%resource = %rootResource implies meta.lastUpdated.exists()"
Severity: #error