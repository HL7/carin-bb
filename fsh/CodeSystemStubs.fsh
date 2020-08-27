
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
* ^copyright = "These codes  are copyrighted by National Council for Prescription Drugs Programs, Inc. (NCPDP), and are available by subscription."

// CodeSystem: NCPDPRejectCodeCS
// Title: "NCPDP Reject Code"
// Description: "The National Council for Prescription Drug Programs, (NCPDP) Reject Code (511-FB) code set contains exception definitions for use when transaction processing cannot be completed."
// * ^url = "http://ncpdp.org/reject-code"
// * insert CodeSystemStubBoilerplate
// * insert NCPDPCopyrightNotice

CodeSystem: NCPDPDispensedAsWrittenCS
Title: "NCPDP Dispensed As Written (DAW)"
Description: "National Council for Prescription Drug Programs, (NCPDP) field # 408-D8 (Dispensed As Written (DAW) / Product Selection Code) "
* ^url = "http://www.ncpdp.org/dispensed-as-written-or-product-selection-code"
* insert CodeSystemStubBoilerplate
* insert NCPDPCopyrightNotice

CodeSystem: NCPDPBrandGenericCodeCS
Title: "NCPDP Brand Generic Code"
Description: "National Council for Prescription Drug Programs, (NCPDP) field # 686, BrandGenericCode. Whether the plan adjudicated the claim as a brand or generic drug."
* ^url = "http://www.ncpdp.org/brand-generic-code"
* insert CodeSystemStubBoilerplate
* insert NCPDPCopyrightNotice

CodeSystem: NCPDPPrescriptionOriginCodeCS
Title: "NCPDP Prescription Origin Code"
Description: "National Council for Prescription Drug Programs, (NCPDP)  field # 419-DJ (Prescription Origin Code)."
* ^url = "http://www.ncpdp.org/prescription-origin-code"
* insert CodeSystemStubBoilerplate
* insert NCPDPCopyrightNotice

CodeSystem: NCPDPCompoundCodeCS
Title: "NCPDP Compound Code"
Description: "National Council for Prescription Drug Programs, (NCPDP) field # 406-D6 (Compound Code)."
* ^url = "http://www.ncpdp.org/compound-code"
* insert CodeSystemStubBoilerplate
* insert NCPDPCopyrightNotice

RuleSet: AHANUBCCopyrightNotice
* ^copyright = "The Official UB-04 Data Specifications Manual, copyrighted by the American Hospital Association, is the only official source of UB-04 billing information adopted by the National Uniform Billing Committee. 
No other publication—governmental or private/commercial—can be considered authoritative. See their website for licensing terms and conditions.\nAs HL7 is working with the owning authority to finalize the url, this url is subject to change."

CodeSystem: AHANUBCPatientDischargeStatusCS
Description: "UB-04 Patient Discharge Status (FL-17)"
Title: "AHA NUBC Discharge Status"
* ^url = $AHANUBCPatientDischargeStatusOID
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

CodeSystem: AHANUBCPresentOnAdmissionCS
Title: "AHA NUBC PresentOn Admission"
Description: "UB-04 Present on Admission (FL-67)."
* ^url = $AHANUBCPresentOnAdmissionOID
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

CodeSystem: AHANUBCRevenueCodesCS
Title: "AHA NUBC Revenue Codes"
Description: "UB-04 Revenue Code (FL-42)."
* ^url = $AHANUBCRevenueCodeOID
* ^version = "0.1.0"
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

CodeSystem: AHANUBCTypeOfBillCS
Title: "AHA NUBC Type of Bill"
Description: "NUBC Type of Bill codes."
* ^url = $AHANUBCTypeOfBillOID
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

CodeSystem: AHANUBCPointOfOriginForAdmissionOrVisitCS
Title: "AHA NUBC Point Of Origin For Admission Or Visit"
Description: "UB-04 Point of Origin for Admission or Visit (FL-15)"
* ^url = "http://www.nubc.org/point-of-origin-for-admission-or-visit"
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

CodeSystem: AHANUBCPriorityTypeOfAdmissionOrVisitCS
Title: "AHA NUBC Priority Type Of Admission Or Visit"
Description: "UB-04 Priority (Type) of Admission or Visit (FL-14)."
* ^url = "http://www.nubc.org/priority-type-of-admission-or-visit"
* insert CodeSystemStubBoilerplate
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

CodeSystem: HCPCSProcedureCodesCS
Title: "AMA CPT"
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

CodeSystem: CMSPlaceOfServiceCS
Title: "CMS Place of Service"
Description: "Place of Service codes are placed on health care professional claims to indicate the setting in which a service was provided"
* ^url = $CMSPlaceOfServiceCS
* insert CodeSystemStubBoilerplate
* ^copyright = "https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set.html.  The link takes one to the Place of Service list as an html document; it is not a file to which an IG can be bound.  The code set is owned by CMS and is available for use."


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

CodeSystem: FDANationalDrugCodeCS
Title: "FDA National Drug Code (NDC)"
Description: "NCPDP field # 407-D7 National Drug Code (NDC)"
* ^url = $FDANationalDrugCodeCS
* insert CodeSystemStubBoilerplate
* ^copyright = "The US Federal Drug Administration (FDA) Data Standards Council assigns the first 5 digits of the 11 digit code.  The NDC codes are available for use."

CodeSystem: ICD10PCSCS
Title: "ICD-10-PCS"
Description: "International Classification of Diseases Surgical Procedures (ICD-10)."
* ^url = $ICD10PCS
* insert CodeSystemStubBoilerplate
* ^copyright = "The code set is owned by CMS and is available for use."

CodeSystem: ICD10CMCS
Title: "ICD-10-CM"
Description: "International Classification of Diseases, Tenth Revision, Clinical Modification)"
* ^url = $ICD10CM
* insert CodeSystemStubBoilerplate
* ^copyright = "The ICD-10-CM code set is maintained by the National Center for Health Statistics (NCHS) of the Centers for Disease Control and Prevention (CDC) for use in the United States. 
It is based on ICD-10, which was developed by the World Health Organization (WHO) and is used internationally as a medical classification. 
The code set is owned by the NCHS-CDC and is available for use.  "
