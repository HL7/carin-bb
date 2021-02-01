Profile: C4BBExplanationOfBenefitPharmacy
Parent: C4BB-ExplanationOfBenefit
Id: C4BB-ExplanationOfBenefit-Pharmacy
Title: "C4BB ExplanationOfBenefit Pharmacy"
Description: "This profile is used for Explanation of Benefits (EOBs) based on claims submitted by retail pharmacies. 
The claims data is based on submission standards adopted by the Department of Health and Human Services defined by NCPDP (National Council for Prescription Drug Program)"
* meta.profile[supportedProfile] = Canonical(C4BBExplanationOfBenefitPharmacy)
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
* supportingInfo[billingnetworkcontractingstatus].category MS
* supportingInfo[billingnetworkcontractingstatus].code from C4BBPayerProviderContractingStatus (required) 
* supportingInfo[billingnetworkcontractingstatus].code 1..1 MS
* supportingInfo[brandgenericcode].category = C4BBSupportingInfoType#brandgenericcode 
* supportingInfo[brandgenericcode].category MS  
* supportingInfo[brandgenericcode].code from NCPDPBrandGenericCode (required)
* supportingInfo[brandgenericcode].code 1..1 MS
* supportingInfo[rxoriginCode].category = C4BBSupportingInfoType#rxorigincode 
* supportingInfo[rxoriginCode].category MS  
* supportingInfo[rxoriginCode].code from NCPDPPrescriptionOriginCode (required)
* supportingInfo[rxoriginCode].code 1..1 MS 
* supportingInfo[refillNum].category = C4BBSupportingInfoType#refillnum
* supportingInfo[refillNum].category MS
* supportingInfo[refillNum].value[x] 1..1 MS
* supportingInfo[refillNum].value[x] only Quantity 
* supportingInfo[dawcode].category = C4BBSupportingInfoType#dawcode  
* supportingInfo[dawcode].category MS     
* supportingInfo[dawcode].code from NCPDPDispensedAsWrittenOrProductSelectionCode (required)
* supportingInfo[dawcode].code 1..1 MS 
* supportingInfo[clmrecvddate].category = C4BBSupportingInfoType#clmrecvddate
* supportingInfo[clmrecvddate].category MS
* supportingInfo[clmrecvddate].timing[x] only date 
* supportingInfo[clmrecvddate].timing[x] 1..1 MS
* supportingInfo[dayssupply].category = C4BBSupportingInfoType#dayssupply
* supportingInfo[dayssupply].category  MS
* supportingInfo[dayssupply].value[x] 1..1 MS
* supportingInfo[dayssupply].value[x] only Quantity 
* supportingInfo[compoundcode].category = C4BBSupportingInfoType#compoundcode
* supportingInfo[compoundcode].category MS
* supportingInfo[compoundcode].code from NCPDPCompoundCode (required)
* supportingInfo[compoundcode].code 1..1 MS
* item.productOrService from FDANDCOrCompound (required)
* item.detail.productOrService  from FDANationalDrugCode  (required)
* item.detail MS
* item.detail.quantity MS 
* careTeam.role from C4BBClaimPharmacyTeamRole  (required)   // was PayerPharmacyProviderRole
* careTeam.role 1..1 MS
* adjudication 0..1
* insert ItemAdjudicationSlicing
* item.adjudication MS 
* item.adjudication contains
   adjudicationamounttype 1..* MS and
   denialreason 0..1 MS 
* item.adjudication[adjudicationamounttype].category from C4BBAdjudication
* item.adjudication[adjudicationamounttype].amount  MS
* item.adjudication[adjudicationamounttype].amount 1..1
* item.adjudication[denialreason].category  = C4BBAdjudicationDiscriminator#denialreason 
* item.adjudication[denialreason].reason from NCPDPRejectCode
* item.adjudication[denialreason].reason 1..1 MS
* insert TotalSlicing
* total.category from C4BBTotalCategoryDiscriminator (extensible)
* total.category 1..1 MS 
* total contains
   adjudicationamounttype 1..* MS and 
   benefitpaymentstatus 1..1 MS 
* total[benefitpaymentstatus].category from C4BBPayerBenefitPaymentStatus (required)
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


* supportingInfo[billingnetworkcontractingstatus] ^comment = "Indicates that the Billing Provider has a contract with the Plan (regardless of the network) that is effective on the date of service. (101)"
* supportingInfo[brandgenericcode] ^comment = "Whether the plan adjudicated the claim as a brand or generic drug (144)"
* supportingInfo[rxoriginCode] ^comment = "Whether the prescription was transmitted as an electronic prescription, by phone, by fax, or as a written paper copy (143)"
* supportingInfo[refillNum] ^comment = "The number fill of the current dispensed supply (0, 1, 2, etc.) (137)"
* supportingInfo[dawcode] ^comment = "Prescriber's instruction regarding substitution of generic equivalents or order to dispense the specific prescribed medication (79)" 
* supportingInfo[clmrecvddate] ^comment = "The date the claim was received by the payer (88)"
* supportingInfo[dayssupply] ^comment = "Number of days supply of medication dispensed by the pharmacy (77)"
* supportingInfo[compoundcode] ^comment = "The code indicating whether or not the prescription is a compound.  NCPDP field # 406-D6 (78)"
* item.adjudication[adjudicationamounttype] ^comment = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* item.adjudication[denialreason] ^comment = "Reason codes used to interpret the Non-Covered Amount (92)"
* total[benefitpaymentstatus] ^comment = "Indicates the in network or out of network payment status of the claim. (142)"
* total[adjudicationamounttype] ^comment = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* identifier ^comment = "Assigned by the pharmacy at the time the prescription is filled (35)"
* item.productOrService ^comment = "Values are NDC Codes (38) when Compound Code (78) = 0 or 1.  When the Compound Code = 2, productOrService = 'compound' and map the ingredient to ExplanationOfBenefit.item.detail.productOrService"
* item.detail.productOrService ^comment = "Values are NDC Codes (38) when Compound Code (78) = 2"
* item.quantity ^comment = "Quantity dispensed for the drug (39) / The unit of measurement for the drug. (gram, ml, etc.) (151).  Populate for all Compound Code values.  When the Compound Code = 2, if available, map the ingredient to ExplanationOfBenefit.item.detail.quantity"     
* careTeam.provider ^comment = "The identifier assigned to the PCP (96) or the identifier from NCPDP field # 411-DB (Prescriber ID) that identifies the National Provider Identifier (NPI) of the provider who prescribed the pharmaceutical. (122)."
* total.amount ^comment = "Total amount for each category (i.e., submitted, allowed, etc.) (148)"
* item.serviced[x] ^comment = "Identifies date the prescription was filled or professional service rendered (90)"   // listed as item.serviced in CPCDS spreadsheet

* insert EOBBaseProfileComments
