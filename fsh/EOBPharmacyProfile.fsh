Profile: CARINBBExplanationOfBenefitPharmacy
Parent: CARIN-BB-ExplanationOfBenefit
Id: CARIN-BB-ExplanationOfBenefit-Pharmacy
Title: "CARIN BB ExplanationOfBenefit Pharmacy"
Description: "This profile is used for Explanation of Benefits (EOBs) based on claims submitted by retail pharmacies. 
The claims data is based on submission standards adopted by the Department of Health and Human Services defined by NCPDP (National Council for Prescription Drug Program)"
* type = $HL7ClaimTypeCS#pharmacy 
// * provider only Reference(CARINBBOrganization or CARINBBPractitionerRole or CARINBBPractitioner)   Set in Abstract Class.  No need to set here.
* careTeam obeys EOB-pharm-careTeam-practitioner
* careTeam obeys EOB-pharm-careTeam-organization
* supportingInfo ^slicing.discriminator.type = #pattern 
* supportingInfo ^slicing.discriminator.path = "category"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false   // can be omitted, since false is the default
* supportingInfo ^slicing.description = "Slice based on $value pattern"
* supportingInfo MS 
* supportingInfo contains 
   billingnetworkcontractingstatus 0..1 MS and
   brandgenericcode 0..1 MS and
   rxoriginCode 0..1 MS and
   refillNum 0..1 MS and
   dawcode 0..1 MS and
   claimrecvddate 0..1 MS and
   dayssupply 0..1 MS and
   compoundcode 0..1 MS 
* supportingInfo[billingnetworkcontractingstatus].category = ClaimInformationCategoryCS#billingnetworkcontractingstatus
* supportingInfo[billingnetworkcontractingstatus] ^short = "Indicates that the Billing Provider has a contract with the Plan (regardless of the network) that is effective on the date of service or admission. (101)"
* supportingInfo[billingnetworkcontractingstatus].code from C4BBPayerProviderContractingStatus (required) 
* supportingInfo[billingnetworkcontractingstatus].code 1..1
* supportingInfo[brandgenericcode].category = ClaimInformationCategoryCS#brandgenericcode   
* supportingInfo[brandgenericcode] ^short = "Whether the plan adjudicated the claim as a brand or generic drug (144)"
* supportingInfo[brandgenericcode].code from NCPDPBrandGenericCode (required)
* supportingInfo[rxoriginCode].category = ClaimInformationCategoryCS#rxorigincode   
* supportingInfo[rxoriginCode] ^short = "Whether the prescription was transmitted as an electronic prescription, by phone, by fax, or as a written paper copy (143)"
* supportingInfo[rxoriginCode].code from NCPDPPrescriptionOriginCode (required)
* supportingInfo[refillNum].category = ClaimInformationCategoryCS#refillnum
* supportingInfo[refillNum] ^short = "The number fill of the current dispensed supply (0, 1, 2, etc.) (137)"
* supportingInfo[dawcode].category = ClaimInformationCategoryCS#dawcode       
* supportingInfo[dawcode] ^short = "Dispense As Written product selection code" 
* supportingInfo[dawcode].code from NCPDPDispensedAsWritten (required)
* supportingInfo[claimrecvddate].category = ClaimInformationCategoryCS#claimrecvddate
* supportingInfo[claimrecvddate] ^short = "The date the claim was received by the payer (88)"
* supportingInfo[dayssupply].category = ClaimInformationCategoryCS#dayssupply
* supportingInfo[dayssupply] ^short = "Number of days supply of medication dispensed by the pharmacy (77)"
* supportingInfo[compoundcode].category = ClaimInformationCategoryCS#compoundcode
* supportingInfo[compoundcode] ^short = "NCPDP Compound code"
* supportingInfo[compoundcode].code from NCPDPCompoundCode (required)
* item.productOrService from FDANDCOrCompound (required)
* item.detail.productOrService  from FDANDC  (required)
* item.detail MS
* item.detail.quantity MS 
* careTeam.role from C4BBClaimPharmacyTeamRole  (required)   // was PayerPharmacyProviderRole
* item.adjudication ^slicing.rules = #closed
* item.adjudication ^slicing.ordered = false   // can be omitted, since false is the default
* item.adjudication ^slicing.description = "Slice based on $this pattern"
* item.adjudication ^slicing.discriminator.type = #pattern
* item.adjudication ^slicing.discriminator.path = "category"
* item.adjudication contains
   adjudicationamounttype 0..* MS 
* item.adjudication[adjudicationamounttype].category from C4BBAdjudication
* item.adjudication[adjudicationamounttype] ^short = "Amounts"
* item.adjudication[adjudicationamounttype].amount  MS
* total ^slicing.rules = #open 
* total ^slicing.ordered = false   // can be omitted, since false is the default
* total ^slicing.description = "Slice based on value pattern"
* total  ^slicing.discriminator.type = #value
* total  ^slicing.discriminator.path = "category"
* total.category 1..1 MS 
* total contains
   adjudicationamounttype 0..* MS and 
   inoutnetwork 1..1 MS 
* total[inoutnetwork] ^short = "Benefit Payment Status"
* total[inoutnetwork].category from C4BBPayerBenefitPaymentStatus (required)
* total[adjudicationamounttype].category from C4BBAdjudication  (required)
* total[adjudicationamounttype] ^short = "Amounts"
//* total[adjudicationamounttype].amount 1..1
* patient ^short = "Unique identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided. (1)"
* insurance.coverage ^short = "Unique identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided. (1)"
* insurance ^short = "Code of the primary payer responsible for the claim (2)"
* type ^short = "Specifies the type of claim. (e.g., inpatient insitutional, outpatient institutional, physician, etc.).  (16)"
/*
* item.adjudication ^short = "Represents the Usual & Customary Charge Amount or the Average Wholesale Price (AWP) for the Quantity Dispensed plus the Dispensing Fee Paid. (20)"
* item.adjudication ^short = "The contracted reimbursable amount for covered medical services or supplies or amount reflecting local methodology for noncontracted providers. Allowed  mount should not include any COB adjustment. That is, the Allowed amount on a claim should be the same when the Plan is primary or secondary. (20)"
* item.adjudication ^short = "The contracted reimbursable amount for covered medical services or supplies or amount reflecting local methodology for noncontracted providers. (20)"
* item.adjudication ^short = "Amount to be collected from a patient that is included in the Patient Pay Amount that is due to a per prescription copay or coinsurance. (20)"
* item.adjudication ^short = "Amount to be collected from a patient that is included in the Patient Pay Amount that is due to a per prescription copay or coinsurance. (20)"
* item.adjudication ^short = "Non-Covered Amount represents the NCPDP financial response field Amount Exceeding Periodic Benefit Maximum. (20)"
* item.adjudication ^short = "The reduction in the payment amount to reflect the carrier as a secondary payor. (20)"
* item.adjudication ^short = "The amount sent to the payee from the health plan. This amount is to include withhold amounts (the portion of the claim that is deducted and withheld by the Plan from the provider's payment) and exclude any member cost sharing.  It should include the total of member and provider payments. (20)"
* item.adjudication ^short = "Amount that is calculated by the processor and returned to the pharmacy as the total amount to be paid by the patient to the pharmacy; the patient’s total cost share, including copayments, amounts applied to deductible, over maximum amounts, penalties, etc (20)"
* item.adjudication ^short = "The amount of the discount (20)"
* item.adjudication ^short = "Price paid for the drug excluding mfr discounts.  It is the sum of the following components:ingredient cost, dispensing fee, sales tax, and vaccine administration fee (20)"
* item.adjudication ^short = "The amount paid to the provider. (20)"
* item.adjudication ^short = "The amount paid to the member. (20)"
* item.adjudication ^short = "The amount of the member's liability. (20)"
* item.adjudication ^short = "Reason codes used to interpret the Non-Covered Amount (92)"
* item.adjudication ^short = "Indicates the in network or out of network payment status of the claim. (142)"
*/
* identifier ^short = "Assigned by the pharmacy at the time the prescription is filled (35)"
* item.sequence ^short = "Line identification number that represents the number assigned in a source system for identification and processing. (36)"
* item.productOrService ^short = "National Drug Code (NDC) (38)"
* item.quantity ^short = "Quantity dispensed for the drug (39)"
* item.productOrService ^short = "The code indicating whether or not the prescription is a compound (78)"
* item.quantity ^short = "The unit of measurement for the drug. (gram, ml, etc.) (151)"
* payment.type ^short = "Indicates whether the claim was paid or denied. (91)"
* provider ^short = "The National Provider Identifier assigned to the Billing Provider. (94)"
* careTeam.provider ^short = "The identifier assigned to the PCP Provider. (95)"
* payment.date ^short = "The date the claim was paid. (107)"
* payee.type ^short = "Identifies recipient of benefits payable; i.e., provider or subscriber (120)"
* payee.party ^short = "Recipient reference (121)"
* careTeam.provider ^short = "The identifier from NCPDP field # 411-DB (Prescriber ID) that identifies the National Provider Identifier (NPI) of the provider who prescribed the pharmaceutical. (122)" 
* insurance ^short = "Identifies the primary payer.  For use only on secondary claims.   (141)"
* total.amount ^short = "Total amount for each category (i.e., submitted, allowed, etc.) (148)"
* patient MS
* insurance.coverage MS
* insurance MS
* type MS
* identifier MS
* item.sequence MS
* item.productOrService MS
* item.quantity MS
* item.productOrService MS
* item.serviced[x] ^short = "Identifies date the prescription was filled or professional service rendered (90)"   // listed as item.serviced in CPCDS spreadsheet
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

