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
* supportingInfo[brandgenericcode] ^short = "Whether the plan adjudicated the claim as a brand or generic drug (144)"
* supportingInfo[rxoriginCode] ^short = "Whether the prescription was transmitted as an electronic prescription, by phone, by fax, or as a written paper copy (143)"
* supportingInfo[refillNum] ^short = "The number fill of the current dispensed supply (0, 1, 2, etc.) (137)"
* supportingInfo[dawcode] ^short = "Prescriber's instruction regarding substitution of generic equivalents or order to dispense the specific prescribed medication (79)" 
* supportingInfo[clmrecvddate] ^short = "The date the claim was received by the payer (88)"
* supportingInfo[dayssupply] ^short = "Number of days supply of medication dispensed by the pharmacy (77)"
* supportingInfo[compoundcode] ^short = "The code indicating whether or not the prescription is a compound.  NCPDP field # 406-D6 (78)"
* item.adjudication[adjudicationamounttype] ^short = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* item.adjudication[denialreason] ^short = "Reason codes used to interpret the Non-Covered Amount (92)"
* total[inoutnetwork] ^short = "Indicates the in network or out of network payment status of the claim. (142)"
* total[adjudicationamounttype] ^short = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* patient ^short = "Identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided. (1)"
* insurer ^short = "Code of the payer responsible for the claim. (2, 5)"
* insurance ^short = "Identity of the payers responsible for the claim. (2, 141)"
* type ^short = "Specifies the type of claim. (e.g., inpatient insitutional, outpatient institutional, physician, etc.) (16)"
* identifier ^short = "Assigned by the pharmacy at the time the prescription is filled (35)"
* item.sequence ^short = "Line identification number that represents the number assigned in a source system for identification and processing. (36)"
* item.productOrService ^short = "National Drug Code (NDC), or if the prescription is a compound, the value 'Compound' (38)"
* item.quantity ^short = "Quantity dispensed for the drug (39) / The unit of measurement for the drug. (gram, ml, etc.) (151)"
* payment.type ^short = "Indicates whether the claim was paid or denied. (91)"
* provider ^short = "The National Provider Identifier assigned to the Billing Provider. (94)"
* careTeam.provider ^short = "The identifier assigned to the PCP (96) or the identifier from NCPDP field # 411-DB (Prescriber ID) that identifies the National Provider Identifier (NPI) of the provider who prescribed the pharmaceutical. (122)."
* payment.date ^short = "The date the claim was paid. (107)"
* payee.type ^short = "Identifies the type of recipient of the adjudication amount; i.e., provider, subscriber, beneficiary or another recipient. (120)"
* payee.party ^short = "Recipient reference (121)"
* status ^short = "Claim processing status code. (140)"
* meta.lastUpdated ^short = "Defines the date the Resource was created or updated, whichever is later. (163)"
* meta.profile ^short = "Profile this resource claims to conform to. (189)"
* careTeam.role ^short = "The functional role of a provider on a claim. (165)"
* total.amount ^short = "Total amount for each category (i.e., submitted, allowed, etc.) (148)"
* item.serviced[x] ^short = "Identifies date the prescription was filled or professional service rendered (90)"   // listed as item.serviced in CPCDS spreadsheet
