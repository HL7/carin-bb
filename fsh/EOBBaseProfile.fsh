Profile: C4BBExplanationOfBenefit
Parent: ExplanationOfBenefit
Id: C4BB-ExplanationOfBenefit
Title: "C4BB Explanation Of Benefit"
Description: "Abstract parent profile that includes constraints that are common to the four specific ExplanationOfBenefit (EOB) profiles defined in this Implementation Guide.
All EOB instances should be from one of the four non-abstract EOB profiles defined in this Implementation Guide:  Inpatient, Outpatient, Pharmacy, and Professional/NonClinician"
* meta.lastUpdated 1..1 MS
* meta.profile 1..* MS
* meta 1..1 MS
* ^abstract = true 
* identifier 1..* MS 
* identifier.type 1..1 MS
* identifier.type from C4BBClaimIdentifierType (extensible)
* type 1..1 MS
* type from $HL7ClaimType (required)
//   * claim MS   - igor sez we discussed removing MS
* use = #claim 
* patient 1..1 MS
* adjudication MS 
* provider only Reference(C4BBOrganization or C4BBPractitioner)   // based on BV2a comments 7/27
* patient only Reference (C4BBPatient)
* billablePeriod 0..1 MS 
* insurer 1..1 MS
* insurer only Reference(C4BBOrganization)
* provider 1..1 MS
* related 0..* MS
* related.relationship 1..1 MS
* related.relationship from C4BBRelatedClaimRelationshipCodes (required)
* related.reference 1..1 MS 
* payee 0..1 MS
* payee.type 1..1 MS
* payee.type from C4BBPayeeType (required)
* payee.party 1..1 MS
* payee.party only Reference(C4BBOrganization or C4BBPatient or C4BBPractitioner)
* careTeam 0..* MS 
* careTeam.provider 1..1 MS
* careTeam.provider only Reference(C4BBOrganization or C4BBPractitioner)
* careTeam.role MS 
* supportingInfo 0..* MS
* supportingInfo.category from C4BBSupportingInfoType (extensible)
//* supportingInfo.category 1..1 MS
//* supportingInfo.category from C4BBSupportingInfoType (required)
* insurance 1..* MS
* insurance.coverage 1..1 MS
* insurance.focal 1..1  MS
* insurance obeys EOB-insurance-focal 
* insurance.coverage only Reference(C4BBCoverage)
//* adjudication.category from C4BBAdjudicationDiscriminator (required)   // per Igor
* item 0..* MS
* item.adjudication MS 
* item.adjudication.category 1..1 MS
//* item.adjudication.category from C4BBAdjudicationDiscriminator (required)  // Per Igor
* item.noteNumber MS
* item.sequence MS 
//* total.category from C4BBAdjudicationDiscriminator (required)
* payment MS 
* payment.type from C4BBPayerClaimPaymentStatusCode (required)
* payment.type MS 
* processNote MS
* priority from http://hl7.org/fhir/ValueSet/process-priority  // Fix a bug in R4 EOB which points to a CodeSystem.   Eliminates an error on output
* total 1..* MS 

* meta.lastUpdated ^short = "Defines the date the Resource was created or updated, whichever comes last (163)"
* meta.profile ^short = "Profile this resource claims to conform to. (189)"
* identifier ^short = "Identifier assigned by a payer for a claim received from a provider or subscriber. It is not the same identifier as that assigned by a provider. This identifier assigned by the payer becomes the payer's EOB identifier. (35)"
* identifier.type ^short = "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber. (183)"
* type ^short = "Specifies the type of claim. (e.g., inpatient insitutional, outpatient institutional, physician, etc.) (16)"
* patient ^short = "Identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided. (1)"
* billablePeriod.start ^short = "The first day on the billing statement covering services rendered to the beneficiary (i.e. 'Statement Covers From Date’). (177)"
* billablePeriod.end ^short = "The last day on the billing statement covering services rendered to the beneficiary (i.e. 'Statement Covers Thru Date’). (178)"
* insurer ^short = "Code of the payer responsible for the claim. (2, 5)"
* provider ^short = "The identifier assigned to the Billing Provider. (94)"
* related ^short = "If the current claim represents a claim that has been adjusted and was given a prior claim number, this field represents the prior claim number. If the current claim has been adjusted; i.e., replaced by or merged to another claim number, this data element represents that new number.(111, 112) "
* payee.type ^short = "Identifies the type of recipient of the adjudication amount; i.e., provider, subscriber, beneficiary or another recipient. (120)"
* payee.party ^short = "Recipient reference. (121)"
* supportingInfo ^short = "Defines data elements not available in the base EOB resource"
* insurance ^short = "Identity of the payers responsible for the claim. (2, 141)"
* careTeam.provider ^short = "The identifier assigned to the care team. (varies depending on the profile)"
* careTeam.role ^short = "The functional role of a provider on a claim. (165)"
* item.sequence ^short = "Line identification number that represents the number assigned in a source system for identification and processing. (36)"
* processNote.text ^short = "Payment denial explanation to a member, typically goes on the EOB when the payment is denied or disallowed (181)"
* payment.type ^short = "Indicates whether the claim was paid or denied. (91)"
* status ^short = "Claim processing status code. (140)"
* payment.date ^short = "The date the claim was paid. (107)"
* created ^short = "Date the claim was adjudicated. (179)"


Invariant:  EOB-insurance-focal  
Description: "EOB.insurance:  at most one with focal = true"
Expression: "insurance.select (focal = true).count() < 2"
Severity:   #error

Invariant: EOB-inst-careTeam-practitioner  // rewritten with input from Lee Surprenant  FHIR-28530
Description: "Institutional EOB:  Careteam roles refer to a practitioner"
Expression: "(
     careTeam.where(role.where(coding.where(code in ('attending' | 'primary' | 'referring' | 'supervising')).exists()).exists()).exists() implies
     careTeam.where(role.where(coding.where(code in ('attending' | 'primary' | 'referring' | 'supervising')).exists()).exists()).provider.all(resolve() is Practitioner)
    )"
Severity: #error

Invariant: EOB-inst-careTeam-organization    // rewritten with input from Lee Surprenant  FHIR-28530
Description: "Institutional EOB:  Careteam roles refer to an organization"
Expression: "( 
     careTeam.where(role.where(coding.where(code='performing').exists()).exists()).exists() implies
     careTeam.where(role.where(coding.where(code='performing').exists()).exists()).provider.all(resolve() is Organization)
    )"
Severity: #error

Invariant: EOB-careteam-qualification
Description: "Care Team Performing physician's qualifications are from US-Core-Provider-Specialty Value Set"
Expression: "( 
     careTeam.where(role.where(coding.where(code='performing').exists()).exists()).exists() implies
     careTeam.where(role.where(coding.where(code='performing').exists()).exists()).qualification.memberOf('http://hl7.org/fhir/us/core/ValueSet/us-core-provider-specialty')
    )"
Severity: #error

Invariant: EOB-pharm-careTeam-practitioner
Description: "Pharmacy EOB:  Careteam roles refer to a practitioner"
Expression: "( 
     careTeam.where(role.where(coding.where(code in ('primary' | 'prescribing')).exists()).exists()).exists() implies
     careTeam.where(role.where(coding.where(code in ('primary' | 'prescribing')).exists()).exists()).provider.all(resolve() is Practitioner)
    )"
Severity: #error

Invariant: EOB-pharm-careTeam-organization
Description: "Pharmacy EOB:  Careteam roles refer to an organization"
Expression: "( 
     careTeam.where(role.where(coding.where(code in ('performing')).exists()).exists()).exists() implies
     careTeam.where(role.where(coding.where(code in ('performing')).exists()).exists()).provider.all(resolve() is Organization)
    )"
Severity: #error

Invariant: EOB-prof-careTeam-practitioner
Description: "Professional EOB:  Careteam roles refer to a practitioner"
Expression: 
   "( 
     careTeam.where(role.where(coding.where(code in ('performing' | 'primary' | 'referring' | 'supervising')).exists()).exists()).exists() implies
     careTeam.where(role.where(coding.where(code in ('performing' | 'primary' | 'referring' | 'supervising')).exists()).exists()).provider.all(resolve() is Practitioner)
    )"
Severity: #error

Invariant: EOB-prof-careTeam-organization
Description: "Professional EOB:  Careteam roles refer to an organization"
Expression: 
   "( 
     careTeam.where(role.where(coding.where(code in ('site')).exists()).exists()).exists() implies
     careTeam.where(role.where(coding.where(code in ('site')).exists()).exists()).provider.all(resolve() is Organization)
    )"
Severity: #error

// Rulesets
RuleSet: AdjudicationSlicing
* adjudication ^slicing.rules = #closed
* adjudication ^slicing.discriminator.path = "category"
* adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* adjudication ^slicing.description = "Slice based on value pattern"
* adjudication ^slicing.discriminator.type = #pattern
* adjudication.category 1..1 MS 

RuleSet: SupportingInfoSlicing
* supportingInfo ^slicing.discriminator.type = #pattern 
* supportingInfo ^slicing.discriminator.path = "category"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false   // can be omitted, since false is the default
* supportingInfo ^slicing.description = "Slice based on $this pattern"
* supportingInfo MS 
* supportingInfo.category MS 

RuleSet: TotalSlicing
* total ^slicing.rules = #open
* total ^slicing.ordered = false   // can be omitted, since false is the default
* total ^slicing.description = "Slice based on value pattern"
* total  ^slicing.discriminator.type = #pattern
* total  ^slicing.discriminator.path = "category"
* total.category 1..1 MS 

RuleSet: ItemAdjudicationSlicing
* item.adjudication ^slicing.rules = #closed
* item.adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* item.adjudication ^slicing.description = "Slice based on value pattern"
* item.adjudication ^slicing.discriminator.type = #pattern 
* item.adjudication ^slicing.discriminator.path = "category"