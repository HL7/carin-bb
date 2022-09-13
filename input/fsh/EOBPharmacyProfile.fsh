Profile: C4BBExplanationOfBenefitPharmacy
Parent: C4BB-ExplanationOfBenefit
Id: C4BB-ExplanationOfBenefit-Pharmacy
Title: "C4BB ExplanationOfBenefit Pharmacy"
Description: "This profile is used for Explanation of Benefits (EOBs) based on claims submitted by retail pharmacies.
The claims data is based on submission standards adopted by the Department of Health and Human Services defined by NCPDP (National Council for Prescription Drug Program)"
// 20210322 CAS: FHIR-30575
//* insert Metaprofile-supportedProfile-slice
//* meta.profile[supportedProfile] = Canonical(C4BBExplanationOfBenefitPharmacy|1.2.0)
* obeys EOB-pharmacy-meta-profile-version

* type = $HL7ClaimTypeCS#pharmacy
// * provider only Reference(C4BBOrganization or C4BBPractitionerRole or C4BBPractitioner)   Set in Abstract Class.  No need to set here.
* careTeam obeys EOB-pharm-careTeam-practitioner
* careTeam obeys EOB-pharm-careTeam-organization
* insert SupportingInfoSlicing
* supportingInfo contains
   dayssupply 1..1 MS and
   dawcode 1..1 MS and
   refillNum 1..1 MS and
   refillsAuthorized 1..1 and
   brandgenericindicator 0..1 MS and
   rxoriginCode 0..1 MS and
   clmrecvddate 0..1 MS and
   compoundcode 0..1 MS
   

* supportingInfo[brandgenericindicator] ^short = "Plan reported brand or generic drug indicator"
* supportingInfo[brandgenericindicator].category = C4BBSupportingInfoType#brandgenericindicator
* supportingInfo[brandgenericindicator].category MS
* supportingInfo[brandgenericindicator].code from NCPDPBrandGenericIndicator (required)
* supportingInfo[brandgenericindicator].code 1..1 MS
* supportingInfo[rxoriginCode] ^short = "Prescription origin code"
* supportingInfo[rxoriginCode].category = C4BBSupportingInfoType#rxorigincode
* supportingInfo[rxoriginCode].category MS
* supportingInfo[rxoriginCode].code from NCPDPPrescriptionOriginCode (required)
* supportingInfo[rxoriginCode].code 1..1 MS
* supportingInfo[refillNum] ^short = "The number fill of the claim dispensed supply"
* supportingInfo[refillNum].category = C4BBSupportingInfoType#refillnum
* supportingInfo[refillNum].category MS
* supportingInfo[refillNum].value[x] 1..1 MS
* supportingInfo[refillNum].value[x] only Quantity
* supportingInfo[refillsAuthorized] ^short = "Number or refills authorized by prescriber"
* supportingInfo[refillsAuthorized].category = C4BBSupportingInfoType#refillsauthorized
* supportingInfo[refillsAuthorized].category MS
* supportingInfo[refillsAuthorized].value[x] 1..1 MS
* supportingInfo[refillsAuthorized].value[x] only Quantity
* supportingInfo[dawcode] ^short = "Dispense and written product selection code"
* supportingInfo[dawcode].category = C4BBSupportingInfoType#dawcode
* supportingInfo[dawcode].category MS
* supportingInfo[dawcode].code from NCPDPDispensedAsWrittenOrProductSelectionCode (required)
* supportingInfo[dawcode].code 1..1 MS

* supportingInfo[clmrecvddate] ^short = "Claim received date"
* supportingInfo[clmrecvddate].category = C4BBSupportingInfoType#clmrecvddate
* supportingInfo[clmrecvddate].category MS
* supportingInfo[clmrecvddate].timing[x] only date
* supportingInfo[clmrecvddate].timing[x] 1..1 MS
* supportingInfo[dayssupply] ^short = "Days supply"
* supportingInfo[dayssupply].category = C4BBSupportingInfoType#dayssupply
* supportingInfo[dayssupply].category  MS
* supportingInfo[dayssupply].value[x] 1..1 MS
* supportingInfo[dayssupply].value[x] only Quantity
* supportingInfo[compoundcode] ^short = "Code indicating whether or not the prescription is a compound"
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

* insert AdjudicationSlicing
* adjudication  MS
* adjudication contains
   billingnetworkcontractingstatus 0..1 MS and
   benefitpaymentstatus 1..1 MS


* adjudication[billingnetworkcontractingstatus] ^short = "Billing provider contracting status"
* adjudication[billingnetworkcontractingstatus].category = C4BBAdjudicationDiscriminator#billingnetworkcontractingstatus
* adjudication[billingnetworkcontractingstatus].category MS
* adjudication[billingnetworkcontractingstatus].reason from C4BBPayerProviderContractingStatus (required)
* adjudication[billingnetworkcontractingstatus].reason 1..1 MS

* adjudication[benefitpaymentstatus] ^short = "Indicates the in network or out of network payment status of the claim. (142)"
* adjudication[benefitpaymentstatus].category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
* adjudication[benefitpaymentstatus].reason from  C4BBPayerBenefitPaymentStatus  (required)
* adjudication[benefitpaymentstatus].reason 1..1 MS


* insert ItemAdjudicationSlicing
* item.adjudication MS
* item.adjudication contains
   adjudicationamounttype 1..* MS and
   denialreason 0..1 MS

* item.adjudication[adjudicationamounttype] ^short =  "Line level adjudication type and amount"
* item.adjudication[adjudicationamounttype].category from C4BBAdjudication
* item.adjudication[adjudicationamounttype].amount  MS
* item.adjudication[adjudicationamounttype].amount 1..1

* item.adjudication[denialreason] ^short = "Reason codes used to interpret the Non-Covered Amount (92)"
* item.adjudication[denialreason].category  = C4BBAdjudicationDiscriminator#denialreason
* item.adjudication[denialreason].reason from NCPDPRejectCode
* item.adjudication[denialreason].reason 1..1 MS
* insert TotalSlicing
* total.category from C4BBTotalCategoryDiscriminator (extensible)
* total.category 1..1 MS
* total contains
   adjudicationamounttype 1..* MS

* total[adjudicationamounttype] ^short =  "Total adjudication type and amount"
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
* item.serviced[x] 1..1
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


* supportingInfo[brandgenericindicator] ^comment = "Whether the plan adjudicated the claim as a brand or generic drug (144)"
* supportingInfo[rxoriginCode] ^comment = "Whether the prescription was transmitted as an electronic prescription, by phone, by fax, or as a written paper copy (143)"
* supportingInfo[refillNum] ^comment = "The number fill of the current dispensed supply (0, 1, 2, etc.) (137)"
* supportingInfo[dawcode] ^comment = "Prescriber's instruction regarding substitution of generic equivalents or order to dispense the specific prescribed medication (79)"
* supportingInfo[clmrecvddate] ^comment = "The date the claim was received by the payer (88)"
* supportingInfo[dayssupply] ^comment = "Number of days supply of medication dispensed by the pharmacy (77)"
* supportingInfo[compoundcode] ^comment = "The code indicating whether or not the prescription is a compound.  NCPDP field # 406-D6 (78)"
* adjudication[billingnetworkcontractingstatus] ^comment = "Indicates that the Billing Provider has a contract with the Plan (regardless of the network) that is effective on the date of service. (101)"
* adjudication[benefitpaymentstatus] ^comment = "Indicates the in network or out of network payment status of the claim. (142)"
* item.adjudication[adjudicationamounttype] ^comment = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* item.adjudication[denialreason] ^comment = "Reason codes used to interpret the Non-Covered Amount (92)"
* total[adjudicationamounttype] ^comment = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* identifier ^comment = "Assigned by the pharmacy at the time the prescription is filled (35)"
* item.productOrService ^comment = "Values are NDC Codes (38) when Compound Code (78) = 0 or 1.  When the Compound Code = 2, productOrService = 'compound' and map the ingredient to ExplanationOfBenefit.item.detail.productOrService"
* item.detail.productOrService ^comment = "Values are NDC Codes (38) when Compound Code (78) = 2"
* item.quantity ^comment = "Quantity dispensed for the drug (39) / The unit of measurement for the drug. (gram, ml, etc.) (151).  Populate for all Compound Code values.  When the Compound Code = 2, if available, map the ingredient to ExplanationOfBenefit.item.detail.quantity"
* careTeam.provider ^comment = "The identifier assigned to the PCP (96) or the identifier from NCPDP field # 411-DB (Prescriber ID) that identifies the National Provider Identifier (NPI) of the provider who prescribed the pharmaceutical. (122)."
* total.amount ^comment = "Total amount for each category (i.e., submitted, allowed, etc.) (148)"
* item.serviced[x] ^comment = "Identifies date the prescription was filled or professional service rendered (90)"   // listed as item.serviced in CPCDS spreadsheet

* insert EOBBaseProfileComments
