

ValueSet: ClaimInformationCategory
Title: "Claim Information Category"
Description: "Claim Information Category - Used as the discriminator for supportingInfo" 
* codes from system ClaimInformationCategoryCS 


ValueSet: CARINBBInstitutionalClaimCareTeamRoleCodes
Title: "CARINBB Institutional Claim Care Team Roles"
Description: "Indicates the role of the provider providing the care."
* $CareTeamRoleCodeCS#supervisor "Supervising Provider"
* $CareTeamRoleCodeCS#primary "Primary provider." 
* CareTeamRoleCS#attending "Attending Provider"
* CareTeamRoleCS#performing "Performing Provider"
* CareTeamRoleCS#referring "Referring Provider"
* CareTeamRoleCS#site "Site Provider"
* CareTeamRoleCS#prescribing "Prescribing Provider"

ValueSet: CARINBBProfessionalAndNonclinicanClaimCareTeamRoleCodes  
Title: "CARINBB Professional and Non-Clinician CareTeam Roles"
Description: "Indicates the role of the provider providing the care."
* $CareTeamRoleCodeCS#primary "Primary provider." 
* CareTeamRoleCS#performing "Performing Provider"
* CareTeamRoleCS#referring "Referring Provider"

ValueSet: CARINBBPharmacyClaimCareTeamRoleCodes
Title: "CARINBB Pharmacy CareTeam Roles"
Description: "Indicates the role of the provider providing the care."
* CareTeamRoleCS#pcp "Primary Care Provider"
* CareTeamRoleCS#prescribing "Prescribing Provider"
* CareTeamRoleCS#performing "Performing Provider"

ValueSet: AdjudicationCarinBBValueCodes   
Title: "Adjudication CARINBB Value Codes"
Description: "As per Jira FHIR-26992... HL7 Requested to fix HL7 Adjudication codesystem"
* $HL7AdjudicationCS#submitted 
* $HL7AdjudicationCS#copay 
* $HL7AdjudicationCS#eligible
* $HL7AdjudicationCS#deductible  
* $HL7AdjudicationCS#benefit 
* PayerAdjudicationCategoryCS#coinsurance "Coinsurance" 
* PayerAdjudicationCategoryCS#noncovered "Noncovered" 
* PayerAdjudicationCategoryCS#priorpayerpaid "Prior payer paid" 
* PayerAdjudicationCategoryCS#paidbypatient "Paid by patient" 
* PayerAdjudicationCategoryCS#paidtopatient "Paid to patient"
* PayerAdjudicationCategoryCS#paidtoprovider "Paid to provider" 
* PayerAdjudicationCategoryCS#memberliability "Member liability" 
* PayerAdjudicationCategoryCS#discount "Discount" 
* PayerAdjudicationCategoryCS#drugcost "Drug cost" 


ValueSet: PayerAdjudicationAmountCategory
Title: "Payer Adjudication Amount Category"
Description: "This describes the various amount fields used when payers receive and adjudicate a claim."
* ClaimAdjudicationCategoryCS#submittedamount
* ClaimAdjudicationCategoryCS#allowedamount
* ClaimAdjudicationCategoryCS#deductibleamount 
* ClaimAdjudicationCategoryCS#coinsuranceamount 
* ClaimAdjudicationCategoryCS#copayamount
* ClaimAdjudicationCategoryCS#noncoveredamount
* ClaimAdjudicationCategoryCS#cobamount
* ClaimAdjudicationCategoryCS#paymentamount
* ClaimAdjudicationCategoryCS#patientpayamount


ValueSet: PayerProviderContractingStatus
Title: "Provider Provider Contracting Status"
Description: "Indicates that the Provider has a contract with the Plan (regardless of the network) as of the effective date of service or admission."
* PayerAdjudicationCategoryCS#contracted "contracted"
* PayerAdjudicationCategoryCS#non-contracted "non-contracted"

ValueSet: BenefitPaymentStatus
Title: "Benefit Payment Status"
Description: "Indicates the in network or out of network payment status of the claim."
* PayerAdjudicationCategoryCS#innetwork "in-network"
* PayerAdjudicationCategoryCS#outofnetwork "out-of-network"
* PayerAdjudicationCategoryCS#other "other"

ValueSet: ClaimPaymentStatusCode
Title: "Claim Payment Status Code"
Description: "Indicates whether the claim / item was paid or denied."
* PayerAdjudicationCategoryCS#paid "paid"
* PayerAdjudicationCategoryCS#denied "denied"

ValueSet: PayerProfessionalandnoncliniciandiagnosistype
Title: "Diagnosis Type -- Professional and Non-Clinician"
Description: "Payer Professional and Non-Clinician Diagnosis Type"
* PayerDiagnosisTypeCS#principal "principal"
* PayerDiagnosisTypeCS#secondary "secondary"
* PayerDiagnosisTypeCS#first-listed "first-listed"


ValueSet: PayerInpatientinstitutionaldiagnosistype
Title: "Diagnosis Type -- Inpatient Facility"
Description: "Payer Inpatient Facility Diagnosis Type"
* PayerDiagnosisTypeCS#principal 
* PayerDiagnosisTypeCS#secondary  
* PayerDiagnosisTypeCS#external-cause-of-injury 
* PayerDiagnosisTypeCS#first-listed  
* PayerDiagnosisTypeCS#admitting 

ValueSet: PayerOutpatientinstitutionaldiagnosistype
Title: "Diagnosis Type -- Outpatient Facility"
Description: "Payer Outpatient Facility Diagnosis Type"
* codes from system PayerDiagnosisTypeCS

ValueSet: PayerDiagnosisPresentOnAdmissionDiagnosisType    // https://jira.hl7.org/browse/FHIR-27012
Title: "Payer Diagnosis Present On Admission Diagnosis Type"
Description: "Payer Diagnosis Present On Admission Diagnosis Type"
* PayerDiagnosisTypeCS#principal 
* PayerDiagnosisTypeCS#secondary  
* PayerDiagnosisTypeCS#external-cause-of-injury 

ValueSet: X12CARCCMSRARC
Title: "Denial Reasons - Reason codes used to interpret the adjudication denial reason. The Value Set is a combination of two Code Systems: X12 Claim Adjustment Reason Codes (CARC) and CMS Remittance Advice Remark Codes (RARC)"
Description: "Reason codes used to interpret the adjudication denial reason.  RARC codes are available at http://www.wpc-edi.com/reference/codelists/healthcare/remittance-advice-remark-codes."
* codes from system http://www.x12.org/codes/claim-adjustment-reason-codes
* codes from system http://www.wpc-edi.com/remittance-advice-remark
* ^copyright = "CARC codes are owned, maintained and distributed by X12. Use of X12 codes require licenses. RARC codes are owned by CMS and are available for use."

ValueSet: CMSDRG 
Title: "CMS-DRG"
Description: "Diagnosis Related Group - any of the payment categories that are used to classify patients and especially Medicare patients for the purpose of reimbursing hospitals for each case in a 
given category with a fixed fee regardless of the actual costs incurred (Other DRGs, such as AP-DRGs, requires defining their specific Value Sets and Code Systems.) 
https://www.cms.gov/Medicare/Medicare-Fee-for-Service-Payment/AcuteInpatientPPS/MS-DRG-Classifications-and-Software.html This link takes one to a list of files. The code set is owned by CMS and is available for use."
* codes from system $CMSDRGCS
* ^copyright = "The code set is owned by CMS and is available for use."

ValueSet: AHANUBCPresentOnAdmission
Title: "AHA NUBC Present On Admission"
Description: "UB-04 Present on Admission (FL-67)"
* codes from system $AHANUBCPresentOnAdmissionOID
* ^copyright = "The Official UB-04 Data Specifications Manual, copyrighted by the American Hospital Association, is the only official source of UB-04 billing information adopted by the National Uniform Billing Committee. 
No other publication—governmental or private/commercial—can be considered authoritative. See their website for licensing terms and conditions. As HL7 is working with the owning authority to finalize the url, this url is subject to change."

ValueSet: AHANUBCPatientDischargeStatus
Title: "AHA NUBC Patient Discharge Status"
Description: "UB-04 Patient Discharge Status (FL-17)"
* codes from system $AHANUBCPatientDischargeStatusOID
* ^copyright = "The Official UB-04 Data Specifications Manual, copyrighted by the American Hospital Association, is the only official source of UB-04 billing information adopted by the National Uniform Billing Committee. 
No other publication—governmental or private/commercial—can be considered authoritative. See their website for licensing terms and conditions. As HL7 is working with the owning authority to finalize the url, this url is subject to change."

ValueSet: AHANUBCPriorityTypeOfAdmissionOrVisit
Title: "AHA NUBC Priority Type Of Admission Or Visit"
Description: "AHA NUBC Priority Type Of Admission Or Visit"
* codes from system $AHANUBCPriorityOfAdmissionOrVisitCS
* ^copyright = "The Official UB-04 Data Specifications Manual, copyrighted by the American Hospital Association, is the only official source of UB-04 billing information adopted by the National Uniform Billing Committee. 
No other publication—governmental or private/commercial—can be considered authoritative. See their website for licensing terms and conditions. As HL7 is working with the owning authority to finalize the url, this url is subject to change."

ValueSet: AHANUBCRevenueCodes
Title: "UB-04 Revenue Code (FL-42)."
Description: "NUBC Revenue codes are used to convey specific accomodation, ancillary service or unique billing calculations or arrangements. They are listed within the UB-04 Data Specifications Manual and maintained by the National Uniform Billing Committee (NUBC)"
//* codes from system NUBCRevenueCodeCS
* codes from system $AHANUBCRevenueCodeOID
* ^copyright = "The Official UB-04 Data Specifications Manual, copyrighted by the American Hospital Association, is the only official source of UB-04 billing information adopted by the National Uniform Billing Committee. 
No other publication—governmental or private/commercial—can be considered authoritative. See their website for licensing terms and conditions. As HL7 is working with the owning authority to finalize the url, this url is subject to change."

ValueSet: AHANUBCTypeOfBill
Title: "UB-04 Type of Bill (FL-4)"
Description: "NUBC Type of Bill codes. They are listed within the UB-04 Data Specifications Manual and maintained by the National Uniform Billing Committee (NUBC)."
* codes from system $AHANUBCTypeOfBillOID
* ^copyright = "The Official UB-04 Data Specifications Manual, copyrighted by the American Hospital Association, is the only official source of UB-04 billing information adopted by the National Uniform Billing Committee. 
No other publication—governmental or private/commercial—can be considered authoritative. See their website for licensing terms and conditions. As HL7 is working with the owning authority to finalize the url, this url is subject to change."

ValueSet: AHANUBCPointOfOriginForAdmissionOrVisit
Title: "UB-04 Point of Origin for Admission or Visit (FL-15)"
Description: "NUBC Point of Origin for Admission or Visit. They are listed within the UB-04 Data Specifications Manual and maintained by the National Uniform Billing Committee (NUBC)."
* codes from system $AHANUBCPointOfOriginForAdmissionOrVisitOID
* ^copyright = "The Official UB-04 Data Specifications Manual, copyrighted by the American Hospital Association, is the only official source of UB-04 billing information adopted by the National Uniform Billing Committee. 
No other publication—governmental or private/commercial—can be considered authoritative. See their website for licensing terms and conditions. As HL7 is working with the owning authority to finalize the url, this url is subject to change."


ValueSet: PatientIdentifierType
Title: "Patient Identifier Type"
Description: "Patient Identifier Type"
* IdentifierTypeCS#um
* IdentifierTypeCS#mb
* $IdentifierTypeCS#MR
* IdentifierTypeCS#pt

//alueSet: OrganizationIdentifierType
//Title: "Organization Identifier Type"
//Description: "Organization  Identifier Type"
//* codes from system $OrganizationIdentifierTypeCS

ValueSet: NCPDPDispensedAsWritten
Title: "NCPDP Dispensed As Written (DAW)"
Description: "NCPDP field # 408-D8 (Dispensed As Written (DAW)/Product Selection Code) Prescriber's instruction regarding substitution of generic equivalents or order to dispense the specific prescribed medication. "
* codes from system NCPDPDispensedAsWrittenCS

ValueSet: NCPDPBrandGenericCode
Title: "NCPDP Brand Generic Code"
Description: "National Council for Prescription Drug Programs, (NCPDP) field # 686, BrandGenericCode."
* codes from system NCPDPBrandGenericCodeCS 

ValueSet: NCPDPPrescriptionOriginCode
Title: "NCPDP Prescription Origin Code"
Description: "National Council for Prescription Drug Programs, (NCPDP)  field # 419-DJ (Prescription Origin Code)."
* codes from system NCPDPPrescriptionOriginCodeCS

ValueSet: NCPDPRejectCode
Title: "NCPDP Reject Code"
Description: "NCPDP field # 511-FB (Reject Code) Code indicating the error encountered."
* codes from system NCPDPRejectCodeCS 

ValueSet: FDANDCNCPDPCompoundCode
Title: "FDA NDC NCPDP Compound Code. Indicates whether or not the prescription is a compound."
Description: "NCPDP field # 407-D7 (National Drug Code (NDC)) or NCPDP field # 406-D6 (Compound Code)"
* codes from system $FDANationalDrugCodeCS
* codes from system NCPDPCompoundCodeCS

ValueSet: FDANationalDrugCode
Title: "FDA National Drug Code (NDC)"
Description: "FDA National Drug Code (NDC)"
* codes from system $FDANationalDrugCodeCS

ValueSet: ICD10CM
Title: "ICD-10-CM Diagnosis Codes"
Description: "ICD-10-CM Diagnosis Codes."
* codes from system $ICD10CM

ValueSet: ICD10PCS
Title: "ICD-10-PCS"
Description: "ICD-10-PCS"
* codes from system $ICD10PCS 

ValueSet: AMACPTCMSHCPCSProcedureCodes
Title: "AMA CPT and CMS HCPCS Procedure Codes"
Description: "AMA CPT and CMS HCPCS Procedure Codes. The Value Set is a combination of two Code Systems: CPT (HCPCS I) and HCPCS II procedure codes. They are submitted by providers to payers to convey the specific procedure performed.
AMA CPT CMS HCPCS Procedure Codes leverage US Core Procedure Codes composition.CPT codes are available by subscription from the AMA at http://www.ama-assn.org/go/cpt.  HCPCS codes are available at https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets/Alpha-Numeric-HCPCS.html. 
The link takes one to a list of files. The HCPCS ANWEB files include modifier and procedure codes. The target set for this Code System is the procedure codes from this file. The code set is owned by CMS and is available for use."
* codes from valueset $CPTALLVS
* codes from system $HCPCSProcedureCodesCS
* ^copyright = "CPT copyright 2014 American Medical Association. All rights reserved."

ValueSet:  AMACPTCMSHCPCSProcedureModifiers
Description: "AMA CPT and CMS HCPCS Modifier Codes. The Value Set is a combination of two Code Systems: CPT (HCPCS I) and HCPCS II procedure code modifiers. Modifiers help further describe a procedure code without changing its definition. 
CPT modifiers are available by subscription from the AMA at http://www.ama-assn.org/go/cpt. HCPCS modifiers are available at https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets/Alpha-Numeric-HCPCS.html. The link takes one to a list of files. The HCPCS ANWEB files include modifier and procedure codes. 
The target set for this Code System is the procedure code modifiers from this file. The code set is owned by CMS and is available for use."
Title: "AMA CPT and CMS HCPCS Modifier Codes"
* codes from system $AMACPTMODIFIERS 
* codes from system $HCPCSMODIFIERS 
* ^copyright = "CPT copyright 2014 American Medical Association. All rights reserved."

ValueSet: ClaimAdjudicationCategory
Title: "Claim Adjudication Category"
Description: "Values for EOB.item.adjudication.category"
* codes from valueset AdjudicationCarinBBValueCodes
* codes from valueset BenefitPaymentStatus
* ClaimAdjudicationCategoryCS#denialreason 
* ClaimAdjudicationCategoryCS#allowedunits 

ValueSet: AdjudicationValueCodes
Title: "Benefit Payment Status Category"
Description: "Benefit Payment Status Category"
* ClaimAdjudicationCategoryCS#submittedamount	"submitted amount"	
* ClaimAdjudicationCategoryCS#allowedamount	"allowed amount"
* ClaimAdjudicationCategoryCS#deductibleamount	"deductible amount"	

ValueSet: CMSPlaceOfService
Title: "CMS Place of Service"
Description: "Place of Service codes are placed on health care professional claims to indicate the setting in which a service was provided. https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set.html. The link takes one to the Place of Service list as an html document; it is not a file to which an IG can be bound."
* codes from system $CMSPlaceOfServiceCS 
* ^copyright = "The code set is owned by CMS and is available for use."

// ValueSet: NUCCHealthcareProviderTaxonomy
// Title: "NUCC Healthcare Provider Taxonomy"
// Description:  "NUCC Healthcare Provider Taxonomy"
// * codes from system $NUCCProviderTaxonomy