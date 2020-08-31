// Contains Codesystems Defined WITHIN this IG
// CodeSystemStubs.fsh contains stubs for external codesystems.


CodeSystem: C4BBAdjudicationCS
Title: "C4BB Adjudication"
Description: "Describes the various amount fields used when payers receive and adjudicate a claim.  It complements the values defined in http://terminology.hl7.org/CodeSystem/adjudication."
* #coinsurance "Co-insurance" "The amount the insured individual pays, as a set percentage of the cost of covered medical services, as an out-of-pocket payment to the provider. Example: Insured pays 20% and the insurer pays 80%."
* #noncovered "Noncovered" "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract.."
* #priorpayerpaid "Prior payer paid" "The reduction in the payment amount to reflect the carrier as a secondary payor."
* #paidbypatient "Paid by patient" "The amount paid by the patient at the point of service."
* #paidtoprovider "Paid to provider" "The amount paid to the provider."
* #paidtopatient "Paid to patient" "paid to patient"
* #memberliability "Member liability" "The amount of the member's liability."
* #discount "Discount" "The amount of the discount"
* #drugcost "Drug cost" "Price paid for the drug excluding mfr or other discounts.  It typically is the sum of the following components: ingredient cost, dispensing fee, sales tax, and vaccine administration"
* ^copyright = "This CodeSystem is not copyrighted."
// * #innetwork "In-network" "in-network"
// * #outofnetwork "Out-of-network" "out-of-network"
// * #other "Other" "other"
// * #contracted "Contracted" "contracted"
// * #non-contracted "Non-contracted" "non-contracted"
// * #subscriber "Subscriber" "subscriber"
// * #provider "Provider" "provider"
// * #paid "Paid" "paid"
// * #denied "Denied"  "denied"
// * #submitted "Submitted" "The total submitted amount for the claim or group or line item."
// * #allowed "Allowed" "Allowed"
// * #deductible "Deductible" "Amount deducted from the eligible amount prior to adjudication."
// * #copay "copay" "Patient Co-Payment"
// * #payment "Payment" "payment"

CodeSystem: C4BBClaimDiagnosisType
Title: "C4BB Claim Diagnosis Type"
Description: "Indicates if the institutional diagnosis is admitting, principal, secondary an external cause of injury or a patient reason for visit.  Complements http://terminology.hl7.org/CodeSystem/ex-diagnosistype."
* #external-cause-of-injury "External Cause of Injury" "Required when an external cause of injury is needed to describe the injury"
* #patient-reason-for-visit "Patient Reason for Visit" "Identifies the patient's reason for the outpatient institutional visit"
* #other "Other"  "Required when other conditions coexist or develop subsequently during the treatment"
* #secondary  "Secondary"  "Required when necessary to report additional diagnoses on professional and non-clinician claims"
* ^copyright = "This CodeSystem is not copyrighted."


CodeSystem: C4BBClaimCareTeamRoleCS
Title: "C4BB Claim Care Team Role"
Description: "Describes functional roles of the care team members.  Complements http://terminology.hl7.org/CodeSystem/claimcareteamrole"
* #attending  "Attending"  "The attending physicianr"
* #referring "Referring"  "The referring physician"
* #operating "Operating"  "The operating physician"
* #performing "Performing provider"  "The performing or rendering provider"
* #prescribing "Prescribing provider" "The prescribing provider"
//* #pcp "pcp" "Primary Care Provider"
//* #site "site"  "Site Provider"
//* #supervising "supervising" "Supervising"
* ^copyright = "This Code System is not copyrighted."

CodeSystem: C4BBBCompoundLiteralCS
Title: "C4BB Compound Literal Code System"
Description: "CodeSystem for a Literal 'compound' value"
* #compound "compound" "Compound"
* ^copyright = "This CodeSystem is not copyrighted."

CodeSystem: IdentifierTypeCS
Title: "Identifier Type"
Description: "Identifier Type codes that extend those defined in http://terminology.hl7.org/CodeSystem/v2-0203"
// * #tax "Tax ID Number" "Tax ID Number"  - use the TAX code from the base codesystem
* #npi "National Provider Identifier" "National Provider Identifier"
* #clia "CLIA" "CLIA"
* #payerid "Payer ID" "Payer ID"
* #mb "Member ID" "Member ID"
// * #mr "Medical Record Number" "Medical Record Number" - use the MR code from the base codesystem
* #pt "Patient Account Number" "Patient Account Number"
* #um "Unique Member ID" "Unique Member ID"
* #cn "Claim Number" "Claim Number"
* ^copyright = "This CodeSystem is not copyrighted."

CodeSystem: ClaimAdjudicationCategoryCS
Title: "Claim Adjudication Category"
Description: "Values for EOB.item.adjudication.category and total.category"
* #allowedunits	"allowed units" "Undefined"
* #inoutnetwork "In or Out of Network" "Undefined"
* ^copyright = "This CodeSystem is not copyrighted."

CodeSystem: ClaimInformationCategoryCS
Title: "Claim Information Category"
Description: "Claim Information Category - Used as the discriminator for supportingInfo" 
* #admissionperiod  "Admission Period"                                     "Admission Period"
* #admtype	"admtype"	                                                    "Priority of the admission. Information located on (UB04 Form Locator 14). For example, an admission type of elective indicates that the patient's condition permitted time for medical services to be scheduled."	
* #billingnetworkcontractingstatus	"billingnetworkcontractingstatus"       "Indicates the network  status of the billing physician."	
* #brandgenericcode	"brandgenericcode"                                      "Whether the plan adjudicated the claim as a brand or generic drug."
* #claimrecvddate	"claimmrecvddate"	                                            "The date the claim was received by the payer."	
* #compoundcode "compoundcode"                                              "NCPDP Compound code"	
* #dawcode	"dawcode"	                                                    "Prescriber's instruction regarding substitution of generic equivalents or order to dispense the specific prescribed medication."	
* #dayssupply	"dayssupply"	                                            "Number of days supply of medication dispensed by the pharmacy."	
* #discharge-status	"discharge-status"                                      "Patient’s status as of the discharge date for a facility stay."		
* #drg	"drg"	                                                            "Diagnosis Related Group"	
* #performingnetworkcontractingstatus	"performingnetworkcontractingstatus" "Indicates the network  status of the performing physician."		
* #placeofservice	"placeofservice"	                                    "Code indicating the location, such as inpatient, outpatient facility, office, or home health agency, where this service was performed."	
* #refillnum	"refillnum"	                                                "The number fill of the current dispensed supply (0, 1, 2, etc.)."	
* #rxorigincode	"rxorigincode"	                                            "Whether the prescription was transmitted as an electronic prescription, by phone, by fax, or as a written paper copy"	
* #servicefacility  "Service Facility"                                     "Service Facility"
* #typeofbill "Type of Bill"                                                "Type of Bill"
* ^copyright = "This CodeSystem is not copyrighted."