
// Code Systems

RuleSet: CodeSystemStubBoilerplate
* ^publisher = "HL7 International - Financial Management Work Group"
* ^contact[0].name = "HL7 International - Financial Management Work Group"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://hl7.org/Special/committees/fm"
* ^contact[0].telecom[1].system = #email 
* ^contact[0].telecom[1].value = "fmlists@lists.hl7.org"
* ^contact[1].name = "Jean Duteau"
* ^contact[1].telecom[0].system = #email
* ^contact[1].telecom[0].value = "mailto:jean@duteaudesign.com"
* ^jurisdiction[0].coding[0].system = "urn:iso:std:iso:3166"
* ^jurisdiction[0].coding[0].code = #US
* ^jurisdiction[0].coding[0].display = "United States of America"
* ^content = #not-present

RuleSet: NCPDPCopyrightNotice
* ^copyright = "NCPDP codes are available by subscription at ncpdp.org. As HL7 is working with the owning authority to finalize the url, this url is subject to change."

CodeSystem: NCPDPRejectCode
Title: "NCPDP Reject Code"
Description: "Contains exception definitions for use when transaction processing cannot be completed. NCPDP field # 511-FB (Reject Code)"
* ^url = "http://ncpdp.org/RejectCode"
* insert CodeSystemStubBoilerplate
* insert NCPDPCopyrightNotice


ValueSet: NCPDPRejectCode
Title: "NCPDP Reject Code"
Description: "The National Council for Prescription Drug Programs, (NCPDP) Reject Code (511-FB) code set contains exception definitions for use when transaction processing cannot be completed."
* codes from system NCPDPRejectCode 
* insert NCPDPCopyrightNotice

CodeSystem: NCPDPDispensedAsWrittenOrProductSelectionCode
Title: "NCPDP Dispensed As Written Or Product Selection Code"
Description: "Prescriber's instruction regarding substitution of generic equivalents or order to dispense the specific prescribed medication. NCPDP field # 408-D8."
* ^url = "http://www.ncpdp.org/DispensedAsWrittenOrProductSelectionCode"
* insert CodeSystemStubBoilerplate
* insert NCPDPCopyrightNotice

ValueSet: NCPDPDispensedAsWrittenOrProductSelectionCode
Title: "NCPDP Dispensed As Written Or Product Selection Code"
Description: "Prescriber's instruction regarding substitution of generic equivalents or order to dispense the specific prescribed medication. NCPDP field # 408-D8."
* codes from system NCPDPDispensedAsWrittenOrProductSelectionCode
* insert NCPDPCopyrightNotice

CodeSystem: NCPDPBrandGenericCode
Title: "NCPDP Brand Generic Code"
Description: "Indicates whether the plan adjudicated the claim as a brand or generic drug. NCPDP field # 686."
* ^url = "http://www.ncpdp.org/BrandGenericCode"
* insert CodeSystemStubBoilerplate
* insert NCPDPCopyrightNotice

ValueSet: NCPDPBrandGenericCode
Title: "NCPDP Brand Generic Code"
Description: "Indicates whether the plan adjudicated the claim as a brand or generic drug. NCPDP field # 686."
* codes from system NCPDPBrandGenericCode 
* insert NCPDPCopyrightNotice

CodeSystem: NCPDPPrescriptionOriginCode
Title: "NCPDP Prescription Origin Code"
Description: "Indicates whether the prescription was transmitted as an electronic prescription, by phone, by fax, or as a written paper copy. NCPDP field # 419-DJ."
* ^url = "http://www.ncpdp.org/PrescriptionOriginCode"
* insert CodeSystemStubBoilerplate
* insert NCPDPCopyrightNotice

ValueSet: NCPDPPrescriptionOriginCode
Title: "NCPDP Prescription Origin Code"
Description: "Indicates whether the prescription was transmitted as an electronic prescription, by phone, by fax, or as a written paper copy. NCPDP field # 419-DJ."
* codes from system NCPDPPrescriptionOriginCode
* insert NCPDPCopyrightNotice

CodeSystem: NCPDPCompoundCode
Title: "NCPDP Compound Code"
Description: "Indicates whether or not the prescription is a compound NCPDP field # 406-D6."
* ^url = "http://www.ncpdp.org/CompoundCode"
* insert CodeSystemStubBoilerplate
* insert NCPDPCopyrightNotice

ValueSet: NCPDPCompoundCode
Title: "NCPDP Compound Code"
Description: "Indicates whether or not the prescription is a compound NCPDP field # 406-D6."
* codes from system NCPDPCompoundCode
* insert NCPDPCopyrightNotice

// *** deleted defining this code system as http://hl7.org/fhir/sid/ndc is defined by HL7
//CodeSystem: FDANationalDrugCode
//Title: "FDA National Drug Code (NDC)"
//Description: "National Drug Code (NDC).  The US Federal Drug Administration (FDA) Data Standards Council assigns the first 5 digits of the 11 digit code.  NCPDP field # 407-D7. "
//* ^url = $FDANationalDrugCode
//* insert CodeSystemStubBoilerplate
//* ^copyright = "NDC codes are available for use.  As HL7 is working with the owning authority to finalize the url, this url is subject to change"

ValueSet: FDANationalDrugCode
Title: "FDA National Drug Code (NDC)"
Description: "National Drug Code (NDC).  The US Federal Drug Administration (FDA) Data Standards Council assigns the first 5 digits of the 11 digit code.  NCPDP field # 407-D7.  "
* codes from system $FDANationalDrugCode
* ^copyright = "NDC codes are available for use.  As HL7 is working with the owning authority to finalize the url, this url is subject to change."

ValueSet: FDANDCOrCompound
Title: "FDA NDC or Compound"
Description: "National Drug Code (NDC).  The US Federal Drug Administration (FDA) Data Standards Council assigns the first 5 digits of the 11 digit code.  NCPDP field # 407-D7.  
Values will be the NDC Codes when the Compound Code value is 0 or 1.  When the Compound Code value = 2, the value will be the literal, ‘compound’"
* codes from system $FDANationalDrugCode
* include C4BBCompoundLiteral#compound 


RuleSet: AHANUBCCopyrightNotice
* ^copyright = "The Official UB-04 Data Specifications Manual, copyrighted by the American Hospital Association, is the only official source of UB-04 billing information adopted by the National Uniform Billing Committee. 
No other publication—governmental or private/commercial—can be considered authoritative. See their website for licensing terms and conditions.\nAs HL7 is working with the owning authority to finalize the url, this url is subject to change."

CodeSystem: AHANUBCPatientDischargeStatus
Title: "AHA NUBC Discharge Status"
Description: "UB-04 Patient Discharge Status (FL-17)"
* ^url = "http://www.nubc.org/PatientDischargeStatus"
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

ValueSet: AHANUBCPatientDischargeStatus
Title: "AHA NUBC Patient Discharge Status"
Description: "UB-04 Patient Discharge Status (FL-17)"
* codes from system AHANUBCPatientDischargeStatus
* insert AHANUBCCopyrightNotice

CodeSystem: AHANUBCPresentOnAdmission
Title: "AHA NUBC PresentOn Admission"
Description: "UB-04 Present on Admission (FL-67)."
* ^url = "http://www.nubc.org/PresentOnAdmission"
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

ValueSet: AHANUBCPresentOnAdmission
Title: "AHA NUBC Present On Admission"
Description: "UB-04 Present on Admission (FL-67)"
* codes from system AHANUBCPresentOnAdmission
* insert AHANUBCCopyrightNotice

CodeSystem: AHANUBCRevenueCodes
Title: "AHA NUBC Revenue Codes"
Description: "NUBC Revenue codes are used to convey specific accomodation, ancillary service or unique billing calculations or arrangements. They are listed within the UB-04 Data Specifications Manual and maintained by the National Uniform Billing Committee (NUBC) UB-04 Revenue Code (FL-42)"
* ^url = "http://www.nubc.org/RevenueCodes"
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

ValueSet: AHANUBCRevenueCodes
Title: "AHA NUBC Revenue Codes"
Description: "NUBC Revenue codes are used to convey specific accomodation, ancillary service or unique billing calculations or arrangements. They are listed within the UB-04 Data Specifications Manual and maintained by the National Uniform Billing Committee (NUBC) UB-04 Revenue Code (FL-42)"
//* codes from system NUBCRevenueCode
* codes from system AHANUBCRevenueCodes
* insert AHANUBCCopyrightNotice

CodeSystem: AHANUBCTypeOfBill
Title: "AHA NUBC Type of Bill"
Description: "UB-04 Type of Bill (FL-4)"
* ^url = "http://www.nubc.org/TypeOfBill"
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

ValueSet: AHANUBCTypeOfBill
Title: "AHA NUBC Type of Bill"
Description: "UB-04 Type of Bill (FL-4)"
* codes from system AHANUBCTypeOfBill
* insert AHANUBCCopyrightNotice

CodeSystem: AHANUBCPointOfOriginForAdmissionOrVisit
Title: "AHA NUBC Point Of Origin For Admission Or Visit"
Description: "UB-04 Point of Origin for Admission or Visit (FL-15)"
* ^url = "http://www.nubc.org/PointOfOriginForAdmissionOrVisit"
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

ValueSet: AHANUBCPointOfOriginForAdmissionOrVisit
Title: "AHA NUBC Point of Origin for Admission or Visit."
Description: "UB-04 Point of Origin for Admission or Visit (FL-15)"
* codes from system AHANUBCPointOfOriginForAdmissionOrVisit
* insert AHANUBCCopyrightNotice

CodeSystem: AHANUBCPriorityTypeOfAdmissionOrVisit
Title: "AHA NUBC Priority Type Of Admission Or Visit"
Description: "UB-04 Priority (Type) of Admission or Visit (FL-14)."
* ^url = "http://www.nubc.org/PriorityTypeOfAdmissionOrVisit"
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

ValueSet: AHANUBCPriorityTypeOfAdmissionOrVisit
Title: "AHA NUBC Priority Type Of Admission Or Visit"
Description: "AHA NUBC Priority Type Of Admission Or Visit"
* codes from system AHANUBCPriorityTypeOfAdmissionOrVisit
* insert AHANUBCCopyrightNotice


//********start: replaced AMA / HCPCS************

RuleSet: AMACopyrightNotice
* ^copyright = "Copyright 2014 American Medical Association (AMA). All rights reserved.  As HL7 is working with the owning authority to finalize the url, this url is subject to change."

CodeSystem: AMACPTCodes
Title: "AMA CPT Codes"
Description: "CPT procedure and modifier codes are submitted to payers to convey the specific procedure performed.  CPT codes are available by subscription from the AMA at http://www.ama-assn.org/go/cpt."
* ^url = $CPT
* insert CodeSystemStubBoilerplate
* insert AMACopyrightNotice

ValueSet: AMACPTCMSHCPCSProcedureCodes
Title: "AMA CPT CMS HCPCS Procedure Codes"
Description: "The Value Set is a combination of two Code Systems:  CPT (HCPCS I) and HCPCS II procedure codes. They are submitted by providers to payers to convey the specific procedure performed.  AMA CPT CMS HCPCS Procedure Codes leverage US Core Procedure Codes composition.  
CPT codes are available by subscription from the AMA at http://www.ama-assn.org/go/cpt.  HCPCS codes are available at http://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets.  The link takes one to a list of files.  The target set for this Code System is the procedure codes from this file.\n\n**PROCEDURE CODES ONLY**"
* codes from system AMACPTCodes
* codes from system CMSHCPCSCodes
* ^copyright = "CPT copyright 2014 American Medical Association. All rights reserved. HCPCS Level II Alphanumeric Codes are maintained by the US Centers for Medicare and Medicaid Services (CMS) and are available for public use. As HL7 is working with the owning authorities to finalize the urls, the urls are subject to change."

ValueSet:  AMACPTCMSHCPCSModifiers
Title: "AMA CPT CMS HCPCS Modifiers" 
Description: "The Value Set is a combination of two Code Systems:  CPT (HCPCS I) and HCPCS II procedure code modifiers.  Modifiers help further describe a procedure code without changing its definition.  
CPT codes are available by subscription from the AMA at http://www.ama-assn.org/go/cpt.  HCPCS codes are available at http://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets.  The link takes one to a list of files.  The target set for this Code System is the procedure code modifiers from this file.  \n\n**MODIFIER CODES ONLY**"
* codes from system AMACPTCodes 
* codes from system CMSHCPCSCodes
* ^copyright = "CPT copyright 2014 American Medical Association. All rights reserved. HCPCS Level II Alphanumeric Codes are maintained by the US Centers for Medicare and Medicaid Services (CMS) and are available for public use. As HL7 is working with the owning authorities to finalize the urls, the urls are subject to change."

CodeSystem: CMSHCPCSCodes
Title: "CMS HCPCS Codes"
Description: "HCPCS procedure codes and modifiers are submitted by providers to payers to convey the specific procedure performed.
HCPCS codes are available at http://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets."
* ^url =  $HCPCS
* insert CodeSystemStubBoilerplate
* ^copyright = "HCPCS Level II Alphanumeric Codes are maintained by the US Centers for Medicare and Medicaid Services (CMS) and are available for public use. As HL7 is working with the owning authority to finalize the url, this url is subject to change."

//********end: replaced AMA / HCPCS************

// ******** @Saul - added AP DRGs updated url ***************
CodeSystem: CMSMSDRG
Title: "CMS MS DRG"
Description: "MS-DRGs (Medicare Severity Diagnosis Related Groups).  MS-DRGs are owned by CMS.  Assignment of a DRG is defined by a particular set of patient attributes, which include principal diagnosis, specific secondary diagnoses, procedures, sex and discharge status.  Identifying a DRG code requires a version."
* ^url = "http://www.cms.gov/Medicare/Coding/ms-drg/MS-DRG"
* insert CodeSystemStubBoilerplate
* ^copyright = "The Centers for Medicare & Medicaid Services (CMS) maintain the MS-DRGs used throughout the US health care industry."


CodeSystem: THREEMAPDRG
Title: "3M AP DRG"
Description: "AP-DRGs (All Patient Diagnosis Related Groups).  AP-DRGs are owned by 3M.  Assignment of a DRG is defined by a particular set of patient attributes, which include principal diagnosis, specific secondary diagnoses, procedures, sex and discharge status.  Identifying a DRG code requires a version.  "
* ^url = "http://www.3M.com/AP-DRG"
* insert CodeSystemStubBoilerplate
* ^copyright = "Use of AP-DRGs require a license.  Reference https://www.3m.com/3M/en_US/health-information-systems-us/drive-value-based-care/patient-classification-methodologies/apr-drgs/.   As HL7 is working with the owning authorities to finalize the urls, the urls are subject to change."

CodeSystem: THREEMAPRDRG
Title: "3M APR DRG"
Description: "APR-DRGs (All Patient Refined Diagnosis Related Groups).  APR-DRGs are owned by 3M.  Assignment of a DRG is defined by a particular set of patient attributes, which include principal diagnosis, specific secondary diagnoses, procedures, sex and discharge status.  Identifying a DRG code requires a version.  "
* ^url = "http://www.3M.com/APR-DRG"
* insert CodeSystemStubBoilerplate
* ^copyright = "Use of APR-DRGs require a license.  Reference https://www.3m.com/3M/en_US/health-information-systems-us/drive-value-based-care/patient-classification-methodologies/apr-drgs/.   As HL7 is working with the owning authorities to finalize the urls, the urls are subject to change."

// ******** @Saul - updated value set name AP DRGs ***************
ValueSet: CMSMS3MAPAPRDRG 
Title: "CMS MS 3M AP APR DRG"
Description: "This value set defines three sets of DRGs, MS-DRGs (Medicare Severity Diagnosis Related Groups) AP-DRGs (All Patient Diagnosis Related Groups) and APR-DRGs (All Patient Refined Diagnosis Related Groups).  MS-DRGs are owned by CMS; AP-DRGs and APR-DRGs are owned by 3M.  Assignment of a DRG is defined by a particular set of patient attributes, which include principal diagnosis, specific secondary diagnoses, procedures, sex and discharge status.  Identifying a DRG code requires a version."
* codes from system CMSMSDRG
* codes from system THREEMAPDRG
* codes from system THREEMAPRDRG
* ^copyright = "The Centers for Medicare & Medicaid Services (CMS) maintain the MS-DRGs used throughout the US health care industry.  Use of APR-DRGs require a license.  Reference https://www.3m.com/3M/en_US/health-information-systems-us/drive-value-based-care/patient-classification-methodologies/apr-drgs/.   As HL7 is working with the owning authorities to finalize the urls, the urls are subject to change."

CodeSystem: CMSPlaceofServiceCodes
Title: "CMS Place of Service Codes (POS)"
Description: "Place of Service Codes are two-digit codes placed on health care professional claims to indicate the setting in which a service was provided."
* ^url = $CMSPlaceofServiceCodes
* insert CodeSystemStubBoilerplate
* ^copyright = "The Centers for Medicare & Medicaid Services (CMS) maintain Place Of Service (POS) codes used throughout the US health care industry."

ValueSet: CMSPlaceofServiceCodes
Title: "CMS Place of Service Codes (POS)"
Description: "Place of Service Codes are two-digit codes placed on health care professional claims to indicate the setting in which a service was provided."
* codes from system CMSPlaceofServiceCodes 
* ^copyright = "The Centers for Medicare & Medicaid Services (CMS) maintain Place Of Service (POS) codes used throughout the US health care industry."

CodeSystem: CMSRemittanceAdviceRemarkCodes
Title: "CMS- Remittance Advice Remark Codes (RARC)"
Description: "RARC codes provide additional explanation for an adjustment already described by a Claim Adjustment Reason Code (CARC) or convey information about remittance processing.  
RARC codes are available at http://www.wpc-edi.com/reference/codelists/healthcare/remittance-advice-remark-codes."  
* ^url = $CMSRARCCS 
* insert CodeSystemStubBoilerplate
* ^copyright = "The Centers for Medicare & Medicaid Services (CMS) maintain Remittance Advice Remark Codes (RARC) used throughout the US health care industry."

CodeSystem: X12ClaimAdjustmentReasonCodes
Title: "X12 Claim Adjustment Reason Codes (CARC)"
Description: "CARC codes describe why a claim or service line was paid differently than it was billed.   Use of X12 CARC codes require a license.  Reference https://x12.org/codes/."
* ^url = $X12CARCCS
* insert CodeSystemStubBoilerplate
* ^copyright = "CARC codes are owned, maintained and distributed by X12."

ValueSet: X12ClaimAdjustmentReasonCodesCMSRemittanceAdviceRemarkCodes
Title: "X12 Claim Adjustment Reason Codes (CARC) - CMS- Remittance Advice Remark Codes (RARC)"
Description: "The Value Set is a combination of two sets of codes:  X12 Claim Adjustment Reason Codes (CARC) and CMS Remittance Advice Remark Codes (RARC).  CARC codes describe why a claim or service line was paid differently than it was billed.  RARC codes provide additional explanation for an adjustment already described by a Claim Adjustment Reason Code (CARC) or convey information about remittance processing.  
Use of X12 CARC codes require a license.  Reference https://x12.org/codes/.  RARC codes are available at http://www.wpc-edi.com/reference/codelists/healthcare/remittance-advice-remark-codes."
* codes from system X12ClaimAdjustmentReasonCodes 
* codes from system CMSRemittanceAdviceRemarkCodes 
* ^copyright = "CARC codes are owned, maintained and distributed by X12.  The Centers for Medicare & Medicaid Services (CMS) maintain Remittance Advice Remark Codes (RARC) used throughout the US health care industry."

ValueSet: CDCICD910CMDiagnosisCodes 
Title: "CDC ICD-9-10-CM Diagnosis Codes"
Description: "The ICD-CM (International Classification of Diseases, Clinical Modification) is a system used by physicians and other healthcare providers to classify and code all diagnoses and symptoms recorded in conjunction with hospital care in the United States."
* codes from system $ICD10CM
* codes from system $ICD9CM
* ^copyright = "ICD-9 and ICD-10 are copyrighted by the World Health Organization (WHO) which owns and publishes the classification. See https://www.who.int/classifications/icd/en. WHO has authorized the development of an adaptation of ICD-9 and ICD-10 to ICD-9-CM to ICD-10-CM for use in the United States for U.S. government purposes.  As HL7 is working with the owning authority to finalize the urls, the urls are subject to change."

// CodeSystem: ICD9PCS
// Title: "ICD-9 Procedure Codes"
// Description: "ICD Procedure Coding System (ICD 9 PCS)"
// * ^url = $ICD9PCS
// * insert CodeSystemStubBoilerplate
// * ^copyright = "The Centers for Medicare & Medicaid Services (CMS) maintain ICD PCS Procedure Codes used throughout the US health care industry.  As HL7 is working with the owning authority to finalize the urls, the urls are subject to change."

ValueSet: CMSICD910PCSProcedureCodes 
Title: "CMS ICD-9-10-PCS Procedure Codes"
Description: "This value set defines a set of codes from ICD-PCS that can be used to indicate the procedure performed"
* codes from system $ICD10PCS
* codes from system $ICD9PCS
* ^copyright = "The Centers for Medicare & Medicaid Services (CMS) maintain ICD PCS Procedure Codes used throughout the US health care industry.  As HL7 is working with the owning authority to finalize the urls, the urls are subject to change."



// CodeSystem: ICD10PCSCS
// Title: "ICD-10-PCS"
// Description: "International Classification of Diseases Surgical Procedures (ICD-10)."
// * ^url = $ICD10PCS
// * insert CodeSystemStubBoilerplate
// * ^copyright = "The code set is owned by CMS and is available for use."

// ValueSet: ICD10PCS
// Title: "ICD-10-PCS"
// Description: "ICD-10-PCS"
// * codes from system ICD10PCSCS
// * ^copyright = "The code set is owned by CMS and is available for use."

// CodeSystem: ICD10CMCS
// Title: "ICD-10-CM"
// Description: "International Classification of Diseases, Tenth Revision, Clinical Modification)"
// * ^url = $ICD10CM
// * insert CodeSystemStubBoilerplate
// * ^copyright = "The ICD-10-CM code set is maintained by the National Center for Health Statistics (NCHS) of the Centers for Disease Control and Prevention (CDC) for use in the United States. 
// It is based on ICD-10, which was developed by the World Health Organization (WHO) and is used internationally as a medical classification. 
// The code set is owned by the NCHS-CDC and is available for use.  "


// ValueSet: ICD10CM
// Title: "ICD-10-CM Diagnosis Codes"
// Description: "ICD-10-CM Diagnosis Codes."
// * codes from system ICD10CMCS
// * ^copyright = "The ICD-10-CM code set is maintained by the National Center for Health Statistics (NCHS) of the Centers for Disease Control and Prevention (CDC) for use in the United States. 
// It is based on ICD-10, which was developed by the World Health Organization (WHO) and is used internationally as a medical classification. 
// The code set is owned by the NCHS-CDC and is available for use.  "
