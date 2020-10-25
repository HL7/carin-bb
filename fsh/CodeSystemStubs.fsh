
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
* ^copyright = "National Council for Prescription Drugs Programs, Inc. (NCPDP) publications are owned by NCPDP, 9240 East Raintree Drive Scottsdale, AZ 85260, and protected by the copyright laws of the United States. 17 U.S.C. §101, et. seq. Permission is given to Council members to copy and use the work or any part thereof in connection with the business purposes of the Council members. The work may not be changed or altered. The work may be shared within the member company but may not be distributed and/or copied for/by others outside of the member’s company. The work may not be sold, used or exploited for commercial purposes. This permission may be revoked by NCPDP at any time. NCPDP is not responsible for any errors or damage as a result of the use of the work.

All material is provided as is, without warranty of any kind, expressed or implied, including but not limited to warranties of merchantability, fitness for a particular purpose, accuracy, completeness and non-infringement of third party rights. In no event shall NCPDP, its members or its contributors be liable for any claim, or any direct, special, indirect or consequential damages, or any damages whatsoever resulting from loss of use, data or profits, whether in an action of contract, negligence or other tortious action, arising out of or in connection with the use or performance of the material. Revised: September 2016"

CodeSystem: NCPDPRejectCode
Title: "NCPDP Reject Code"
Description: "Code indicating the error encountered. Contains exception definitions for use when transaction processing cannot be completed. (NCPDP ECL 511-FB).

Link to information about the code system - including how to obtain the content: [https://standards.ncpdp.org/Access-to-Standards.aspx](https://standards.ncpdp.org/Access-to-Standards.aspx)

_**Note: A temporary URL has been defined for this codesystem for use in draft implementation guides. It should be noted that the authoritative canonical URL will be different.**_"
* ^url = "http://terminology.hl7.org/temporary-uri/codeSystem/NCPDP/RejectCode"
* insert CodeSystemStubBoilerplate
* insert NCPDPCopyrightNotice

ValueSet: NCPDPRejectCode
Title: "NCPDP Reject Code"
Description: "Code indicating the error encountered. Contains exception definitions for use when transaction processing cannot be completed. (NCPDP ECL 511-FB).

Link to information about the code system - including how to obtain the content: [https://standards.ncpdp.org/Access-to-Standards.aspx](https://standards.ncpdp.org/Access-to-Standards.aspx)

_**Note: A temporary URL has been defined for this value set for use in draft implementation guides. It should be noted that the authoritative canonical URL will be different.**_"
* codes from system NCPDPRejectCode 
* insert NCPDPCopyrightNotice


CodeSystem: NCPDPDispensedAsWrittenOrProductSelectionCode
Title: "NCPDP Dispense As Written (DAW)/Product Selection Code"
Description: "Code indicating whether or not the prescriber's instructions regarding generic substitution were followed. (NCPDP ECL 408-D8)

Link to information about the code system - including how to obtain the content: [https://standards.ncpdp.org/Access-to-Standards.aspx](https://standards.ncpdp.org/Access-to-Standards.aspx)

_**Note: A temporary URL has been defined for this codesystem for use in draft implementation guides. It should be noted that the authoritative canonical URL will be different.**_"
* ^url = "http://terminology.hl7.org/temporary-uri/codeSystem/NCPDP/DispensedAsWrittenOrProductSelectionCode"
* insert CodeSystemStubBoilerplate
* insert NCPDPCopyrightNotice

ValueSet: NCPDPDispensedAsWrittenOrProductSelectionCode
Title: "NCPDP Dispense As Written (DAW)/Product Selection Code"
Description: "Code indicating whether or not the prescriber's instructions regarding generic substitution were followed. (NCPDP ECL 408-D8)

Link to information about the code system - including how to obtain the content: [https://standards.ncpdp.org/Access-to-Standards.aspx](https://standards.ncpdp.org/Access-to-Standards.aspx)

_**Note: A temporary URL has been defined for this value set for use in draft implementation guides. It should be noted that the authoritative canonical URL will be different.**_"
* codes from system NCPDPDispensedAsWrittenOrProductSelectionCode
* insert NCPDPCopyrightNotice

CodeSystem: NCPDPBrandGenericIndicator
Title: "NCPDP Brand Generic Indicator"
Description: "Denotes brand or generic drug dispensed. (NCPDP ECL 686)

Link to information about the code system - including how to obtain the content: [https://standards.ncpdp.org/Access-to-Standards.aspx](https://standards.ncpdp.org/Access-to-Standards.aspx)

_**Note: A temporary URL has been defined for this codesystem for use in draft implementation guides. It should be noted that the authoritative canonical URL will be different.**_"
* ^url = "http://terminology.hl7.org/temporary-uri/codeSystem/NCPDP/BrandGenericIndicator"
* insert CodeSystemStubBoilerplate
* insert NCPDPCopyrightNotice

ValueSet: NCPDPBrandGenericCode
Title: "NCPDP Brand Generic Indicator"
Description: "Denotes brand or generic drug dispensed. (NCPDP ECL 686)

Link to information about the code system - including how to obtain the content: [https://standards.ncpdp.org/Access-to-Standards.aspx](https://standards.ncpdp.org/Access-to-Standards.aspx)

_**Note: A temporary URL has been defined for this value set for use in draft implementation guides. It should be noted that the authoritative canonical URL will be different.**_"
* codes from system NCPDPBrandGenericIndicator 
* insert NCPDPCopyrightNotice

CodeSystem: NCPDPPrescriptionOriginCode
Title: "NCPDP Prescription Origin Code"
Description: "Code indicating the origin of the prescription. Indicates whether the prescription was transmitted as an electronic prescription, by phone, by fax, or as a written paper copy. (NCPDP ECL 419-DJ)

Link to information about the code system - including how to obtain the content: [https://standards.ncpdp.org/Access-to-Standards.aspx](https://standards.ncpdp.org/Access-to-Standards.aspx)

_**Note: A temporary URL has been defined for this codesystem for use in draft implementation guides. It should be noted that the authoritative canonical URL will be different.**_"
* ^url = "http://terminology.hl7.org/temporary/codeSystem-uri/NCPDP/PrescriptionOriginCode"
* insert CodeSystemStubBoilerplate
* insert NCPDPCopyrightNotice

ValueSet: NCPDPPrescriptionOriginCode
Title: "NCPDP Prescription Origin Code"
Description: "Code indicating the origin of the prescription. Indicates whether the prescription was transmitted as an electronic prescription, by phone, by fax, or as a written paper copy. (NCPDP ECL 419-DJ)

Link to information about the code system - including how to obtain the content: [https://standards.ncpdp.org/Access-to-Standards.aspx](https://standards.ncpdp.org/Access-to-Standards.aspx)

_**Note: A temporary URL has been defined for this value set for use in draft implementation guides. It should be noted that the authoritative canonical URL will be different.**_"
* codes from system NCPDPPrescriptionOriginCode
* insert NCPDPCopyrightNotice

CodeSystem: NCPDPCompoundCode
Title: "NCPDP Compound Code"
Description: "Code indicating whether or not the prescription is a compound. (NCPDP ECL 406-D6)

Link to information about the code system - including how to obtain the content: [https://standards.ncpdp.org/Access-to-Standards.aspx](https://standards.ncpdp.org/Access-to-Standards.aspx)

_**Note: A temporary URL has been defined for this codesystem for use in draft implementation guides. It should be noted that the authoritative canonical URL will be different.**_"
* ^url = "http://terminology.hl7.org/temporary-uri/codeSystem/NCPDP/CompoundCode"
* insert CodeSystemStubBoilerplate
* insert NCPDPCopyrightNotice

ValueSet: NCPDPCompoundCode
Title: "NCPDP Compound Code"
Description: "Code indicating whether or not the prescription is a compound. (NCPDP ECL 406-D6)

Link to information about the value set - including how to obtain the content: [https://standards.ncpdp.org/Access-to-Standards.aspx](https://standards.ncpdp.org/Access-to-Standards.aspx)

_**Note: A temporary URL has been defined for this codesystem for use in draft implementation guides. It should be noted that the authoritative canonical URL will be different.**_"
* codes from system NCPDPCompoundCode
* insert NCPDPCopyrightNotice

//  **************** FDA NDC ******************************
ValueSet: FDANationalDrugCode
Title: "National Drug Code (NDC)"
Description: "National Drug Code (NDC).  The US Federal Drug Administration (FDA) Data Standards Council assigns the first 5 digits of the 11 digit code.  NCPDP field # 407-D7."
* codes from system $FDANationalDrugCode
* ^copyright = "NDC codes are available for use.  As HL7 is working with the owning authority to finalize the url, this url is subject to change."

ValueSet: FDANDCOrCompound
Title: "NDC or Compound"
Description: "National Drug Code (NDC).  The US Federal Drug Administration (FDA) Data Standards Council assigns the first 5 digits of the 11 digit code.  NCPDP field # 407-D7.  
Values will be the NDC Codes when the Compound Code value is 0 or 1.  When the Compound Code value = 2, the value will be the literal, ‘compound’"
* codes from system $FDANationalDrugCode
* include C4BBCompoundLiteral#compound 

// ***************************NUBC start ***********
RuleSet: AHANUBCCopyrightNotice
* ^copyright = "Licensing information can be found [here](https://www.nubc.org/license)"

// These codes are listed within the UB-04 Data Specifications Manual. The Official UB-04 Data Specifications Manual, copyrighted by the American Hospital Association, is the only official source of UB-04 billing information adopted by the National Uniform Billing Committee. No other publication—governmental or private/commercial—can be considered authoritative. The AHA wants to make you aware that the use of codes, descriptions, or any other content contained in the manual to be used in a software application, publication, or any other derivative work must be properly licensed by the AHA. If your organization uses or intends to use any of the codes or other related content from the manual in this manner, please contact the AHA’s licensing manager, Tim Carlson, at 312.893.6816 or [tcarlson@aha.org](mailto:tcarlson@aha.org)"
CodeSystem: AHANUBCPatientDischargeStatus
Title: "NUBC Patient Discharge Status Codes"
Description: "The UB-04 Data File contains the complete set of NUBC codes. Every code in the range of possible codes is accounted for sequentially. There are no gaps because all used and unused codes are identified.

This code system consists of the following:

*   FL 17 - Patient Discharge Status

These codes are used to convey the patient discharge status and are the property of the American Hospital Association.

To obtain the underlying code systems, please see information [here](https://www.nubc.org/subscription-information)"
* ^url = "https://www.nubc.org/CodeSystem/PatDischargeStatus"
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

ValueSet: AHANUBCPatientDischargeStatus
Title: "NUBC Patient Discharge Status Codes"
Description: "The UB-04 Data File contains the complete set of NUBC codes. Every code in the range of possible codes is accounted for sequentially. There are no gaps because all used and unused codes are identified.

This code system consists of the following:

*   FL 17 - Patient Discharge Status

These codes are used to convey the patient discharge status and are the property of the American Hospital Association.

To obtain the underlying code systems, please see information [here](https://www.nubc.org/subscription-information)"
* codes from system AHANUBCPatientDischargeStatus
* insert AHANUBCCopyrightNotice

CodeSystem: AHANUBCPresentOnAdmission
Title: "NUBC Present On Admission Indicator Codes"
Description: "The UB-04 Data File contains the complete set of NUBC codes. Every code in the range of possible codes is accounted for sequentially. There are no gaps because all used and unused codes are identified.

This code system consists of the following:

*   FL 67 - Present On Admission Indicator

These codes are used to convey the present on admission indicator codes and are the property of the American Hospital Association.

To obtain the underlying code systems, please see information [here](https://www.nubc.org/subscription-information)"
* ^url = "https://www.nubc.org/CodeSystem/PresentOnAdmissionIndicator"
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

ValueSet: AHANUBCPresentOnAdmission
Title: "NUBC Present On Admission Indicator Codes"
Description: "The UB-04 Data File contains the complete set of NUBC codes. Every code in the range of possible codes is accounted for sequentially. There are no gaps because all used and unused codes are identified.

This code system consists of the following:

*   FL 67 - Present On Admission Indicator

These codes are used to convey the present on admission indicator codes and are the property of the American Hospital Association.

To obtain the underlying code systems, please see information [here](https://www.nubc.org/subscription-information)"
* codes from system AHANUBCPresentOnAdmission
* insert AHANUBCCopyrightNotice

CodeSystem: AHANUBCRevenueCodes
Title: "NUBC Revenue Codes"
Description: "The UB-04 Data File contains the complete set of NUBC codes. Every code in the range of possible codes is accounted for sequentially. There are no gaps because all used and unused codes are identified.

This code system consists of the following:

*   FL 42 - Revenue Codes

These codes are used to convey the revenue code and are the property of the American Hospital Association.

To obtain the underlying code systems, please see information [here](https://www.nubc.org/subscription-information)"
* ^url = "https://www.nubc.org/CodeSystem/RevenueCodes"
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

ValueSet: AHANUBCRevenueCodes
Title: "NUBC Revenue Codes"
Description: "The UB-04 Data File contains the complete set of NUBC codes. Every code in the range of possible codes is accounted for sequentially. There are no gaps because all used and unused codes are identified.

This code system consists of the following:

*   FL 42 - Revenue Codes

These codes are used to convey the revenue code and are the property of the American Hospital Association.

To obtain the underlying code systems, please see information [here](https://www.nubc.org/subscription-information)"
* codes from system AHANUBCRevenueCodes
* insert AHANUBCCopyrightNotice

CodeSystem: AHANUBCTypeOfBill
Title: "NUBC Type Of Bill Codes"
Description: "The UB-04 Data File contains the complete set of NUBC codes. Every code in the range of possible codes is accounted for sequentially. There are no gaps because all used and unused codes are identified.

This code system consists of the following:

*   FL 04 - Type of Bill Facility Codes
*   FL 04 - Type of Bill Frequency Codes

The Type of Bill Codes indicate the disposition or discharge status of the patient as of the discharge date. This code system includes the patient discharge status, which are the propoerty of the American Hospital Association (AHA).

To obtain the underlying code systems, please see information [here](https://www.nubc.org/subscription-information)"
* ^url = "https://www.nubc.org/CodeSystem/TypeOfBill"
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

ValueSet: AHANUBCTypeOfBill
Title: "NUBC Type of Bill Codes"
Description: "The UB-04 Data File contains the complete set of NUBC codes. Every code in the range of possible codes is accounted for sequentially. There are no gaps because all used and unused codes are identified.

This code system consists of the following:

*   FL 04 - Type of Bill Facility Codes
*   FL 04 - Type of Bill Frequency Codes

The Type of Bill Codes indicate the disposition or discharge status of the patient as of the discharge date. This code system includes the patient discharge status, which are the propoerty of the American Hospital Association (AHA).

To obtain the underlying code systems, please see information [here](https://www.nubc.org/subscription-information)"
* codes from system AHANUBCTypeOfBill
* insert AHANUBCCopyrightNotice

CodeSystem: AHANUBCPointOfOriginForAdmissionOrVisit
Title: "NUBC Point Of Origin"
Description: "The UB-04 Data File contains the complete set of NUBC codes. Every code in the range of possible codes is accounted for sequentially. There are no gaps because all used and unused codes are identified.

This code system consists of the following:

*   FL 15 - Point of Origin for Admission or Visit (includes Newborn and Non-newborn)

These codes are used to convey the patient point of orgin for an admission or visit and are the property of the American Hospital Association.

To obtain the underlying code systems, please see information [here](https://www.nubc.org/subscription-information)"
* ^url = "https://www.nubc.org/CodeSystem/PointOfOrigin"
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

ValueSet: AHANUBCPointOfOriginForAdmissionOrVisit
Title: "NUBC Point Of Origin"
Description: "The UB-04 Data File contains the complete set of NUBC codes. Every code in the range of possible codes is accounted for sequentially. There are no gaps because all used and unused codes are identified.

This code system consists of the following:

*   FL 15 - Point of Origin for Admission or Visit (includes Newborn and Non-newborn)

These codes are used to convey the patient point of orgin for an admission or visit and are the property of the American Hospital Association.

To obtain the underlying code systems, please see information [here](https://www.nubc.org/subscription-information)"
* codes from system AHANUBCPointOfOriginForAdmissionOrVisit
* insert AHANUBCCopyrightNotice

CodeSystem: AHANUBCPriorityTypeOfAdmissionOrVisit
Title: "NUBC Priority (Type) of Admission or Visit"
Description: "The UB-04 Data File contains the complete set of NUBC codes. Every code in the range of possible codes is accounted for sequentially. There are no gaps because all used and unused codes are identified.

This code system consists of the following:

*   FL 14 - Priority (Type) of Admission or Visit

These codes are used to convey the priority of an admission or visit and are the property of the American Hospital Association.

To obtain the underlying code systems, please see information [here](https://www.nubc.org/subscription-information)"
* ^url = "https://www.nubc.org/CodeSystem/PriorityTypeOfAdmitOrVisit"
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

ValueSet: AHANUBCPriorityTypeOfAdmissionOrVisit
Title: "NUBC Priority (Type) of Admission or Visit"
Description: "The UB-04 Data File contains the complete set of NUBC codes. Every code in the range of possible codes is accounted for sequentially. There are no gaps because all used and unused codes are identified.

This code system consists of the following:

*   FL 14 - Priority (Type) of Admission or Visit

These codes are used to convey the priority of an admission or visit and are the property of the American Hospital Association.

To obtain the underlying code systems, please see information [here](https://www.nubc.org/subscription-information)"
* codes from system AHANUBCPriorityTypeOfAdmissionOrVisit
* insert AHANUBCCopyrightNotice


//********start: replaced AMA / HCPCS************

RuleSet: AMACopyrightNotice
* ^copyright = "Copyright 2014 American Medical Association (AMA). All rights reserved.  As HL7 is working with the owning authority to finalize the url, this url is subject to change."

RuleSet: HCPCSCopyrightNotice
* ^copyright = "See information on the use of HCPCS Level I (proprietary and owned by American Medical Association) and Level II codes [here](https://www.cms.gov/Medicare/Coding/MedHCPCSGenInfo/HCPCS_Coding_Questions)"

CodeSystem: AMACPTCodes
Title: "AMA CPT Codes"
Description: "CPT procedure and modifier codes are submitted to payers to convey the specific procedure performed.  CPT codes are available by subscription from the AMA at http://www.ama-assn.org/go/cpt. As HL7 is working with the owning authority to finalize the url, this url is subject to change."
* ^url = $CPT
* insert CodeSystemStubBoilerplate
* insert AMACopyrightNotice

CodeSystem: CMSHCPCSCodes
Title: "Healthcare Common Procedure Coding System (HCPCS) level II alphanumeric codes"
Description: "The Level II HCPCS codes, which are established by CMS's Alpha-Numeric Editorial Panel, primarily represent items and supplies and non-physician services not covered by the American Medical Association's Current Procedural Terminology-4 (CPT-4) codes; Medicare, Medicaid, and private health insurers use HCPCS procedure and modifier codes for claims processing.  Level II alphanumeric procedure and modifier codes comprise the A to V range.

General information can be found here: [https://www.cms.gov/Medicare/Coding/MedHCPCSGenInfo](https://www.cms.gov/Medicare/Coding/MedHCPCSGenInfo)

Releases can be found here: [https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets](https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets)

These files contain the Level II alphanumeric HCPCS procedure and modifier codes, their long and short descriptions, and applicable Medicare administrative, coverage and pricing data."
* ^url =  "http://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets"
* insert CodeSystemStubBoilerplate
* insert HCPCSCopyrightNotice

ValueSet: AMACPTCMSHCPCSProcedureCodes
Title: "CPT HCPCS Procedure Codes"
Description: "The value set is a combination of two code systems:  CPT (HCPCS I) and HCPCS II procedure codes. They are submitted by providers to payers to convey the specific procedure performed.  Procedure Codes leverage US Core Procedure Codes composition.  
The target set for this value set are the procedure codes from the CPT and HCPCS files.\n\n**PROCEDURE CODES ONLY**"
* codes from system AMACPTCodes
* codes from system CMSHCPCSCodes
* ^copyright = "CPT copyright 2014 American Medical Association. All rights reserved.

See information on the use of HCPCS Level I (proprietary and owned by American Medical Association) and Level II codes [here](https://www.cms.gov/Medicare/Coding/MedHCPCSGenInfo/HCPCS_Coding_Questions)"


ValueSet:  AMACPTCMSHCPCSModifiers
Title: "CPT HCPCS Modifiers" 
Description: "The Value Set is a combination of two Code Systems:  CPT (HCPCS I) and HCPCS II procedure code modifiers.  Modifiers help further describe a procedure code without changing its definition.  
The target set for this value set are the procedure code modifiers from the CPT and HCPCS files. \n\n**MODIFIER CODES ONLY**"
* codes from system AMACPTCodes 
* codes from system CMSHCPCSCodes
* ^copyright = "CPT copyright 2014 American Medical Association. All rights reserved.

See information on the use of HCPCS Level I (proprietary and owned by American Medical Association) and Level II codes [here](https://www.cms.gov/Medicare/Coding/MedHCPCSGenInfo/HCPCS_Coding_Questions)"


// ******** DRGs ***************

CodeSystem: CMSMSDRG
Title: "MS DRG"
Description: "MS-DRGs (Medicare Severity Diagnosis Related Groups).  MS-DRGs are owned by CMS.  Assignment of a DRG is defined by a particular set of patient attributes, which include principal diagnosis, specific secondary diagnoses, procedures, sex and discharge status.  Identifying a DRG code requires a version."
* ^url = "http://www.cms.gov/Medicare/Coding/ms-drg/MS-DRG"
* insert CodeSystemStubBoilerplate
* ^copyright = "The Centers for Medicare & Medicaid Services (CMS) maintain the MS-DRGs used throughout the US health care industry."


CodeSystem: THREEMAPDRG
Title: "AP DRG"
Description: "AP-DRGs (All Patient Diagnosis Related Groups).  Assignment of a DRG is defined by a particular set of patient attributes, which include principal diagnosis, specific secondary diagnoses, procedures, sex and discharge status.  Identifying a DRG code requires a version."
* ^url = "http://www.3M.com/AP-DRG"
* insert CodeSystemStubBoilerplate
* ^copyright = "Use of AP-DRGs require a license.  Reference https://www.3m.com/3M/en_US/health-information-systems-us/drive-value-based-care/patient-classification-methodologies/apr-drgs/.   As HL7 is working with the owning authorities to finalize the urls, the urls are subject to change."

CodeSystem: THREEMAPRDRG
Title: "APR DRG"
Description: "APR-DRGs (All Patient Refined Diagnosis Related Groups).  Assignment of a DRG is defined by a particular set of patient attributes, which include principal diagnosis, specific secondary diagnoses, procedures, sex and discharge status.  Identifying a DRG code requires a version."
* ^url = "http://www.3M.com/APR-DRG"
* insert CodeSystemStubBoilerplate
* ^copyright = "Use of APR-DRGs require a license.  Reference https://www.3m.com/3M/en_US/health-information-systems-us/drive-value-based-care/patient-classification-methodologies/apr-drgs/.   As HL7 is working with the owning authorities to finalize the urls, the urls are subject to change."


ValueSet: CMSMS3MAPAPRDRG 
Title: "MS-DRGs - AP-DRGs - APR-DRGs"
Description: "This value set defines three sets of DRGs, MS-DRGs (Medicare Severity Diagnosis Related Groups) AP-DRGs (All Patient Diagnosis Related Groups) and APR-DRGs (All Patient Refined Diagnosis Related Groups).  Assignment of a DRG is defined by a particular set of patient attributes, which include principal diagnosis, specific secondary diagnoses, procedures, sex and discharge status.  Identifying a DRG code requires a version."
* codes from system CMSMSDRG
* codes from system THREEMAPDRG
* codes from system THREEMAPRDRG
* ^copyright = "The Centers for Medicare & Medicaid Services (CMS) maintain the MS-DRGs used throughout the US health care industry.  Use of APR-DRGs require a license.  Reference https://www.3m.com/3M/en_US/health-information-systems-us/drive-value-based-care/patient-classification-methodologies/apr-drgs/.   As HL7 is working with the owning authorities to finalize the urls, the urls are subject to change."

// ******** Place of Service ***************
CodeSystem: CMSPlaceofServiceCodes
Title: "CMS Place of Service Codes (POS)"
Description: "Place of Service Codes are two-digit codes placed on health care professional claims to indicate the setting in which a service was provided. The Centers for Medicare & Medicaid Services (CMS) maintain POS codes used throughout the health care industry.

This code set is required for use in the implementation guide adopted as the national standard for electronic transmission of professional health care claims under the provisions of the Health Insurance Portability and Accountability Act of 1996 (HIPAA). HIPAA directed the Secretary of HHS to adopt national standards for electronic transactions. These standard transactions require all health plans and providers to use standard code sets to populate data elements in each transaction. The Transaction and Code Set Rule adopted the ASC X12N-837 Health Care Claim: Professional, volumes 1 and 2, version 4010, as the standard for electronic submission of professional claims. This standard names the POS code set currently maintained by CMS as the code set to be used for describing sites of service in such claims. POS information is often needed to determine the acceptability of direct billing of Medicare, Medicaid and private insurance services provided by a given provider.

Current codes can be obtained [here](https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set)"
* ^url = "https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set"
* insert CodeSystemStubBoilerplate
* ^copyright = "The Centers for Medicare & Medicaid Services (CMS) maintain Place Of Service (POS) codes used throughout the US health care industry. The CMS POS codes are free to use without restriction."

ValueSet: CMSPlaceofServiceCodes
Title: "CMS Place of Service Codes (POS)"
Description: "Place of Service Codes are two-digit codes placed on health care professional claims to indicate the setting in which a service was provided. The Centers for Medicare & Medicaid Services (CMS) maintain POS codes used throughout the health care industry.

This code set is required for use in the implementation guide adopted as the national standard for electronic transmission of professional health care claims under the provisions of the Health Insurance Portability and Accountability Act of 1996 (HIPAA). HIPAA directed the Secretary of HHS to adopt national standards for electronic transactions. These standard transactions require all health plans and providers to use standard code sets to populate data elements in each transaction. The Transaction and Code Set Rule adopted the ASC X12N-837 Health Care Claim: Professional, volumes 1 and 2, version 4010, as the standard for electronic submission of professional claims. This standard names the POS code set currently maintained by CMS as the code set to be used for describing sites of service in such claims. POS information is often needed to determine the acceptability of direct billing of Medicare, Medicaid and private insurance services provided by a given provider.

Current codes can be obtained [here](https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set)"
* codes from system CMSPlaceofServiceCodes
* ^copyright = "The Centers for Medicare & Medicaid Services (CMS) maintain Place Of Service (POS) codes used throughout the US health care industry. The CMS POS codes are free to use without restriction."

// ******** CARCs / RARCs ***************

CodeSystem: X12ClaimAdjustmentReasonCodes
Title: "X12 Claim Adjustment Reason Codes"
Description: "X12, chartered by the American National Standards Institute for more than 40 years, develops and maintains EDI standards and XML schemas which drive business processes globally. X12's diverse membership includes technologists and business process experts in health care, insurance, transportation, finance, government, supply chain and other industries.

The X12 Claim Adjustment Reason Codes describe why a claim or service line was paid differently than it was billed. . These codes are listed within an X12 implementation guide (TR3) and maintained by X12.

External code lists maintained by X12 and external code lists maintained by others and distributed by WPC on behalf of the maintainer. Can be found here:

[https://x12.org/codes](https://x12.org/codes)

Click on the name of any external code list to access more information about the code list, view the codes, or submit a maintenance request. These external code lists were previously published on either [www.wpc-edi.com/reference](http://www.wpc-edi.com/reference) or [www.x12.org/codes](http://www.x12.org/codes)."
* ^url = "https://x12.org/codes/claim-adjustment-reason-codes"
* insert CodeSystemStubBoilerplate
* ^copyright = "**Intellectual Property Information**

All X12 products are subject to this IP policy, including published and draft works.

X12 is the only organization authorized to grant permission for use of X12 products. Users of all X12 products should make sure that they understand the permissible uses, as well as the limitations on such usage, as outlined below.

Additional IP information can be found here: [https://x12.org/products/ip-use](https://x12.org/products/ip-use)

**Licensing Information**

Send an email to [ip@x12.org](mailto:ip@x12.org) to request permission to reproduce X12 IP. Include your name, organization, title, address, city, state, zip, email, a detailed description of the Submitted Artifact, including the underlying or cited X12 Product, and a detailed description of the intended audience and planned distribution method for the Artifact.

Additional information on X12 licensing program can be found here:

[https://x12.org/products/licensing-program](https://x12.org/products/licensing-program)

**Purchasing Information:**

To purchase code list subscriptions call (425) 562-2245 or email [admin@wpc-edi.com](mailto:admin@wpc-edi.com)."


CodeSystem: CMSRemittanceAdviceRemarkCodes
Title: "X12 Remittance Advice Remark Codes"
Description: "Remittance Advice Remark Codes (RARC) codes provide additional explanation for an adjustment already described by a Claim Adjustment Reason Code (CARC) or convey information about remittance processing. RARC codes are available at [https://x12.org/codes/remittance-advice-remark-codes](https://x12.org/codes/remittance-advice-remark-codes)"  
* ^url = "https://x12.org/codes/remittance-advice-remark-codes" 
* insert CodeSystemStubBoilerplate
* ^copyright = "The Centers for Medicare & Medicaid Services (CMS) maintain Remittance Advice Remark Codes (RARC) used throughout the US health care industry."


ValueSet: X12ClaimAdjustmentReasonCodesCMSRemittanceAdviceRemarkCodes
Title: "X12 Claim Adjustment Reason Codes - Remittance Advice Remark Codes"
Description: "X12, chartered by the American National Standards Institute for more than 40 years, develops and maintains EDI standards and
XML schemas which drive business processes globally. X12's diverse membership includes technologists and business process experts in health care, 
insurance, transportation, finance, government, supply chain and other industries.

The X12 Claim Adjustment Reason Codes describe why a claim or service line was paid differently than it was billed. . These codes are listed within an X12 implementation guide (TR3) and maintained by X12.

External code lists maintained by X12 and external code lists maintained by others and distributed by WPC on behalf of the maintainer. Can be found here:

[https://x12.org/codes](https://x12.org/codes)

Click on the name of any external code list to access more information about the code list, view the codes, or submit a maintenance request. These external code lists were previously published on either [www.wpc-edi.com/reference](http://www.wpc-edi.com/reference) or [www.x12.org/codes](http://www.x12.org/codes).

Remittance Advice Remark Codes (RARC) codes provide additional explanation for an adjustment already described by a Claim Adjustment Reason Code (CARC) or convey information about remittance processing. RARC codes are available at [https://x12.org/codes/remittance-advice-remark-codes](https://x12.org/codes/remittance-advice-remark-codes)"
* codes from system X12ClaimAdjustmentReasonCodes 
* codes from system CMSRemittanceAdviceRemarkCodes 
* ^copyright = "**Intellectual Property Information**

All X12 products are subject to this IP policy, including published and draft works.

X12 is the only organization authorized to grant permission for use of X12 products. Users of all X12 products should make sure that they understand the permissible uses, as well as the limitations on such usage, as outlined below.

Additional IP information can be found here: [https://x12.org/products/ip-use](https://x12.org/products/ip-use)

**Licensing Information**

Send an email to [ip@x12.org](mailto:ip@x12.org) to request permission to reproduce X12 IP. Include your name, organization, title, address, city, state, zip, email, a detailed description of the Submitted Artifact, including the underlying or cited X12 Product, and a detailed description of the intended audience and planned distribution method for the Artifact.

Additional information on X12 licensing program can be found here:

[https://x12.org/products/licensing-program](https://x12.org/products/licensing-program)

**Purchasing Information:**

To purchase code list subscriptions call (425) 562-2245 or email [admin@wpc-edi.com](mailto:admin@wpc-edi.com).

The Centers for Medicare & Medicaid Services (CMS) maintain Remittance Advice Remark Codes (RARC) used throughout the US health care industry.

**Remittance Advice Remark Codes:**

Although maintained by CMS, X12 has the codes available for industry use."

//  ********* ICD diagnosis codes / procedure codes
RuleSet: ICD10CopyrightNotice
* ^copyright = "The CMS licenses its published material in order to encourage maximum use and dissemination. See  
the CMS ([https://www.cms.gov/Medicare/Coding/ICD10](https://www.cms.gov/Medicare/Coding/ICD10)) web site for more information."

//  ******* @Saul  - new Code System definition ********
CodeSystem: ICD10PCS
Title: "ICD-10 Procedure Coding System"
Description: "The ICD-10-PCS is a procedure classification published by the United States Centers for Medicare & Medicaid Services (CMS) ([https://www.cms.gov](https://www.cms.gov/)) for classifying procedures  
performed in hospital inpatient health care settings.

Link to information about the code system - including how to obtain the content: 

[https://www.cms.gov/Medicare/Coding/ICD10](https://www.cms.gov/Medicare/Coding/ICD10)

Note: CMS is the owner of the ICD-10-PCS code system. CMS is NOT the owner of ICD-10-CM. CMS republishes the ICD-10-CM codes system on their website for convienence only. For authoratative information on ICD-10-CM, users should refer to the National Center for Health Statistics (NCHS) site located [here](https://www.cdc.gov/nchs/icd/icd10cm.htm)."  
* ^url = "https://www.cms.gov/Medicare/Coding/ICD10" 
* insert CodeSystemStubBoilerplate
* insert ICD10CopyrightNotice

ValueSet: CDCICD910CMDiagnosisCodes 
Title: "ICD-9-10-CM Diagnosis Codes"
Description: "The ICD-CM (International Classification of Diseases, Clinical Modification) is a system used by physicians and other healthcare providers to classify and code all diagnoses and symptoms recorded in conjunction with hospital care in the United States."
* codes from system $ICD10CM
* codes from system $ICD9CM
* ^copyright = "ICD-9 and ICD-10 are copyrighted by the World Health Organization (WHO) which owns and publishes the classification. See https://www.who.int/classifications/icd/en. WHO has authorized the development of an adaptation of ICD-9 and ICD-10 to ICD-9-CM to ICD-10-CM for use in the United States for U.S. government purposes.  As HL7 is working with the owning authority to finalize the urls, the urls are subject to change."


ValueSet: CMSICD910PCSProcedureCodes 
Title: "ICD-9 Procedure Codes - ICD-10 Procedure Coding System"
Description: "This value set defines a set of codes from that can be used to indicate the procedure performed"
* codes from system ICD10PCS
* codes from system $ICD9PCS
* ^copyright = "The Centers for Medicare & Medicaid Services (CMS) maintain ICD PCS Procedure Codes used throughout the US health care industry.  As HL7 is working with the owning authority to finalize the urls, the urls are subject to change."


