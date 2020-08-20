





/*
CARIN BB Location:  This profile may be removed pending the resolution of FHIR-26705. This profile is used to convey the location where the services reported on a Professional and NonClinician claim were rendered when the location is not part of the Billing Provider of the physician or nonclinician.  

CARIN BB Organization:  This profile builds upon the US Core Organization profile. It is used to convey a payer or provider organization may be updated to include service facility pending resolution of FHIR-26705.

CARIN BB Patient:  This profile builds upon the US Core Organization profile. It is used to convey patient information about the patient who received the services described on the claim. 

CARIN BB Practioner:  This profile builds upon the US Core Organization profile. It is used to convey practitioner information who provided the services to the patient.

CARIN BB PractionerRole:  This profile builds upon the R4 PractitionerRole Resource.   It is used to map to Organization or Practitioner. Conditional acceptance if this is not addressed by the errata addressed in released 3.1.1 in US Core. We are planning on harmonizing this work with Plan-Net.
*/




/*
Profile: CARINBBPractitionerRole
Parent: PractitionerRole       // Changed to be R4 base, and not USCore FHIR-28124
Id: CARIN-BB-PractitionerRole
Title: "CARIN BB PractitionerRole"
Description: "CARIN Blue Button PractitionerRole Profile."
* meta.lastUpdated 1..1 MS
* meta.profile 1..* MS
* organization only Reference(CARINBBOrganization)
* practitioner only Reference(CARINBBPractitioner)
//* location only Reference (CARINBBLocation)
* code from $USCoreProviderRole (required)   
* specialty from $USCoreProviderSpecialty (required )
*/

// What needs to change?

/*
// WHat needs to change?
Profile: CARINBBLocation
Parent: $USCoreLocation
Id: CARIN-BB-Location
Title: "CARIN BB Location"
Description: "CARIN Blue Button Location Profile."
* meta.lastUpdated 1..1 MS
* meta.profile 1..* MS
*/



/*
//  Proposed Change to Slicing Style 
Extension: AdjudicationType
Title: "Adjudication Type"
Description: "An extension to provide a human-readable description of an organization."
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from AdjudicationSlideCodes (required) 

ValueSet: AdjudicationSlideCodes
Title: "Adjudication Slice Codes"
Description: "Codes used to discriminate slices of adjudication and item.adjudication"
* codes from system AdjudicationSliceCodesCS

CodeSystem: AdjudicationSliceCodesCS
Title: "Adjudication Slice Codes"
Description: "Codes used to discriminate slices of adjudication and item.adjudication"
* #inoutnetwork "In Out Network" "In Out Network"
* #denialreason "Denial Reason" "Denial Reason"
* #adjudicationamounttype "Ajudication Amount Type" "Ajudication Amount Type" 
* #allowedunits "Allowed Units" "Allowed Units"

Alias: $AdjudicationSliceCodesCS = http://hl7.org/fhir/us/carin-bb/CodeSystem/AdjudicationSliceCodesCS
*/