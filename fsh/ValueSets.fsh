

CodeSystem: ClaimInformationCategoryCS
Title: "Claim Information Category"
Description: "Claim Information Category - Used as the discriminator for supportingInfo" 
* #billingnetworkcontractingstatus	"billingnetworkcontractingstatus" "Undefined"	
* #attendingnetworkcontractingstatus "attendingnetworkcontractingstatus" "Undefined"	
* #sitenetworkcontractingstatus	"sitenetworkcontractingstatus"	"Undefined"	
* #referringnetworkcontractingstatus	"referringnetworkcontractingstatus"	"Undefined"	
* #performingnetworkcontractingstatus	"performingnetworkcontractingstatus" "Undefined"		
* #prescribingnetworkcontractingstatus	"prescribingnetworkcontractingstatus"	"Undefined"	
* #clmrecvddate	"clmrecvddate"	"Undefined"	
* #typeofservice	"typeofservice"	"Undefined"	
* #tob-typeoffacility	"tob-typeoffacility"	"Undefined"	
* #tob-billclassification	"tob-billclassification" "Undefined"		
* #tob-frequency	"tob-frequency"	"Undefined"	
* #admsrc	"admsrc" "Undefined"	
* #admtype	"admtype"	"Undefined"	
* #discharge-status	"discharge-status" "Undefined"		
* #ms-drg	"ms-drg"	"Undefined"	
* #placeofservice	"placeofservice"	"Undefined"	
* #dayssupply	"dayssupply"	"Undefined"	
* #dawcode	"dawcode"	"Undefined"	
* #refillnum	"refillnum"	"Undefined"	
* #rxorigincode	"rxorigincode"	"Undefined"	
* #brandgenericcode	"brandgenericcode" "Undefined"	

ValueSet: ClaimInformationCategoryVS
Title: "Claim Information Category"
Description: "Claim Information Category - Used as the discriminator for supportingInfo" 
* codes from system ClaimInformationCategoryCS 

CodeSystem: PayerProviderRoleCS
Title: "Payer Provider Role"
Description: "Payer Provider Role"
* #attending  "attending"  "Attending Provider"
* #performing "performing"  "Performing Provider"
* #pcp "pcp" "Primary Care Provider"
* #site "site"  "Site Provider"
* #prescribing "prescribing" "Prescribing Provider"

ValueSet: PayerProviderRoleVS
Title: "Payer Provider Role"
Description: "Payer Provider Role"
* codes from system PayerProviderRoleCS

ValueSet: PayerInpatientFacilityProviderRoleVSProviderRoleVS
Title: "Payer - Inpatient Facility Provider Role"
Description: "Indicates the role of the provider providing the care."
* PayerProviderRoleCS#attending "AttendingProvider"
* PayerProviderRoleCS#pcp "Primary Care Provider"
* PayerProviderRoleCS#performing "Performing Provider"
* PayerProviderRoleCS#referring "Referring Provider"

ValueSet: PayerOutpatientFacilityProviderRoleVS
Title: "Payer - Outpatient Facility Provider Role"
Description: "Indicates the role of the provider providing the care."
* PayerProviderRoleCS#pcp "Primary Care Provider"
* PayerProviderRoleCS#performing "Performing Provider"
* PayerProviderRoleCS#referring "Referring Provider"

ValueSet: PayerProfessionalAndNonClinicianProviderRoleVS
Title: "Payer - Professional and Non-Clinician Provider Role"
Description: "Indicates the role of the provider providing the care."
* PayerProviderRoleCS#pcp "Primary Care Provider"
* PayerProviderRoleCS#performing "Performing Provider"
* PayerProviderRoleCS#referring "Referring Provider"
* PayerProviderRoleCS#site  "Site Provider"

ValueSet: PayerPharmacyProviderRoleVS
Title: "Payer - Pharmacy Provider Role"
Description: "Indicates the role of the provider providing the care."
* PayerProviderRoleCS#pcp "Primary Care Provider"
* PayerProviderRoleCS#prescribing "Prescribing Provider"

ValueSet: AdjudicationPayerValueCodesVS
Title: "Payer Adjudication Value Codes"
Description: "As per Jira FHIR-26992... HL7 Requested to fix HL7 Adjudication codesystem"
* $HL7AdjudicationCS#submitted 
* $HL7AdjudicationCS#copay 
* $HL7AdjudicationCS#eligible
* $HL7AdjudicationCS#deductible  
* $HL7AdjudicationCS#benefit 
* PayerAdjudicationCategoryCS#coinsurance "Coinsurance" 
* PayerAdjudicationCategoryCS#copay "Copay" 
* PayerAdjudicationCategoryCS#noncovered "Noncovered" 
* PayerAdjudicationCategoryCS#priorpayerpaid "Prior payer paid" 
* PayerAdjudicationCategoryCS#payment   "Payment" 
* PayerAdjudicationCategoryCS#paidbypatient "Paid by patient" 
* PayerAdjudicationCategoryCS#paidtopatient "Paid to patient"
* PayerAdjudicationCategoryCS#paidtoprovider "Paid to provider" 
* PayerAdjudicationCategoryCS#memberliability "Member liability" 
* PayerAdjudicationCategoryCS#discount "Discount" 
* PayerAdjudicationCategoryCS#drugcost "Drug cost" 


CodeSystem: PayerAdjudicationCategoryCS
Title: "Payer Adjudication Category"
Description: "Payer Adjudication Category"
* #in-network "In-network" "in-network"
* #out-of-network "Out-of-network" "out-of-network"
* #other "Other" "other"
* #contracted "Contracted" "contracted"
* #non-contracted "Non-contracted" "non-contracted"
* #subscriber "Subscriber" "subscriber"
* #provider "Provider" "provider"
* #paid "Paid" "paid"
* #denied "Denied"  "denied"
* #submitted "Submitted" "The total submitted amount for the claim or group or line item."
* #allowed "Allowed" "Allowed"
* #deductible "Deductible" "Amount deducted from the eligible amount prior to adjudication."
* #coinsurance "coinsurance" "The amount the insured individual pays, as a set percentage of the cost of covered medical services, as an out-of-pocket payment to the provider. Example: Insured pays 20% and the insurer pays 80%."
* #copay "copay" "Patient Co-Payment"
* #noncovered "Noncovered" "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
* #priorpayerpaid "Prior payer paid" "The reduction in the payment amount to reflect the carrier as a secondary payor."
* #payment "Payment" "payment"
* #paidbypatient "Paid by patient" "The amount paid by the patient at the point of service."
* #paidtopatient "Paid to patient" "paid to patient"
* #paidtoprovider "Paid to provider" "The amount paid to the provider."
* #memberliability "Member liability" "The amount of the member's liability."
* #discount "Discount" "The amount of the discount"
* #drugcost "Drug cost" "Price paid for the drug excluding mfr or other discounts.  It typically is the sum of the following components: ingredient cost, dispensing fee, sales tax, and vaccine administration"

ValueSet: ProviderNetworkStatusVS
Title: "Provider Network Status"
Description: "Indicates that the Provider has a contract with the Plan (regardless of the network) as of the effective date of service or admission."
* PayerAdjudicationCategoryCS#contracted "contracted"
* PayerAdjudicationCategoryCS#non-contracted "non-contracted"

ValueSet: BenefitPaymentStatusVS
Title: "Benefit Payment Status"
Description: "Indicates the in network or out of network payment status of the claim."
* PayerAdjudicationCategoryCS#in-network "in-network"
* PayerAdjudicationCategoryCS#out-of-network "out-of-network"
* PayerAdjudicationCategoryCS#other "other"

ValueSet: ClaimPayeeTypeCodeVS
Title: "Claim Payee Type Code"
Description: "Identifies recipient of benefits payable; i.e., provider or subscriber."
* PayerAdjudicationCategoryCS#provider "provider"
* PayerAdjudicationCategoryCS#subscriber "subscriber"
* PayerAdjudicationCategoryCS#other "other"

ValueSet: ClaimPaymentStatusCodeVS
Title: "Claim Payment Status Code"
Description: "Indicates whether the claim / item was paid or denied."
* PayerAdjudicationCategoryCS#paid "paid"
* PayerAdjudicationCategoryCS#denied "denied"

ValueSet: PayerAdjudicationAmountCategoryVS
Title: "Payer Adjudication Amount Category"
Description: "This describes the various amount fields used when payers receive and adjudicate a claim."
* PayerAdjudicationCategoryCS#submitted "Submitted" 
* PayerAdjudicationCategoryCS#allowed "Allowed" 
* PayerAdjudicationCategoryCS#deductible "Deductible" 
* PayerAdjudicationCategoryCS#coins "coins" 
* PayerAdjudicationCategoryCS#copay "copay"
* PayerAdjudicationCategoryCS#noncovered "noncovered" 
* PayerAdjudicationCategoryCS#priorpayerpaid "priorpayerpaid" 
* PayerAdjudicationCategoryCS#payment "payment" 
* PayerAdjudicationCategoryCS#paidbypatient "paid by patient"  
* PayerAdjudicationCategoryCS#paidtopatient "paid to patient"  
* PayerAdjudicationCategoryCS#paidtoprovider "paid to provider" 
* PayerAdjudicationCategoryCS#memberliability "member liability" 
* PayerAdjudicationCategoryCS#discount "discount" 
* PayerAdjudicationCategoryCS#drugcost "drug cost"


CodeSystem: PayerDiagnosisTypeCS
Title: "Payer Diagnosis Type"
Description: "Payer Diagnosis Type"
* #principal "principal" "principal"
* #secondary  "secondary"  "secondary"
* #external-cause-of-injury "external-cause-of-injury" "external-cause-of-injury"
* #patient-reason-for-visit "patient-reason-for-visit" "patient-reason-for-visit"
* #first-listed  "first-listed"  "first-listed"

ValueSet: DiagnosisTypeFacilityVS
Title: "Diagnosis Type -- Facility"
Description: "Indicates if the facility diagnosis is principal, secondary, an external cause of injury, a patient reason for visit, or first-listed"
* codes from system PayerDiagnosisTypeCS 

ValueSet: DiagnosisTypeProfessionalNonClinicianVS
Title: "Diagnosis Type -- Professional and Non-Clinician"
Description: "Indicates if the professional and non-clinician diagnosis is principal, secondary, or first-listed"
* PayerDiagnosisTypeCS#principal "principal"
* PayerDiagnosisTypeCS#secondary "secondary"
* PayerDiagnosisTypeCS#first-listed "first-listed"

ValueSet: PresentOnAdmissionDiagnosisTypeVS
Title: "Present-on-admission Diagnosis Type"
Description: "Indicates if the Present on Admission Code applies to the Primary or secondary diagnosis"
* PayerDiagnosisTypeCS#principal "principal"
* PayerDiagnosisTypeCS#secondary "secondary"

ValueSet: NUBCPresentOnAdmissionVS
Title: "NUBC Present On Admission"

/*
CodeSystem: ClaimTypeCS 
Title: "Claim Types"
Description:  "Proposed replacement/update for http://hl7.org/fhir/ValueSet/claim-type and http://terminology.hl7.org/CodeSystem/claim-type"
* #institutional-inpatient "Institutional - Inpatient" "Claims submitted by clinics, hospitals, skilled nursing facilities, and other institutions for inpatient services, including the use of equipment and supplies, laboratory services, radiology services, and other charges.  Inpatient claims are submitted for admissions for which there is an overnight stay. The claims data is based on submission standards adopted by the Department of Health and Human Services (CMS-1450)."
* #institutional-outpatient "Institutional - Outpatient" "Claims submitted by clinics, hospitals, skilled nursing facilities, and other institutions for outpatient services, including the use of equipment and supplies, laboratory services, radiology services, and other charges.  Outpatient claims are submitted for admissions for which there is not an overnight stay. The claims data is based on submission standards adopted by the Department of Health and Human Services (CMS-1450)."
* #professional-nonclinician "Professional and Non-Clinician" "Claims submitted by physicians, suppliers, and other non-institutional providers for inpatient, outpatient and non-institutional services.  The claims data is based on submission standards adopted by the Department of Health and Human Services (CMS-1500).  Claims with CPT (Current Procedural Terminology) codes represent physician services and claims with Level II HCPCS codes represent non-physician services like ambulance rides, wheelchairs, walkers, other durable medical equipment, and other medical services that are not identified by CPT/HCPCS Level I codes."
* #retail-pharmacy "Retail Pharmacy" "Claims submitted by retail pharmacies.  The claims data is based on submission standards adopted by the Department of Health and Human  Services defined by NCPDP (National Council for Prescription Drug Program)"

ValueSet: ClaimTypeVS
Title: "Claim Types"
Description: "Proposed replacement/update for http://hl7.org/fhir/ValueSet/claim-type"
* codes from system ClaimTypeCS
*/

//ValueSet: RelatedClaimVS
//Title: "Related Claim"

//ValueSet: CareTeamRoleVS
//Title: "Care Team Roles"

//ValueSet: InformationCategoryVS
//Title: "Information Categories"

//ValueSet: DiagnosisTypeVS
//Title: "Diagnosis Type"

//ValueSet: AdjudicationAmountCategoryVS
//Title: "Adjudication Amount Category"

ValueSet: AdjudicationDenialReasonVS
Title: "Adjudication Denial Reason"
Description: "Reason codes used to interpret the adjudication denial reason.  X12 CARC + CMS RARC"

//ValueSet: TypeOfServiceVS 
//Title: "Type Of Service"

//ValueSet: TypeOfFacilityVS 
//Title: "Type of Facility"


ValueSet: MSDRGVS
Title: "MS-DRG"

ValueSet: NUBCPatientDischargeStatusVS
Title: "NUBC Patient Discharge Status"

ValueSet: NUBCPriorityOfAdmissionnVS
Title: "NUBC Priority of Admission"

ValueSet: NUBCPointOfOriginVS
Title: "NUBC Point of Origin of Admission"

ValueSet: NUBCRevenueCodeVS
Title: "NUBC Revenue Code"

ValueSet: NUBCTypeOfBillVS
Title: "NUBC Type of Bill"
Description: "Code System http://www.nubc.org/type-of-bill,"

//ValueSet: TypeOfBillFrequencyVS
//Title: "Type of Bill (Frequency)"

//ValueSet: TypeOfBillClassificationVS
//Title: "Type of Bill (Classification)"

ValueSet: IdentifierTypeVS
Title: "Identifier Type"

ValueSet: NCPDPDispensedAsWrittenVS
Title: "NCPDP Dispensed As Written (DAW)"
Description: "http://www.ncpdp.org/dispensed-as-written-or-product-selection-code"

ValueSet: NCPDPBrandGenericCodeVS
Title: "NCPDP Brand Generic Code"
Description: "http://www.ncpdp.org/brand-generic-code"

ValueSet: NCPDPPrescriptionOriginCodeVS
Title: "NCPDP Prescription Origin Code"
Description: "http://www.ncpdp.org/prescription-origin-code"

ValueSet: NCPDPRejectCodeVS
Title: "NCPDP Reject Code"
Description: "http://www.ncpdp.org/reject-code"

ValueSet: FDANDCNCPDPCompoundCodeVS
Title: "FDA NDC NCPDP Compound Code"
Description: "NCPDP field # 407-D7 (National Drug Code (NDC)) or NCPDP field # 406-D6 (Compound Code)"

ValueSet: FDANationalDrugCodeVS
Title: "FDA National Drug Code (NDC)"
Description: "FDA National Drug Code (NDC)"
* codes from system $FDANationalDrugCodeCS

ValueSet: ICD10CMVS
Title: "ICD-10-CM Diagnosis Codes"
* codes from system $ICD10CM

ValueSet: ICD10PCSVS
Title: "ICD-1-PCS"
* codes from system $ICD10PCS 

ValueSet: CPTHCPCSProcedureCodeVS 
Title: "AMA CPT and CMS HCPCS Procedure Codes"

ValueSet:  CPTHCPCSModifierCodeVS
Title: "AMA CPT and CMS HCPCS Modifier Codes"

CodeSystem: ClaimAdjudicationCategoryCS
Title: "Claim Adjudication Category"
Description: "Values for EOB.item.adjudication.category"
* #benefitPaymentStatusCode	"Benefit payment status code"	"Benefit payment status code"
* #paymentDenialCode	"Payment denial code"	"Payment Denial Code"
* #submittedamount	"submitted amount"	
* #allowedamount	"allowed amount"
* #deductibleamount	"deductible amount"	
* #coinsuranceamount	"coinsurance amount"	
* #copayamount	"copay amount"	
* #noncoveredamount	"noncovered amount"	
* #cobamount	"cob amount"	
* #paymentamount	"payment amount"
* #patientpayamount	"patient pay amount"
* #denialreason	"payment denial reason"
* #innetworkbenefitpaymentstatus	"in network benefit payment status"
* #outofnetworkbenefitpaymentstatus	"out of network benefit payment status"
* #otherbenefitpaymentstatus	"other benefit payment status"	
* #allowedunits	"allowed units"

ValueSet: ClaimAdjudicationCategoryVS
Title: "Claim Adjudication Category"
Description: "Values for EOB.item.adjudication.category"
* codes from system ClaimAdjudicationCategoryCS

ValueSet: AdjustmentAmountCategoryVS
Title: "Adjustment Amount Category"
Description: "Describes the various amount fields used when submitting and adjudicating a claim."
* ClaimAdjudicationCategoryCS#submittedamount	"submitted amount"	
* ClaimAdjudicationCategoryCS#allowedamount	"allowed amount"
* ClaimAdjudicationCategoryCS#deductibleamount	"deductible amount"	
* ClaimAdjudicationCategoryCS#coinsuranceamount	"coinsurance amount"	
* ClaimAdjudicationCategoryCS#copayamount	"copay amount"	
* ClaimAdjudicationCategoryCS#noncoveredamount	"noncovered amount"	
* ClaimAdjudicationCategoryCS#cobamount	"cob amount"	
* ClaimAdjudicationCategoryCS#paymentamount	"payment amount"
* ClaimAdjudicationCategoryCS#patientpayamount	"patient pay amount"

ValueSet: BenefitPaymentStatusCategoryVS
Title: "Benefit Payment Status Category"
* ClaimAdjudicationCategoryCS#innetworkbenefitpaymentstatus	"in network benefit payment status"
* ClaimAdjudicationCategoryCS#outofnetworkbenefitpaymentstatus	"out of network benefit payment status"
* ClaimAdjudicationCategoryCS#otherbenefitpaymentstatus	"other benefit payment status"	

ValueSet: AdjudicationValueCodesVS
Title: "Benefit Payment Status Category"
* ClaimAdjudicationCategoryCS#submittedamount	"submitted amount"	
* ClaimAdjudicationCategoryCS#allowedamount	"allowed amount"
* ClaimAdjudicationCategoryCS#deductibleamount	"deductible amount"	

