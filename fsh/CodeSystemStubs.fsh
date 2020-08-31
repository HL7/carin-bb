
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

// CodeSystem: NCPDPRejectCodeCS
// Title: "NCPDP Reject Code"
// Description: "The National Council for Prescription Drug Programs, (NCPDP) Reject Code (511-FB) code set contains exception definitions for use when transaction processing cannot be completed."
// * ^url = "http://ncpdp.org/reject-code"
// * insert CodeSystemStubBoilerplate
// * insert NCPDPCopyrightNotice

CodeSystem: NCPDPDispensedAsWrittenCS
Title: "NCPDP Dispensed As Written Or Product Selection Code"
Description: "Prescriber's instruction regarding substitution of generic equivalents or order to dispense the specific prescribed medication. NCPDP field # 408-D8."
* ^url = "http://www.ncpdp.org/dispensed-as-written-or-product-selection-code"
* insert CodeSystemStubBoilerplate
* insert NCPDPCopyrightNotice

ValueSet: NCPDPDispensedAsWritten
Title: "NCPDP Dispensed As Written Or Product Selection Code"
Description: "Prescriber's instruction regarding substitution of generic equivalents or order to dispense the specific prescribed medication. NCPDP field # 408-D8."
* codes from system NCPDPDispensedAsWrittenCS
* insert NCPDPCopyrightNotice

CodeSystem: NCPDPBrandGenericCodeCS
Title: "NCPDP Brand Generic Code"
Description: "Indicates whether the plan adjudicated the claim as a brand or generic drug. NCPDP field # 686."
* ^url = "http://www.ncpdp.org/brand-generic-code"
* insert CodeSystemStubBoilerplate
* insert NCPDPCopyrightNotice

ValueSet: NCPDPBrandGenericCode
Title: "NCPDP Brand Generic Code"
Description: "Indicates whether the plan adjudicated the claim as a brand or generic drug. NCPDP field # 686."
* codes from system NCPDPBrandGenericCodeCS 
* insert NCPDPCopyrightNotice

CodeSystem: NCPDPPrescriptionOriginCodeCS
Title: "NCPDP Prescription Origin Code"
Description: "Indicates whether the prescription was transmitted as an electronic prescription, by phone, by fax, or as a written paper copy. NCPDP field # 419-DJ."
* ^url = "http://www.ncpdp.org/prescription-origin-code"
* insert CodeSystemStubBoilerplate
* insert NCPDPCopyrightNotice

ValueSet: NCPDPPrescriptionOriginCode
Title: "NCPDP Prescription Origin Code"
Description: "Indicates whether the prescription was transmitted as an electronic prescription, by phone, by fax, or as a written paper copy. NCPDP field # 419-DJ."
* codes from system NCPDPPrescriptionOriginCodeCS
* insert NCPDPCopyrightNotice

CodeSystem: NCPDPCompoundCodeCS
Title: "NCPDP Compound Code"
Description: "Indicates whether or not the prescription is a compound NCPDP field # 406-D6."
* ^url = "http://www.ncpdp.org/compound-code"
* insert CodeSystemStubBoilerplate
* insert NCPDPCopyrightNotice

ValueSet: NCPDPCompoundCode
Title: "NCPDP Compound Code"
Description: "Indicates whether or not the prescription is a compound NCPDP field # 406-D6."
* codes from system NCPDPCompoundCodeCS
* insert NCPDPCopyrightNotice

CodeSystem: FDANationalDrugCodeCS
Title: "FDA National Drug Code (NDC)"
Description: "NCPDP field # 407-D7 National Drug Code (NDC)"
* ^url = $FDANationalDrugCodeCS
* insert CodeSystemStubBoilerplate
* ^copyright = "The US Federal Drug Administration (FDA) Data Standards Council assigns the first 5 digits of the 11 digit code.  The NDC codes are available for use."


ValueSet: FDANDC
Title: "FDA NDC"
Description: "National Drug Code (NDC).  The US Federal Drug Administration (FDA) Data Standards Council assigns the first 5 digits of the 11 digit code.  NCPDP field # 407-D7.  "
* codes from system $FDANationalDrugCodeCS
* ^copyright = "NDC codes are available for use.  As HL7 is working with the owning authority to finalize the url, this url is subject to change."

ValueSet: FDANDCOrCompound
Title: "FDA NDC or Compound "
Description: "National Drug Code (NDC).  The US Federal Drug Administration (FDA) Data Standards Council assigns the first 5 digits of the 11 digit code.  NCPDP field # 407-D7.  
Values will be the NDC Codes when the Compound Code value is 0 or 1.  When the Compound Code value = 2, the value will be the literal, ‘compound’"
* codes from system $FDANationalDrugCodeCS
* include C4BBBCompoundLiteralCS#compound 



// ValueSet: NCPDPRejectCode
// Title: "NCPDP Reject Code"
// Description: "NCPDP field # 511-FB (Reject Code) Code indicating the error encountered."
// * codes from system NCPDPRejectCodeCS 

RuleSet: AHANUBCCopyrightNotice
* ^copyright = "The Official UB-04 Data Specifications Manual, copyrighted by the American Hospital Association, is the only official source of UB-04 billing information adopted by the National Uniform Billing Committee. 
No other publication—governmental or private/commercial—can be considered authoritative. See their website for licensing terms and conditions.\nAs HL7 is working with the owning authority to finalize the url, this url is subject to change."

CodeSystem: AHANUBCPatientDischargeStatusCS
Title: "AHA NUBC Discharge Status"
Description: "UB-04 Patient Discharge Status (FL-17)"
* ^url = $AHANUBCPatientDischargeStatusOID
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

ValueSet: AHANUBCPatientDischargeStatus
Title: "AHA NUBC Patient Discharge Status"
Description: "UB-04 Patient Discharge Status (FL-17)"
* codes from system AHANUBCPatientDischargeStatusCS
* insert AHANUBCCopyrightNotice

CodeSystem: AHANUBCPresentOnAdmissionCS
Title: "AHA NUBC PresentOn Admission"
Description: "UB-04 Present on Admission (FL-67)."
* ^url = $AHANUBCPresentOnAdmissionOID
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

ValueSet: AHANUBCPresentOnAdmission
Title: "AHA NUBC Present On Admission"
Description: "UB-04 Present on Admission (FL-67)"
* codes from system AHANUBCPresentOnAdmissionCS
* insert AHANUBCCopyrightNotice

CodeSystem: AHANUBCRevenueCodesCS
Title: "AHA NUBC Revenue Codes"
Description: "NUBC Revenue codes are used to convey specific accomodation, ancillary service or unique billing calculations or arrangements. They are listed within the UB-04 Data Specifications Manual and maintained by the National Uniform Billing Committee (NUBC)"
* ^url = $AHANUBCRevenueCodeOID
* ^version = "0.1.0"
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

ValueSet: AHANUBCRevenueCodes
Title: "AHA NUBC Revenue Codes"
Description: "NUBC Revenue codes are used to convey specific accomodation, ancillary service or unique billing calculations or arrangements. They are listed within the UB-04 Data Specifications Manual and maintained by the National Uniform Billing Committee (NUBC)"
//* codes from system NUBCRevenueCodeCS
* codes from system AHANUBCRevenueCodesCS
* insert AHANUBCCopyrightNotice

CodeSystem: AHANUBCTypeOfBillCS
Title: "AHA NUBC Type of Bill"
Description: "AHA NUBC Type of Bill codes."
* ^url = $AHANUBCTypeOfBillOID
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

ValueSet: AHANUBCTypeOfBill
Title: "AHA NUBC Type of Bill"
Description: "AHA NUBC Type of Bill codes."
* codes from system AHANUBCTypeOfBillCS
* insert AHANUBCCopyrightNotice

CodeSystem: AHANUBCPointOfOriginForAdmissionOrVisitCS
Title: "AHA NUBC Point Of Origin For Admission Or Visit"
Description: "UB-04 Point of Origin for Admission or Visit (FL-15)"
* ^url = "http://www.nubc.org/point-of-origin-for-admission-or-visit"
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

ValueSet: AHANUBCPointOfOriginForAdmissionOrVisit
Title: "AHA NUBC Point of Origin for Admission or Visit."
Description: "UB-04 Point of Origin for Admission or Visit (FL-15)"
* codes from system AHANUBCPointOfOriginForAdmissionOrVisitCS
* insert AHANUBCCopyrightNotice

CodeSystem: AHANUBCPriorityTypeOfAdmissionOrVisitCS
Title: "AHA NUBC Priority Type Of Admission Or Visit"
Description: "UB-04 Priority (Type) of Admission or Visit (FL-14)."
* ^url = "http://www.nubc.org/priority-type-of-admission-or-visit"
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

ValueSet: AHANUBCPriorityTypeOfAdmissionOrVisit
Title: "AHA NUBC Priority Type Of Admission Or Visit"
Description: "AHA NUBC Priority Type Of Admission Or Visit"
* codes from system $AHANUBCPriorityOfAdmissionOrVisitCS
* insert AHANUBCCopyrightNotice




RuleSet: AMACopyrightNotice
* ^copyright = "Copyright 2014 American Medical Association (AMA). All rights reserved.  Available by subscription from the AMA."

CodeSystem: AMACPTCS
Title: "AMA CPT"
Description: "American Medical Association (AMA) Current Procedural Codes (CPT)"
* ^url = $CPT
* insert CodeSystemStubBoilerplate
* insert AMACopyrightNotice

CodeSystem: AMACPTModifiersCS
Title: "AMA CPT Modifiers"
Description: "American Medical Association (AMA) Current Procedural Codes (CPT) Modifiers"
* ^url = $AMACPTMODIFIERS
* insert CodeSystemStubBoilerplate
* insert AMACopyrightNotice

ValueSet: AMACPTCMSHCPCSProcedureCodes
Title: "AMA CPT CMS HCPCS Procedure Codes"
Description: "The Value Set is a combination of two Code Systems: CPT (HCPCS I) and HCPCS II procedure codes. They are submitted by providers to payers to convey the specific 
procedure performed. AMA CPT CMS HCPCS Procedure Codes leverage US Core Procedure Codes composition. CPT codes are available by subscription from the AMA at http://www.ama-assn.org/go/cpt. 
HCPCS codes are available at https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets/Alpha-Numeric-HCPCS.html. 
The link takes one to a list of files. The HCPCS ANWEB files include modifier and procedure codes. The target set for this Code System is the procedure codes from this file."
* codes from system AMACPTCS
* codes from system HCPCSProcedureCodesCS
* ^copyright = "CPT copyright 2014 American Medical Association. All rights reserved. The HCPCS II codes are owned by CMS and are available for use. As HL7 is working with the owning authority to finalize the url, this url is subject to change."

ValueSet:  AMACPTCMSHCPCSModifiers
Description: "The Value Set is a combination of two Code Systems: CPT (HCPCS I) and HCPCS II procedure code modifiers. 
Modifiers help further describe a procedure code without changing its definition. CPT codes are available by subscription from the AMA at http://www.ama-assn.org/go/cpt. 
HCPCS codes are available at https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets/Alpha-Numeric-HCPCS.html. 
The link takes one to a list of files. The HCPCS ANWEB files include modifier and procedure codes. The target set for this Code System is the procedure code modifiers from this file."
Title: "AMA CPT CMS HCPCS Modifiers"
* codes from system AMACPTModifiersCS 
* codes from system HCPCSModifiersCS
* ^copyright = "CCPT copyright 2014 American Medical Association. All rights reserved. The HCPCS II codes are owned by CMS and are available for use. As HL7 is working with the owning authority to finalize the url, this url is subject to change."

CodeSystem: HCPCSProcedureCodesCS
Title: "HCPCS Procedure Codes"
Description: "Healthcare Common Procedure Coding System (HCPCS) Procedure Codes"
* ^url = $HCPCSProcedureCodesCS
* insert CodeSystemStubBoilerplate
* ^copyright = "HCPCS codes are available at https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets/Alpha-Numeric-HCPCS.html.  
The link takes one to a list of files.  The HCPCS ANWEB files include modifier and procedure codes.  The target set for this Code System is the procedure codes from this file.  The code set is owned by CMS and is available for use."

CodeSystem: HCPCSModifiersCS
Title: "AMA CPT Modifiers"
Description: "Healthcare Common Procedure Coding System (HCPCS) Procedure Code Modifiers"
* ^url = $HCPCSMODIFIERS
* insert CodeSystemStubBoilerplate
* ^copyright = "HCPCS modifiers are available at https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets/Alpha-Numeric-HCPCS.html.  The link takes one to a list of files.  The HCPCS ANWEB files include modifier and procedure codes.    
The target set for this Code System is the procedure code modifiers from this file.  The code set is owned by CMS and is available for use."

CodeSystem: CMSDRGCS
Title: "CMS Diagnosis Related Group (DRG)"
Description: "Diagnosis Related Group - any of the payment categories that are used to classify patients and especially Medicare patients for the purpose of reimbursing hospitals for each case in a given 
category with a fixed fee regardless of the actual costs incurred (Other DRGs, such as AP-DRGs, requires defining their specific Value Sets and Code Systems.)"
* ^url = $CMSDRGCS
* insert CodeSystemStubBoilerplate
* ^copyright = "https://www.cms.gov/Medicare/Medicare-Fee-for-Service-Payment/AcuteInpatientPPS/MS-DRG-Classifications-and-Software.html
 This link takes one to a list of files.   The code set is owned by CMS and is available for use."

ValueSet: CMSDRG 
Title: "CMS-DRG"
Description: "Diagnosis Related Group - any of the payment categories that are used to classify patients and especially Medicare patients for the purpose of reimbursing hospitals for each case in a 
given category with a fixed fee regardless of the actual costs incurred (Other DRGs, such as AP-DRGs, requires defining their specific Value Sets and Code Systems.) 
https://www.cms.gov/Medicare/Medicare-Fee-for-Service-Payment/AcuteInpatientPPS/MS-DRG-Classifications-and-Software.html This link takes one to a list of files. The code set is owned by CMS and is available for use."
* codes from system $CMSDRGCS
* ^copyright = "The code set is owned by CMS and is available for use."

CodeSystem: CMSPlaceOfServiceCS
Title: "CMS Place of Service"
Description: "Place of Service codes are placed on health care professional claims to indicate the setting in which a service was provided. 
CMS Place of Service codes are available at https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set.html."
* ^url = $CMSPlaceOfServiceCS
* insert CodeSystemStubBoilerplate
* ^copyright = "CMS codes are available for use.  As HL7 is working with the owning authority to finalize the url, this url is subject to change."

ValueSet: CMSPlaceOfService
Title: "CMS Place of Service"
Description: "Place of Service codes are placed on health care professional claims to indicate the setting in which a service was provided. 
CMS Place of Service codes are available at https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set.html."
* codes from system CMSPlaceOfServiceCS 
* ^copyright = "CMS codes are available for use.  As HL7 is working with the owning authority to finalize the url, this url is subject to change."

CodeSystem: CMSRARCCS
Title: "CMS Remittance Advice Remark Codes (RARC)"
Description: "Denial Reasons - Reason codes used to interpret the adjudication denial reason"
* ^url = $CMSRARCCS
* insert CodeSystemStubBoilerplate
* ^copyright = "RARC codes are available at http://www.wpc-edi.com/reference/codelists/healthcare/remittance-advice-remark-codes.  RARC codes are owned by CMS and are available for use. "

CodeSystem: X12CARCCS
Title: "X12 Claim Adjustment Reason Codes (CARC)"
Description: "Denial Reasons - Reason codes used to interpret the adjudication denial reason"
* ^url = $X12CARCCS
* insert CodeSystemStubBoilerplate
* ^copyright = "CARC codes are owned, maintained and distributed by X12.  Use of X12 codes require licenses. "

ValueSet: X12CARCCMSRARC
Title: " X12 Claim Adjustment Reason Codes (CARC) and CMS Remittance Advice Remark Codes (RARC)"
Description: "The Value Set is a combination of two sets of codes: X12 Claim Adjustment Reason Codes (CARC) and CMS Remittance Advice Remark Codes (RARC). 
CARC codes describe why a claim or service line was paid differently than it was billed. RARC codes provide additional explanation for an adjustment already described by a 
Claim Adjustment Reason Code (CARC) or convey information about remittance processing. CARC codes are owned, maintained and distributed by X12. 
RARC codes are available at http://www.wpc-edi.com/reference/codelists/healthcare/remittance-advice-remark-codes."
* codes from system X12CARCCS 
* codes from system CMSRARCCS 
* ^copyright = "CARC codes are owned, maintained and distributed by X12. Use of X12 codes require licenses. RARC codes are owned by CMS and are available for useUse of X12 CARC codes require a license. Reference https://x12.org/codes/. 
RARC codes are owned by CMS and are available for use. As HL7 is working with the owning authority to finalize the url, this url is subject to chang."



CodeSystem: ICD10PCSCS
Title: "ICD-10-PCS"
Description: "International Classification of Diseases Surgical Procedures (ICD-10)."
* ^url = $ICD10PCS
* insert CodeSystemStubBoilerplate
* ^copyright = "The code set is owned by CMS and is available for use."


ValueSet: ICD10PCS
Title: "ICD-10-PCS"
Description: "ICD-10-PCS"
* codes from system ICD10PCSCS

CodeSystem: ICD10CMCS
Title: "ICD-10-CM"
Description: "International Classification of Diseases, Tenth Revision, Clinical Modification)"
* ^url = $ICD10CM
* insert CodeSystemStubBoilerplate
* ^copyright = "The ICD-10-CM code set is maintained by the National Center for Health Statistics (NCHS) of the Centers for Disease Control and Prevention (CDC) for use in the United States. 
It is based on ICD-10, which was developed by the World Health Organization (WHO) and is used internationally as a medical classification. 
The code set is owned by the NCHS-CDC and is available for use.  "


ValueSet: ICD10CM
Title: "ICD-10-CM Diagnosis Codes"
Description: "ICD-10-CM Diagnosis Codes."
* codes from system ICD10CMCS

ValueSet: FDANationalDrugCode
Title: "FDA National Drug Code (NDC)"
Description: "FDA National Drug Code (NDC)"
* codes from system FDANationalDrugCodeCS


