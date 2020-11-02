Profile: C4BBExplanationOfBenefitPharmacy
Parent: C4BB-ExplanationOfBenefit
Id: C4BB-ExplanationOfBenefit-Pharmacy
Title: "C4BB ExplanationOfBenefit Pharmacy"
Description: "This profile is used for Explanation of Benefits (EOBs) based on claims submitted by retail pharmacies. 
The claims data is based on submission standards adopted by the Department of Health and Human Services defined by NCPDP (National Council for Prescription Drug Program)"
* type = $HL7ClaimTypeCS#pharmacy 
// * provider only Reference(C4BBOrganization or C4BBPractitionerRole or C4BBPractitioner)   Set in Abstract Class.  No need to set here.
* careTeam obeys EOB-pharm-careTeam-practitioner
* careTeam obeys EOB-pharm-careTeam-organization
* insert SupportingInfoSlicing 
* supportingInfo contains 
   dayssupply 1..1 MS and
   dawcode 1..1 MS and
   refillNum 1..1 MS and
   billingnetworkcontractingstatus 0..1 MS and
   brandgenericcode 0..1 MS and
   rxoriginCode 0..1 MS and
   clmrecvddate 0..1 MS and
   compoundcode 0..1 MS 
* supportingInfo[billingnetworkcontractingstatus].category = C4BBSupportingInfoType#billingnetworkcontractingstatus
* supportingInfo[billingnetworkcontractingstatus].code from C4BBPayerProviderContractingStatus (required) 
* supportingInfo[billingnetworkcontractingstatus].code 1..1 MS
* supportingInfo[brandgenericcode].category = C4BBSupportingInfoType#brandgenericcode   
* supportingInfo[brandgenericcode].code from NCPDPBrandGenericCode (required)
* supportingInfo[brandgenericcode].code 1..1 MS
* supportingInfo[rxoriginCode].category = C4BBSupportingInfoType#rxorigincode   
* supportingInfo[rxoriginCode].code from NCPDPPrescriptionOriginCode (required)
* supportingInfo[rxoriginCode].code 1..1 MS 
* supportingInfo[refillNum].category = C4BBSupportingInfoType#refillnum
* supportingInfo[refillNum].value[x] 1..1 MS
* supportingInfo[refillNum].value[x] only Quantity 
* supportingInfo[dawcode].category = C4BBSupportingInfoType#dawcode       
* supportingInfo[dawcode].code from NCPDPDispensedAsWrittenOrProductSelectionCode (required)
* supportingInfo[dawcode].code 1..1 MS 
* supportingInfo[clmrecvddate].category = C4BBSupportingInfoType#clmrecvddate
* supportingInfo[clmrecvddate].timing[x] only date 
* supportingInfo[clmrecvddate].timing[x] 1..1 MS
* supportingInfo[dayssupply].category = C4BBSupportingInfoType#dayssupply
* supportingInfo[dayssupply].value[x] 1..1 MS
* supportingInfo[dayssupply].value[x] only Quantity 
* supportingInfo[compoundcode].category = C4BBSupportingInfoType#compoundcode
* supportingInfo[compoundcode].code from NCPDPCompoundCode (required)
* supportingInfo[compoundcode].code 1..1 MS
* item.productOrService from FDANDCOrCompound (required)
* item.detail.productOrService  from FDANationalDrugCode  (required)
* item.detail MS
* item.detail.quantity MS 
* careTeam.role from C4BBClaimPharmacyTeamRole  (required)   // was PayerPharmacyProviderRole
* careTeam.role 1..1 MS
* insert ItemAdjudicationSlicing
* item.adjudication contains
   adjudicationamounttype 0..* MS and
   denialreason 0..1 MS 
* item.adjudication[adjudicationamounttype].category from C4BBAdjudication
* item.adjudication[adjudicationamounttype].amount  MS
* item.adjudication[denialreason].category  = C4BBAdjudicationDiscriminator#denialreason 
* item.adjudication[denialreason].reason from NCPDPRejectCode
* item.adjudication[denialreason].reason 1..1 MS
* insert TotalSlicing
* total.category 1..1 MS 
* total contains
   adjudicationamounttype 0..* MS and 
   inoutnetwork 1..1 MS 
* total[inoutnetwork].category from C4BBPayerBenefitPaymentStatus (required)
* total[adjudicationamounttype].category from C4BBAdjudication  (required)

* patient MS
* insurance.coverage MS
* insurance MS
* type MS
* identifier MS
* item.sequence MS
* item.detail.productOrService MS
* item.productOrService MS
* item.quantity MS
* item.productOrService MS
* item.serviced[x] MS       // listed as item.serviced in CPCDS spreadsheet
* payment.type MS
* provider MS
* careTeam.provider MS
* payment.date MS
* related MS
* payee.type MS
* payee.party MS
* careTeam.provider MS
* status MS
* insurance MS
* total.amount MS
* created MS
* processNote.text MS


* supportingInfo[billingnetworkcontractingstatus] ^short = "Indicates that the Billing Provider has a contract with the Plan (regardless of the network) that is effective on the date of service. (101)"
* supportingInfo[billingnetworkcontractingstatus] ^definition = "Indicates that the Billing Provider has a contract with the Plan (regardless of the network) that is effective on the date of service. (101)"
* supportingInfo[brandgenericcode] ^short = "Whether the plan adjudicated the claim as a brand or generic drug (144)"
* supportingInfo[brandgenericcode] ^definition = "Whether the plan adjudicated the claim as a brand or generic drug (144)"
* supportingInfo[rxoriginCode] ^short = "Whether the prescription was transmitted as an electronic prescription, by phone, by fax, or as a written paper copy (143)"
* supportingInfo[rxoriginCode] ^definition = "Whether the prescription was transmitted as an electronic prescription, by phone, by fax, or as a written paper copy (143)"
* supportingInfo[refillNum] ^short = "The number fill of the current dispensed supply (0, 1, 2, etc.) (137)"
* supportingInfo[refillNum] ^definition = "The number fill of the current dispensed supply (0, 1, 2, etc.) (137)"
* supportingInfo[dawcode] ^short = "Prescriber's instruction regarding substitution of generic equivalents or order to dispense the specific prescribed medication (79)" 
* supportingInfo[dawcode] ^definition = "Prescriber's instruction regarding substitution of generic equivalents or order to dispense the specific prescribed medication (79)" 
* supportingInfo[clmrecvddate] ^short = "The date the claim was received by the payer (88)"
* supportingInfo[clmrecvddate] ^definition = "The date the claim was received by the payer (88)"
* supportingInfo[dayssupply] ^short = "Number of days supply of medication dispensed by the pharmacy (77)"
* supportingInfo[dayssupply] ^definition = "Number of days supply of medication dispensed by the pharmacy (77)"
* supportingInfo[compoundcode] ^short = "The code indicating whether or not the prescription is a compound.  NCPDP field # 406-D6 (78)"
* supportingInfo[compoundcode] ^definition = "The code indicating whether or not the prescription is a compound.  NCPDP field # 406-D6 (78)"
* item.adjudication[adjudicationamounttype] ^short = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* item.adjudication[adjudicationamounttype] ^definition = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* item.adjudication[denialreason] ^short = "Reason codes used to interpret the Non-Covered Amount (92)"
* item.adjudication[denialreason] ^definition = "Reason codes used to interpret the Non-Covered Amount (92)"
* total[inoutnetwork] ^short = "Indicates the in network or out of network payment status of the claim. (142)"
* total[inoutnetwork] ^definition = "Indicates the in network or out of network payment status of the claim. (142)"
* total[adjudicationamounttype] ^short = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* total[adjudicationamounttype] ^definition = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* identifier ^short = "Assigned by the pharmacy at the time the prescription is filled (35)"
* identifier ^definition = "Assigned by the pharmacy at the time the prescription is filled (35)"
* item.productOrService ^short = "National Drug Code (NDC), or if the prescription is a compound, the value 'Compound' (38)"
* item.productOrService ^definition = "National Drug Code (NDC), or if the prescription is a compound, the value 'Compound' (38)"
* item.productOrService ^comment = "Values are NDC Codes when Compound Code (MapID 78) = 0 or 1.  When the Compound Code = 2, productOrService = 'compound' and map the ingredient to ExplanationOfBenefit.item.detail.productOrService"
* item.detail.productOrService ^short = "National Drug Code (NDC) for the compound (38)"
* item.detail.productOrService ^definition = "National Drug Code (NDC) for the compound (38)"
* item.detail.productOrService ^comment = "Values are NDC Codes when Compound Code (MapID 78) = 2"
* item.quantity ^short = "Quantity dispensed for the drug (39) / The unit of measurement for the drug. (gram, ml, etc.) (151)"
* item.quantity ^definition = "Quantity dispensed for the drug (39) / The unit of measurement for the drug. (gram, ml, etc.) (151)" 
* item.quantity ^comment = "Populate for all Compound Code values.  When the Compound Code = 2, if available, map the ingredient to ExplanationOfBenefit.item.detail.quantity"     
* careTeam.provider ^short = "The identifier assigned to the PCP (96) or the identifier from NCPDP field # 411-DB (Prescriber ID) that identifies the National Provider Identifier (NPI) of the provider who prescribed the pharmaceutical. (122)."
* careTeam.provider ^definition = "The identifier assigned to the PCP (96) or the identifier from NCPDP field # 411-DB (Prescriber ID) that identifies the National Provider Identifier (NPI) of the provider who prescribed the pharmaceutical. (122)."
* total.amount ^short = "Total amount for each category (i.e., submitted, allowed, etc.) (148)"
* total.amount ^definition = "Total amount for each category (i.e., submitted, allowed, etc.) (148)"
* item.serviced[x] ^short = "Identifies date the prescription was filled or professional service rendered (90)"   // listed as item.serviced in CPCDS spreadsheet
* item.serviced[x] ^definition = "Identifies date the prescription was filled or professional service rendered (90)"   // listed as item.serviced in CPCDS spreadsheet


// ****** from EOB base *************
// removed careTeam.provider
* meta.lastUpdated ^short = "Defines the date the Resource was created or updated, whichever comes last (163)"
* meta.lastUpdated ^definition = "Defines the date the Resource was created or updated, whichever comes last (163)"
* meta.lastUpdated ^comment = "Payers SHALL provide the last time the data was updated or the date of creation in the payer’s system of record, whichever comes last"
* meta.profile ^short = "Profile this resource claims to conform to (189)"
* meta.profile ^definition = "Profile this resource claims to conform to (189)"
//* identifier ^short = "Identifier assigned by a payer for a claim received from a provider or subscriber. It is not the same identifier as that assigned by a provider. This identifier assigned by the payer becomes the payer's EOB identifier (35)"
//* identifier ^definition = "Identifier assigned by a payer for a claim received from a provider or subscriber. It is not the same identifier as that assigned by a provider. This identifier assigned by the payer becomes the payer's EOB identifier (35)"
* identifier.type ^short = "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber. (183)"
* identifier.type ^definition = "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber. (183)"
* status ^short = "Claim processing status code (140)"
* status ^definition = "Claim processing status code (140)"
* status ^comment = "Expected values are active or cancelled.  To comply with the CMS rule, draft EOBs are not required"
* type ^short = "Specifies the type of claim. (e.g., inpatient insitutional, outpatient institutional, physician, etc.) (16)"
* type ^definition = "Specifies the type of claim. (e.g., inpatient insitutional, outpatient institutional, physician, etc.) (16)"
* type ^comment = "Defines the Claims profiles.  Values from Claim Type Codes are required; a data absent reason is not allowed"
* use ^comment = "Expected value is claim. The CMS rule applies to adjudicated claims; it does not require preauthorizations or predeterminations"
* patient ^short = "Identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided. (1)"
* patient ^definition = "Identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided. (1)"
* patient ^comment = "The patient must be supplied to the insurer so that confirmation of coverage and service history may be considered as part of the authorization and/or adjudiction. Additional required path:EOB.insurance.coverage(Coverage).beneficiary(Patient).identifier"
//* billablePeriod.start ^short = "The first day on the billing statement covering services rendered to the beneficiary (i.e. 'Statement Covers From Date’). (177)"
//* billablePeriod.start ^definition = "The first day on the billing statement covering services rendered to the beneficiary (i.e. 'Statement Covers From Date’). (177)"
//* billablePeriod.end ^short = "The last day on the billing statement covering services rendered to the beneficiary (i.e. 'Statement Covers Thru Date’). (178)"
//* billablePeriod.end ^definition = "The last day on the billing statement covering services rendered to the beneficiary (i.e. 'Statement Covers Thru Date’). (178)"
* created ^short = "Date the claim was adjudicated (179)"
* created ^definition = "Date the claim was adjudicated (179)"
* insurer ^short = "Code of the payer responsible for the claim (2, 5)"
* insurer ^definition = "Code of the payer responsible for the claim (2, 5)"
* insurer ^comment = "Same as insurance.coverage.organization.  Party responsible for reimbursing the provider"
* provider ^short = "The identifier assigned to the Billing Provider. (94)"
* provider ^definition = "The identifier assigned to the Billing Provider. (94)"
* related ^short = "If the current claim represents a claim that has been adjusted and was given a prior claim number, this field represents the prior claim number. If the current claim has been adjusted; i.e., replaced by or merged to another claim number, this data element represents that new number.(111, 112)"
* related ^definition = "If the current claim represents a claim that has been adjusted and was given a prior claim number, this field represents the prior claim number. If the current claim has been adjusted; i.e., replaced by or merged to another claim number, this data element represents that new number.(111, 112)"
* payee.type ^short = "Identifies the type of recipient of the adjudication amount; i.e., provider, subscriber, beneficiary or another recipient. (120)"
* payee.type ^definition = "Identifies the type of recipient of the adjudication amount; i.e., provider, subscriber, beneficiary or another recipient. (120)"
* payee.party ^short = "Recipient reference (121)"
* payee.party ^definition = "Recipient reference (121)"
* outcome ^comment = "Expected value is complete"
* item.noteNumber ^comment = "References number of the associated processNote entered"
* careTeam.role ^short = "The functional role of a provider on a claim. (165)"
* careTeam.role ^definition = "The functional role of a provider on a claim. (165)"   
* careTeam.sequence ^comment = "careTeam.sequence values uniquely identify careTeam members.  They do not necessarily indiate any order in which the patient was seen by the careTeam or identify any level of significance of the careTeam to the patient, etc.  Client app implementations should not assign any significance to the sequence values"
* supportingInfo ^short = "Defines data elements not available in the base EOB resource"
* supportingInfo ^definition = "Defines data elements not available in the base EOB resource"
* supportingInfo.sequence ^comment = "Client app implementations should look-up supportingInfo elements based on category values instead of sequence values"
* insurance ^short = "Identity of the payers responsible for the claim. (2, 141)"
* insurance ^definition = "Identity of the payers responsible for the claim. (2, 141)"
* insurance ^comment = "All insurance coverages for the patient which may be applicable for reimbursement, of the products and services listed in the claim, are typically provided in the claim to allow insurers to confirm the ordering of the insurance coverages relative to local 'coordination of benefit' rules. One coverage (and only one) with 'focal=true' is to be used in the adjudication of this claim. An invariant is defined to enforce the following rule:  Will have multiple occurrences on secondary / tertiary, etc. claims.  Up to one occurrence, that of the ExplanationOfBenefit.insurer, will have a boolean value = 'True'"
* insurance.focal ^comment = "A patient may (will) have multiple insurance policies which provide reimbursement for healthcare services and products. For example, a person may also be covered by their spouse's policy and both appear in the list (and may be from the same insurer). This flag will be set to true for only one of the listed policies and that policy will be used for adjudicating this claim. Other claims would be created to request adjudication against the other listed policies. An invariant is defined to enforce the following rule:  Will have multiple occurrences on secondary / tertiary, etc. claims.  Up to one occurrence, that of the ExplanationOfBenefit.insurer, will have a boolean value = 'True'"
* insurance.coverage ^comment = "Same as insurance.coverage.organization.  Party responsible for reimbursing the provider. When focal = true, Coverage.payer--> Organization.identifier.  When focal = false, EOB.insurance.coverage.display = [name of other carrier]"
* item.sequence ^short = "Line identification number that represents the number assigned in a source system for identification and processing. (36)"
* item.sequence ^definition = "Line identification number that represents the number assigned in a source system for identification and processing. (36)"
* payment.type ^short = "Indicates whether the claim was paid or denied. (91)"
* payment.type ^definition = "Indicates whether the claim was paid or denied. (91)"
* payment.date ^short = "The date the claim was paid. (107)"
* payment.date ^definition = "The date the claim was paid. (107)"
* processNote.text ^short = "Payment denial explanation to a member, typically goes on the EOB when the payment is denied or disallowed (181)"
* processNote.text ^definition = "Payment denial explanation to a member, typically goes on the EOB when the payment is denied or disallowed (181)"