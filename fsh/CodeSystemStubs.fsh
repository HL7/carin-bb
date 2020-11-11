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

Link to information about the code system - including how to obtain the content: [https://standards.ncpdp.org/Access-to-Standards.aspx](https://standards.ncpdp.org/Access-to-Standards.aspx)"

* ^url = "http://terminology.hl7.org/CodeSystem/NCPDP/RejectCode"
* insert CodeSystemStubBoilerplate
* insert NCPDPCopyrightNotice

ValueSet: NCPDPRejectCode
Title: "NCPDP Reject Code"
Description: "Code indicating the error encountered. Contains exception definitions for use when transaction processing cannot be completed. (NCPDP ECL 511-FB).

Link to information about the code system - including how to obtain the content: [https://standards.ncpdp.org/Access-to-Standards.aspx](https://standards.ncpdp.org/Access-to-Standards.aspx)"

* codes from system NCPDPRejectCode 
* insert NCPDPCopyrightNotice


CodeSystem: NCPDPDispensedAsWrittenOrProductSelectionCode
Title: "NCPDP Dispense As Written (DAW)/Product Selection Code"
Description: "Code indicating whether or not the prescriber's instructions regarding generic substitution were followed. (NCPDP ECL 408-D8)

Link to information about the code system - including how to obtain the content: [https://standards.ncpdp.org/Access-to-Standards.aspx](https://standards.ncpdp.org/Access-to-Standards.aspx)"

* ^url = "http://terminology.hl7.org/CodeSystem/NCPDP/DispensedAsWrittenOrProductSelectionCode"
* insert CodeSystemStubBoilerplate
* insert NCPDPCopyrightNotice

ValueSet: NCPDPDispensedAsWrittenOrProductSelectionCode
Title: "NCPDP Dispense As Written (DAW)/Product Selection Code"
Description: "Code indicating whether or not the prescriber's instructions regarding generic substitution were followed. (NCPDP ECL 408-D8)

Link to information about the code system - including how to obtain the content: [https://standards.ncpdp.org/Access-to-Standards.aspx](https://standards.ncpdp.org/Access-to-Standards.aspx)"

* codes from system NCPDPDispensedAsWrittenOrProductSelectionCode
* insert NCPDPCopyrightNotice

CodeSystem: NCPDPBrandGenericIndicator
Title: "NCPDP Brand Generic Indicator"
Description: "Denotes brand or generic drug dispensed. (NCPDP ECL 686)

Link to information about the code system - including how to obtain the content: [https://standards.ncpdp.org/Access-to-Standards.aspx](https://standards.ncpdp.org/Access-to-Standards.aspx)"

* ^url = "http://terminology.hl7.org/CodeSystem/NCPDP/BrandGenericIndicator"
* insert CodeSystemStubBoilerplate
* insert NCPDPCopyrightNotice

ValueSet: NCPDPBrandGenericCode
Title: "NCPDP Brand Generic Indicator"
Description: "Denotes brand or generic drug dispensed. (NCPDP ECL 686)

Link to information about the code system - including how to obtain the content: [https://standards.ncpdp.org/Access-to-Standards.aspx](https://standards.ncpdp.org/Access-to-Standards.aspx)"

* codes from system NCPDPBrandGenericIndicator 
* insert NCPDPCopyrightNotice

CodeSystem: NCPDPPrescriptionOriginCode
Title: "NCPDP Prescription Origin Code"
Description: "Code indicating the origin of the prescription. Indicates whether the prescription was transmitted as an electronic prescription, by phone, by fax, or as a written paper copy. (NCPDP ECL 419-DJ)

Link to information about the code system - including how to obtain the content: [https://standards.ncpdp.org/Access-to-Standards.aspx](https://standards.ncpdp.org/Access-to-Standards.aspx)"

* ^url = "http://terminology.hl7.org/CodeSystem/NCPDP/PrescriptionOriginCode"
* insert CodeSystemStubBoilerplate
* insert NCPDPCopyrightNotice

ValueSet: NCPDPPrescriptionOriginCode
Title: "NCPDP Prescription Origin Code"
Description: "Code indicating the origin of the prescription. Indicates whether the prescription was transmitted as an electronic prescription, by phone, by fax, or as a written paper copy. (NCPDP ECL 419-DJ)

Link to information about the code system - including how to obtain the content: [https://standards.ncpdp.org/Access-to-Standards.aspx](https://standards.ncpdp.org/Access-to-Standards.aspx)"

* codes from system NCPDPPrescriptionOriginCode
* insert NCPDPCopyrightNotice

CodeSystem: NCPDPCompoundCode
Title: "NCPDP Compound Code"
Description: "Code indicating whether or not the prescription is a compound. (NCPDP ECL 406-D6)

Link to information about the code system - including how to obtain the content: [https://standards.ncpdp.org/Access-to-Standards.aspx](https://standards.ncpdp.org/Access-to-Standards.aspx)"

* ^url = "http://terminology.hl7.org/CodeSystem/NCPDP/CompoundCode"
* insert CodeSystemStubBoilerplate
* insert NCPDPCopyrightNotice

ValueSet: NCPDPCompoundCode
Title: "NCPDP Compound Code"
Description: "Code indicating whether or not the prescription is a compound. (NCPDP ECL 406-D6)

Link to information about the code system - including how to obtain the content: [https://standards.ncpdp.org/Access-to-Standards.aspx](https://standards.ncpdp.org/Access-to-Standards.aspx)"

* codes from system NCPDPCompoundCode
* insert NCPDPCopyrightNotice

//  **************** FDA NDC ******************************


ValueSet: FDANationalDrugCode
Title: "National Drug Code (NDC)"
Description: "The Drug Listing Act of 1972 requires registered drug establishments to provide the Food and Drug Administration (FDA) with a current list of all drugs manufactured, prepared, propagated, compounded, or processed by it for commercial distribution.  (See Section 510 of the Federal Food, Drug, and Cosmetic Act (Act) (21 U.S.C. § 360)). Drug products are identified and reported using a unique, three-segment number, called the National Drug Code (NDC), which serves as a universal product identifier for drugs. FDA publishes the listed NDC numbers and the information submitted as part of the listing information in the NDC Directory which is updated daily.

The information submitted as part of the listing process, the NDC number, and the NDC Directory are used in the implementation and enforcement of the Act.

Users should note:

Starting June 1, 2011, only drugs for which electronic listings (SPL) have been submitted to FDA are included in the NDC Directory. Drugs for which listing information was last submitted to FDA on paper forms, prior to June 2009, are included on a separate file and will not be updated after June 2012.

Information regarding the FDA published NDC Directory can be found [here](https://www.fda.gov/drugs/drug-approvals-and-databases/national-drug-code-directory)

Users should note a few important items

*   The NDC Directory is updated daily. 
*   The new NDC Directory contains ONLY information on final marketed drugs submitted to FDA in SPL electronic listing files by labelers.
*   The NDC Directory does not contain all listed drugs. The new version includes the final marketed drugs which listing information were submitted electronically. It does not include animal drugs, blood products, or human drugs that are not in final marketed form, such as Active Pharmaceutical Ingredients(APIs), drugs for further processing, drugs manufactured exclusively for a private label distributor, or drugs that are marketed solely as part of a kit or combination product or inner layer of a multi-level packaged product not marketed individually. For more information about how certain kits or multi-level packaged drugs are addressed in the new NDC Directory, see the NDC Directory Package File definitions document. For the FDA Online Label Repository page and additional resources go to: [FDA Online Label Repository](https://labels.fda.gov/)"
* codes from system $FDANationalDrugCode
* ^copyright = "NDC codes have no copyright acknowledgment or license requirements."

ValueSet: FDANDCOrCompound
Title: "NDC or Compound"
Description: "Values will be the NDC Codes when the Compound Code value is 0 or 1.  When the Compound Code value = 2, the value will be the literal, ‘compound’"
* codes from system $FDANationalDrugCode
* include C4BBCompoundLiteral#compound 

// ***************************NUBC start ***********
RuleSet: AHANUBCCopyrightNotice
* ^copyright = "Licensing information can be found [here](https://www.nubc.org/license).

These codes are listed within the UB-04 Data Specifications Manual. The Official UB-04 Data Specifications Manual, copyrighted by the American Hospital Association, is the only official source of UB-04 billing information adopted by the National Uniform Billing Committee. No other publication—governmental or private/commercial—can be considered authoritative. The AHA wants to make you aware that the use of codes, descriptions, or any other content contained in the manual to be used in a software application, publication, or any other derivative work must be properly licensed by the AHA. If your organization uses or intends to use any of the codes or other related content from the manual in this manner, please contact the AHA’s licensing manager, Tim Carlson, at 312.893.6816 or email tcarlson@aha.org"

CodeSystem: AHANUBCPatientDischargeStatus
Title: "NUBC Patient Discharge Status Codes"
Description: "The UB-04 Data File contains the complete set of NUBC codes. Every code in the range of possible codes is accounted for sequentially. There are no gaps because all used and unused codes are identified.

This code system consists of the following:

*   FL 17 - Patient Discharge Status

These codes are used to convey the patient discharge status and are the property of the American Hospital Association.

To obtain the underlying code systems, please see information [here](https://www.nubc.org/subscription-information)"
* ^url = "https://www.nubc.org/CodeSystem/PatDischargeStatus"
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

ValueSet: AHANUBCPatientDischargeStatus
Title: "NUBC Patient Discharge Status Codes"
Description: "The UB-04 Data File contains the complete set of NUBC codes. Every code in the range of possible codes is accounted for sequentially. There are no gaps because all used and unused codes are identified.

This code system consists of the following:

*   FL 17 - Patient Discharge Status

These codes are used to convey the patient discharge status and are the property of the American Hospital Association.

To obtain the underlying code systems, please see information [here](https://www.nubc.org/subscription-information)"
* codes from system AHANUBCPatientDischargeStatus
* insert AHANUBCCopyrightNotice

CodeSystem: AHANUBCPresentOnAdmission
Title: "NUBC Present On Admission Indicator Codes"
Description: "The UB-04 Data File contains the complete set of NUBC codes. Every code in the range of possible codes is accounted for sequentially. There are no gaps because all used and unused codes are identified.

This code system consists of the following:

*   FL 67 - Present On Admission Indicator

These codes are used to report the principal diagnosis code (ICD-9 or ICD-10 code) and each of the secondary diagnoses.  The 8th character in that set (first 7 are ICD) is the location used to report whether or not a condition was present on admission. The present on admission code acts as a modifier and is used to further define another code, so as to say this ICD-10 code is for a condition that was/was not present on admission.  It should be noted that present on admission also appears in FL 72

To obtain the underlying code systems, please see information [here](https://www.nubc.org/subscription-information)"
* ^url = "https://www.nubc.org/CodeSystem/PresentOnAdmissionIndicator"
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

ValueSet: AHANUBCPresentOnAdmission
Title: "NUBC Present On Admission Indicator Codes"
Description: "The UB-04 Data File contains the complete set of NUBC codes. Every code in the range of possible codes is accounted for sequentially. There are no gaps because all used and unused codes are identified.

This code system consists of the following:

*   FL 67 - Present On Admission Indicator

These codes are used to report the principal diagnosis code (ICD-9 or ICD-10 code) and each of the secondary diagnoses.  The 8th character in that set (first 7 are ICD) is the location used to report whether or not a condition was present on admission. The present on admission code acts as a modifier and is used to further define another code, so as to say this ICD-10 code is for a condition that was/was not present on admission.  It should be noted that present on admission also appears in FL 72

To obtain the underlying code systems, please see information [here](https://www.nubc.org/subscription-information)"
* codes from system AHANUBCPresentOnAdmission
* insert AHANUBCCopyrightNotice

CodeSystem: AHANUBCRevenueCodes
Title: "NUBC Revenue Codes"
Description: "The UB-04 Data File contains the complete set of NUBC codes. Every code in the range of possible codes is accounted for sequentially. There are no gaps because all used and unused codes are identified.

This code system consists of the following:

*   FL 42 - Revenue Codes

These codes are used to convey the revenue code and are the property of the American Hospital Association.

To obtain the underlying code systems, please see information [here](https://www.nubc.org/subscription-information)"
* ^url = "https://www.nubc.org/CodeSystem/RevenueCodes"
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

ValueSet: AHANUBCRevenueCodes
Title: "NUBC Revenue Codes"
Description: "The UB-04 Data File contains the complete set of NUBC codes. Every code in the range of possible codes is accounted for sequentially. There are no gaps because all used and unused codes are identified.

This code system consists of the following:

*   FL 42 - Revenue Codes

These codes are used to convey the revenue code and are the property of the American Hospital Association.

To obtain the underlying code systems, please see information [here](https://www.nubc.org/subscription-information)"
* codes from system AHANUBCRevenueCodes
* insert AHANUBCCopyrightNotice

CodeSystem: AHANUBCTypeOfBill
Title: "NUBC Type Of Bill Codes"
Description: """The UB-04 Data File contains the complete set of NUBC codes. Every code in the range of possible codes is accounted for sequentially. There are no gaps because all used and unused codes are identified.

This code system consists of the following:

*   FL 04 - Type of Bill Facility Codes
*   FL 04 - Type of Bill Frequency Codes

A code indicating the specific Type of Bill (TOB), e.g., hospital inpatient, outpatient, replacements, voids, etc. The first digit is a leading zero\*. The fourth digit defines the frequency of the bill for the institutional and electronic professional claim.

Note that with the advent of UB-04, the matrix methodology of constructing the first component of TOB codes according to digit position was abandoned in favor of specifying valid discrete codes. As a result, the first three digits in TOB have no underlying meaning.

To obtain the underlying code systems, please see information [here](https://www.nubc.org/subscription-information)"""
* ^url = "https://www.nubc.org/CodeSystem/TypeOfBill"
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

ValueSet: AHANUBCTypeOfBill
Title: "NUBC Type of Bill Codes"
Description: """The UB-04 Data File contains the complete set of NUBC codes. Every code in the range of possible codes is accounted for sequentially. There are no gaps because all used and unused codes are identified.

This code system consists of the following:

*   FL 04 - Type of Bill Facility Codes
*   FL 04 - Type of Bill Frequency Codes

A code indicating the specific Type of Bill (TOB), e.g., hospital inpatient, outpatient, replacements, voids, etc. The first digit is a leading zero\*. The fourth digit defines the frequency of the bill for the institutional and electronic professional claim.

Note that with the advent of UB-04, the matrix methodology of constructing the first component of TOB codes according to digit position was abandoned in favor of specifying valid discrete codes. As a result, the first three digits in TOB have no underlying meaning.

To obtain the underlying code systems, please see information [here](https://www.nubc.org/subscription-information)"""
* codes from system AHANUBCTypeOfBill
* insert AHANUBCCopyrightNotice

CodeSystem: AHANUBCPointOfOriginForAdmissionOrVisit
Title: "NUBC Point Of Origin"
Description: "The UB-04 Data File contains the complete set of NUBC codes. Every code in the range of possible codes is accounted for sequentially. There are no gaps because all used and unused codes are identified.

This code system consists of the following:

*   FL 15 - Point of Origin for Admission or Visit 

These codes are used to convey the patient point of origin for an admission or visit and are the property of the American Hospital Association

To obtain the underlying code systems, please see information [here](https://www.nubc.org/subscription-information)"
* ^url = "https://www.nubc.org/CodeSystem/PointOfOrigin"
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

ValueSet: AHANUBCPointOfOriginForAdmissionOrVisit
Title: "NUBC Point Of Origin"
Description: "The UB-04 Data File contains the complete set of NUBC codes. Every code in the range of possible codes is accounted for sequentially. There are no gaps because all used and unused codes are identified.

This code system consists of the following:

*   FL 15 - Point of Origin for Admission or Visit 

These codes are used to convey the patient point of origin for an admission or visit and are the property of the American Hospital Association

To obtain the underlying code systems, please see information [here](https://www.nubc.org/subscription-information)"
* codes from system AHANUBCPointOfOriginForAdmissionOrVisit
* insert AHANUBCCopyrightNotice

CodeSystem: AHANUBCPriorityTypeOfAdmissionOrVisit
Title: "NUBC Priority (Type) of Admission or Visit"
Description: "The UB-04 Data File contains the complete set of NUBC codes. Every code in the range of possible codes is accounted for sequentially. There are no gaps because all used and unused codes are identified.

This code system consists of the following:

*   FL 14 - Priority (Type) of Admission or Visit

These codes are used to convey the priority of an admission or visit and are the property of the American Hospital Association.

To obtain the underlying code systems, please see information [here](https://www.nubc.org/subscription-information)"
* ^url = "https://www.nubc.org/CodeSystem/PriorityTypeOfAdmitOrVisit"
* insert CodeSystemStubBoilerplate
* insert AHANUBCCopyrightNotice

ValueSet: AHANUBCPriorityTypeOfAdmissionOrVisit
Title: "NUBC Priority (Type) of Admission or Visit"
Description: "The UB-04 Data File contains the complete set of NUBC codes. Every code in the range of possible codes is accounted for sequentially. There are no gaps because all used and unused codes are identified.

This code system consists of the following:

*   FL 14 - Priority (Type) of Admission or Visit

These codes are used to convey the priority of an admission or visit and are the property of the American Hospital Association.

To obtain the underlying code systems, please see information [here](https://www.nubc.org/subscription-information)"
* codes from system AHANUBCPriorityTypeOfAdmissionOrVisit
* insert AHANUBCCopyrightNotice

//********start: AMA / HCPCS************

RuleSet: AMACopyrightNotice
* ^copyright = "CPT is copyrighted by the AMA and as such must be licensed to be used in electronic products or other forms.

Any individual or entity using CPT content needs permission or a license (i.e., a written agreement authorizing use of CPT codes) from the AMA or an authorized distributor. 

 Examples where a license and royalty payment are required (not an exhaustive list):

*   Use of CPT content to develop, test, maintain, and service products that use or rely on CPT
*   Use of CPT content in products that are licensed or distributed by a vendor, company or other third party
*   Distribution of products that require use of CPT content
*   Any proposed use of CPT content including the creation of derivative works of CPT content, translations or localized versions of CPT content

For more information see [here](https://www.ama-assn.org/practice-management/cpt/ama-cpt-licensing-overview) 

If you have a question or would like to license CPT content,  please see [here](http://info.commerce.ama-assn.org/ama-data-file-request-2020).

Any HL7 product referencing CPT must include the following verbiage:

CPT © Copyright 2019 American Medical Association. All rights reserved. AMA and CPT are registered trademarks of the American Medical Association.

Note: the year is always based on the publication year of the code set. CPT releases the August prior to the effective year (e.g., CPT 2020 code set = copyright 2019 or CPT 2021 code set = copyright 2020)."

RuleSet: HCPCSCopyrightNotice
* ^copyright = "See information on the use of HCPCS Level I (proprietary and owned by American Medical Association) and Level II codes [here](https://www.cms.gov/Medicare/Coding/MedHCPCSGenInfo/HCPCS_Coding_Questions)"



CodeSystem: CMSHCPCSCodes
Title: "Healthcare Common Procedure Coding System (HCPCS) level II alphanumeric codes"
Description: "The Level II HCPCS codes, which are established by CMS's Alpha-Numeric Editorial Panel, primarily represent items and supplies and non-physician services not covered by the American Medical Association's Current Procedural Terminology-4 (CPT-4) codes; Medicare, Medicaid, and private health insurers use HCPCS procedure and modifier codes for claims processing.  Level II alphanumeric procedure and modifier codes comprise the A to V range.

General information can be found here: [https://www.cms.gov/Medicare/Coding/MedHCPCSGenInfo](https://www.cms.gov/Medicare/Coding/MedHCPCSGenInfo)

Releases can be found here: [https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets](https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets)

These files contain the Level II alphanumeric HCPCS procedure and modifier codes, their long and short descriptions, and applicable Medicare administrative, coverage and pricing data."
* ^url =  "http://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets"
* insert CodeSystemStubBoilerplate
* insert HCPCSCopyrightNotice

ValueSet: AMACPTCMSHCPCSProcedureCodes
Title: "Current Procedural Terminology (CPT) -  Healthcare Common Procedure Coding System (HCPCS) level II alphanumeric codes - Procedure Codes"
Description: "The Value Set is a combination of two code systems: CPT (HCPCS I) and HCPCS II procedure codes. They are submitted by providers to payers to convey the specific procedure performed. Procedure Codes leverage US Core Procedure Codes composition. The target set for this value set are the procedure codes from the CPT and HCPCS files. The Current Procedural Terminology (CPT) code set, created and maintained by the American Medical Association, is the language of medicine today and the code to its future. This system of terminology is the most widely accepted medical nomenclature used to report medical procedures and services under public and private health insurance programs. CPT coding is also used for administrative management purposes such as claims processing and developing guidelines for medical care review. Each year, via a rigorous, evidence-based and transparent process, the independent CPT Editorial Panel revises, creates or deletes hundreds of codes in order to reflect current medical practice. The Current Procedural Terminology (CPT) code set, created and maintained by the American Medical Association, is the language of medicine today and the code to its future. This system of terminology is the most widely accepted medical nomenclature used to report medical procedures and services under public and private health insurance programs. CPT coding is also used for administrative management purposes such as claims processing and developing guidelines for medical care review. Each year, via a rigorous, evidence-based and transparent process, the independent CPT Editorial Panel revises, creates or deletes hundreds of codes in order to reflect current medical practice.

Designated by the U.S. Department of Health and Human Services under the Health Insurance Portability and Accountability Act (HIPAA) as a national coding set for physician and other health care professional services and procedures, CPT’s evidence-based codes accurately encompass the full range of health care services.

All CPT codes are five-digits and can be either numeric or alphanumeric, depending on the category. CPT code descriptors are clinically focused and utilize common standards so that a diverse set of users can have common understanding across the clinical health care paradigm.

There are various types of CPT codes:

**Category I:** These codes have descriptors that correspond to a procedure or service. Codes range from 00100–99499 and are generally ordered into sub-categories based on procedure/service type and anatomy.

**Category II:** These alphanumeric tracking codes are supplemental codes used for performance measurement. Using them is optional and not required for correct coding.

**Category III:** These are temporary alphanumeric codes for new and developing technology, procedures and services. They were created for data collection, assessment and in some instances, payment of new services and procedures that currently don’t meet the criteria for a Category I code.

**Proprietary Laboratory Analyses (PLA) codes:** Recently added to the CPT code set, these codes describe proprietary clinical laboratory analyses and can be either provided by a single (solesource) laboratory or licensed or marketed to multiple providing laboratories that are cleared or approved by the Food and Drug Administration (FDA)). This category includes but is not limited to Advanced Diagnostic Laboratory Tests (ADLTs) and Clinical Diagnostic Laboratory Tests (CDLTs), as defined under the Protecting Access to Medicare Act of 2014 (PAMA).

To obtain CPT, please see the license request form [here](http://info.commerce.ama-assn.org/ama-data-file-request-2020)

The Level II HCPCS codes, which are established by CMS's Alpha-Numeric Editorial Panel, primarily represent items and supplies and non-physician services not covered by the American Medical Association's Current Procedural Terminology-4 (CPT-4) codes; Medicare, Medicaid, and private health insurers use HCPCS procedure and modifier codes for claims processing.  Level II alphanumeric procedure and modifier codes comprise the A to V range.

General information can be found here: [https://www.cms.gov/Medicare/Coding/MedHCPCSGenInfo](https://www.cms.gov/Medicare/Coding/MedHCPCSGenInfo)

Releases can be found here: [https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets](https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets)

These files contain the Level II alphanumeric HCPCS procedure and modifier codes, their long and short descriptions, and applicable Medicare administrative, coverage and pricing data."
* codes from system $CPT
* codes from system CMSHCPCSCodes
* ^copyright = "CPT is copyrighted by the AMA and as such must be licensed to be used in electronic products or other forms.

Any individual or entity using CPT content needs permission or a license (i.e., a written agreement authorizing use of CPT codes) from the AMA or an authorized distributor. 

 Examples where a license and royalty payment are required (not an exhaustive list):

*   Use of CPT content to develop, test, maintain, and service products that use or rely on CPT
*   Use of CPT content in products that are licensed or distributed by a vendor, company or other third party
*   Distribution of products that require use of CPT content
*   Any proposed use of CPT content including the creation of derivative works of CPT content, translations or localized versions of CPT content

For more information see [here](https://www.ama-assn.org/practice-management/cpt/ama-cpt-licensing-overview) 

If you have a question or would like to license CPT content,  please see [here](http://info.commerce.ama-assn.org/ama-data-file-request-2020).

Any HL7 product referencing CPT must include the following verbiage:

CPT © Copyright 2019 American Medical Association. All rights reserved. AMA and CPT are registered trademarks of the American Medical Association.

Note: the year is always based on the publication year of the code set. CPT releases the August prior to the effective year (e.g., CPT 2020 code set = copyright 2019 or CPT 2021 code set = copyright 2020).

See information on the use of HCPCS Level I (proprietary and owned by American Medical Association) and Level II codes [here](https://www.cms.gov/Medicare/Coding/MedHCPCSGenInfo/HCPCS_Coding_Questions)"


ValueSet:  AMACPTCMSHCPCSModifiers
Title: "Current Procedural Terminology (CPT) -  Healthcare Common Procedure Coding System (HCPCS) level II alphanumeric codes - Procedure Modifier Codes" 
Description: "The Value Set is a combination of two Code Systems: CPT (HCPCS I) and HCPCS II procedure code modifiers. Modifiers help further describe a procedure code without changing its definition.  
The target set for this value set are the procedure code modifiers from the CPT and HCPCS files.

The Current Procedural Terminology (CPT) code set, created and maintained by the American Medical Association, is the language of medicine today and the code to its future. This system of terminology is the most widely accepted medical nomenclature used to report medical procedures and services under public and private health insurance programs. CPT coding is also used for administrative management purposes such as claims processing and developing guidelines for medical care review. Each year, via a rigorous, evidence-based and transparent process, the independent CPT Editorial Panel revises, creates or deletes hundreds of codes in order to reflect current medical practice.

Designated by the U.S. Department of Health and Human Services under the Health Insurance Portability and Accountability Act (HIPAA) as a national coding set for physician and other health care professional services and procedures, CPT’s evidence-based codes accurately encompass the full range of health care services.

All CPT codes are five-digits and can be either numeric or alphanumeric, depending on the category. CPT code descriptors are clinically focused and utilize common standards so that a diverse set of users can have common understanding across the clinical health care paradigm.

There are various types of CPT codes:

**Category I:** These codes have descriptors that correspond to a procedure or service. Codes range from 00100–99499 and are generally ordered into sub-categories based on procedure/service type and anatomy.

**Category II:** These alphanumeric tracking codes are supplemental codes used for performance measurement. Using them is optional and not required for correct coding.

**Category III:** These are temporary alphanumeric codes for new and developing technology, procedures and services. They were created for data collection, assessment and in some instances, payment of new services and procedures that currently don’t meet the criteria for a Category I code.

**Proprietary Laboratory Analyses (PLA) codes:** Recently added to the CPT code set, these codes describe proprietary clinical laboratory analyses and can be either provided by a single (solesource) laboratory or licensed or marketed to multiple providing laboratories that are cleared or approved by the Food and Drug Administration (FDA)). This category includes but is not limited to Advanced Diagnostic Laboratory Tests (ADLTs) and Clinical Diagnostic Laboratory Tests (CDLTs), as defined under the Protecting Access to Medicare Act of 2014 (PAMA).

To obtain CPT, please see the license request form [here](http://info.commerce.ama-assn.org/ama-data-file-request-2020)

The Level II HCPCS codes, which are established by CMS's Alpha-Numeric Editorial Panel, primarily represent items and supplies and non-physician services not covered by the American Medical Association's Current Procedural Terminology-4 (CPT-4) codes; Medicare, Medicaid, and private health insurers use HCPCS procedure and modifier codes for claims processing.  Level II alphanumeric procedure and modifier codes comprise the A to V range.

General information can be found here: [https://www.cms.gov/Medicare/Coding/MedHCPCSGenInfo](https://www.cms.gov/Medicare/Coding/MedHCPCSGenInfo)

Releases can be found here: [https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets](https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets)

These files contain the Level II alphanumeric HCPCS procedure and modifier codes, their long and short descriptions, and applicable Medicare administrative, coverage and pricing data."
* codes from system $CPT
* codes from system CMSHCPCSCodes
* ^copyright = "CPT is copyrighted by the AMA and as such must be licensed to be used in electronic products or other forms.

Any individual or entity using CPT content needs permission or a license (i.e., a written agreement authorizing use of CPT codes) from the AMA or an authorized distributor. 

 Examples where a license and royalty payment are required (not an exhaustive list):

*   Use of CPT content to develop, test, maintain, and service products that use or rely on CPT
*   Use of CPT content in products that are licensed or distributed by a vendor, company or other third party
*   Distribution of products that require use of CPT content
*   Any proposed use of CPT content including the creation of derivative works of CPT content, translations or localized versions of CPT content

For more information see [here](https://www.ama-assn.org/practice-management/cpt/ama-cpt-licensing-overview) 

If you have a question or would like to license CPT content,  please see [here](http://info.commerce.ama-assn.org/ama-data-file-request-2020).

Any HL7 product referencing CPT must include the following verbiage:

CPT © Copyright 2019 American Medical Association. All rights reserved. AMA and CPT are registered trademarks of the American Medical Association.

Note: the year is always based on the publication year of the code set. CPT releases the August prior to the effective year (e.g., CPT 2020 code set = copyright 2019 or CPT 2021 code set = copyright 2020).

See information on the use of HCPCS Level I (proprietary and owned by American Medical Association) and Level II codes [here](https://www.cms.gov/Medicare/Coding/MedHCPCSGenInfo/HCPCS_Coding_Questions)"

// ******** DRGs ***************

CodeSystem: CMSMSDRG
Title: "Medicare Severity Diagnosis Related Groups (MS-DRGs)"
Description: "Section 1886(d) of the Act specifies that the Secretary shall establish a classification system (referred to as DRGs) for inpatient discharges and adjust payments under the IPPS based on appropriate weighting factors assigned to each DRG.  Therefore, under the IPPS, we pay for inpatient hospital services on a rate per discharge basis that varies according to the DRG to which a beneficiary's stay is assigned. The formula used to calculate payment for a specific case multiplies an individual hospital's payment rate per case by the weight of the DRG to which the case is assigned.  Each DRG weight represents the average resources required to care for cases in that particular DRG, relative to the average resources used to treat cases in all DRGs.

Congress recognized that it would be necessary to recalculate the DRG relative weights periodically to account for changes in resource consumption.  Accordingly, section 1886(d)(4)(C) of the Act requires that the Secretary adjust the DRG classifications and relative weights at least annually.  These adjustments are made to reflect changes in treatment patterns, technology, and any other factors that may change the relative use of hospital resources.

Currently, cases are classified into Medicare Severity Diagnosis Related Groups (MS-DRGs) for payment under the IPPS based on the following information reported by the hospital: the principal diagnosis, up to 25 additional diagnoses, and up to 25 procedures performed during the stay.  In a small number of MS-DRGs, classification is also based on the age, sex, and discharge status of the patient.  Effective October 1, 2015, the diagnosis and procedure information is reported by the hospital using codes from the International Classification of Diseases, Tenth Revision, Clinical Modification (ICD-10-CM) and the International Classification of Diseases, Tenth Revision, Procedure Coding System (ICD-10-PCS).

Content can be obtained on the CMS hosted page located [here](https://www.cms.gov/Medicare/Medicare-Fee-for-Service-Payment/AcuteInpatientPPS/MS-DRG-Classifications-and-Software)"
* ^url = "https://www.cms.gov/Medicare/Medicare-Fee-for-Service-Payment/AcuteInpatientPPS/MS-DRG-Classifications-and-Software"
* insert CodeSystemStubBoilerplate
* ^copyright = "The Centers for Medicare & Medicaid Services (CMS) maintain MS-DRGs used throughout the US health care industry. The CMS MS-DRGs are free to use without restriction."


CodeSystem: THREEMAPDRG
Title: "All Patient Diagnosis Related Groups (APR-DRGs)"
Description: "In 1987, the state of New York passed legislation instituting a DRG-based prospective payment system for all non-Medicare patients. The legislation included a requirement that the New York State Department of Health (NYDH) evaluate the applicability of the DRGs to a non-Medicare population. In particular, the legislation required that the DRGs be evaluated with respect to neonates and patients with Human Immunodeficiency Virus (HIV) infections. NYDH entered into an agreement with 3M HIS to assist with the evaluation of the need for DRG modifications as well as to make the necessary changes in the DRG definitions and software. The DRG definitions developed by NYDH and 3M HIS are referred to as the All Patient DRGs (AP-DRGs).

As the AP-DRG code system is no longer in use and little authoratative information is available, the following resources have been used to compile the documented information

[https://www.hcup-us.ahrq.gov/db/nation/nis/APR-DRGsV20MethodologyOverviewandBibliography.pdf](https://www.hcup-us.ahrq.gov/db/nation/nis/APR-DRGsV20MethodologyOverviewandBibliography.pdf)

_**Note: A temporary URL has been defined for this codesystem for use in draft implementation guides. It should be noted that the authoritative canonical URL will be different.**_"
* ^url = "http://terminology.hl7.org/temporary-uri/codeSystem/APDRG"
* insert CodeSystemStubBoilerplate
* ^copyright = "Use of AP-DRGs require a license.  Reference https://www.3m.com/3M/en_US/health-information-systems-us/drive-value-based-care/patient-classification-methodologies/apr-drgs/.   As HL7 is working with the owning authorities to finalize the urls, the urls are subject to change."

CodeSystem: THREEMAPRDRG
Title: "All Patient Refined Diagnosis Related Groups (APR-DRGs)"
Description: "3M APR DRGs have become the standard across the U.S. for classifying hospital inpatients in non-Medicare populations. As of January 2019, 27 state Medicaid programs use 3M APR DRGs to pay hospitals, as do approximately a dozen commercial payers and Medicaid managed care organizations. Over 2,400 hospitals have licensed 3M APR DRGs to verify payment and analyze their internal operations.

The 3M APR DRG methodology classifies hospital inpatients according to their reason for admission, severity of illness and risk of mortality.

Each year 3M calculates and releases a set of statistics for each 3M APR DRG based on our analysis of large national data sets. These statistics include a relative weight for each 3M APR DRG. The relative weight reflects the average hospital resource use for a patient in that 3M APR DRG relative to the average hospital resource use of all inpatients. Please note that payers and other users of the 3M APR DRG methodology are responsible for ensuring that they use relative weights that are appropriate for their particular populations. The 3M APR DRG statistics also include data for each 3M APR DRG on relative frequency, average length of stay, average charges and incidence of mortality.

3M APR DRGs can be rolled up into broader categories. The 326 base DRGs roll up into 25 major diagnostic categories (MDCs) plus a pre-MDC category. An example is MDC 04, Diseases and Disorders of the Respiratory System. As well, each 3M APR DRG is assigned to a service line that is consistent with the outpatient service lines that are defined by the 3M™ Enhanced Ambulatory Patient Groups (EAPGs).

A link to information about the code system - including how to obtain the content from 3M is provided [here.](https://www.3m.com/3M/en_US/health-information-systems-us/drive-value-based-care/patient-classification-methodologies/apr-drgs/). Identifying a DRG code requires a version.

_**Note: A temporary URL has been defined for this codesystem for use in draft implementation guides. It should be noted that the authoritative canonical URL will be different.**_"
* ^url = "http://terminology.hl7.org/temporary-uri/codeSystem/3M/APRDRG"
* insert CodeSystemStubBoilerplate
* ^copyright = "The clinical logic is maintained by a team of 3M clinicians, data analysts, nosologists, programmers and economists. The logic is proprietary to 3M but is available for licensees to view in an online definitions manual.

To license APR-DRGs from 3M, see request form [here](https://engage.3m.com/PPS_Groupers_Contact)"


ValueSet: CMSMS3MAPAPRDRG 
Title: "MS-DRGs - AP-DRGs - APR-DRGs"
Description: "This value set defines three sets of DRGs, MS-DRGs (Medicare Severity Diagnosis Related Groups), APR-DRGs (All Patient Refined Diagnosis Related Groups) and AP-DRGs (All Patient Diagnosis Related Groups). 

**MS-DRGs**

Section 1886(d) of the Act specifies that the Secretary shall establish a classification system (referred to as DRGs) for inpatient discharges and adjust payments under the IPPS based on appropriate weighting factors assigned to each DRG.  Therefore, under the IPPS, we pay for inpatient hospital services on a rate per discharge basis that varies according to the DRG to which a beneficiary's stay is assigned. The formula used to calculate payment for a specific case multiplies an individual hospital's payment rate per case by the weight of the DRG to which the case is assigned.  Each DRG weight represents the average resources required to care for cases in that particular DRG, relative to the average resources used to treat cases in all DRGs.

Congress recognized that it would be necessary to recalculate the DRG relative weights periodically to account for changes in resource consumption.  Accordingly, section 1886(d)(4)(C) of the Act requires that the Secretary adjust the DRG classifications and relative weights at least annually.  These adjustments are made to reflect changes in treatment patterns, technology, and any other factors that may change the relative use of hospital resources.

Currently, cases are classified into Medicare Severity Diagnosis Related Groups (MS-DRGs) for payment under the IPPS based on the following information reported by the hospital: the principal diagnosis, up to 25 additional diagnoses, and up to 25 procedures performed during the stay.  In a small number of MS-DRGs, classification is also based on the age, sex, and discharge status of the patient.  Effective October 1, 2015, the diagnosis and procedure information is reported by the hospital using codes from the International Classification of Diseases, Tenth Revision, Clinical Modification (ICD-10-CM) and the International Classification of Diseases, Tenth Revision, Procedure Coding System (ICD-10-PCS).

Content can be obtained on the CMS hosted page located [here](https://www.cms.gov/Medicare/Medicare-Fee-for-Service-Payment/AcuteInpatientPPS/MS-DRG-Classifications-and-Software)

**APR-DRGs**

3M APR DRGs have become the standard across the U.S. for classifying hospital inpatients in non-Medicare populations. As of January 2019, 27 state Medicaid programs use 3M APR DRGs to pay hospitals, as do approximately a dozen commercial payers and Medicaid managed care organizations. Over 2,400 hospitals have licensed 3M APR DRGs to verify payment and analyze their internal operations.

The 3M APR DRG methodology classifies hospital inpatients according to their reason for admission, severity of illness and risk of mortality.

Each year 3M calculates and releases a set of statistics for each 3M APR DRG based on our analysis of large national data sets. These statistics include a relative weight for each 3M APR DRG. The relative weight reflects the average hospital resource use for a patient in that 3M APR DRG relative to the average hospital resource use of all inpatients. Please note that payers and other users of the 3M APR DRG methodology are responsible for ensuring that they use relative weights that are appropriate for their particular populations. The 3M APR DRG statistics also include data for each 3M APR DRG on relative frequency, average length of stay, average charges and incidence of mortality.

3M APR DRGs can be rolled up into broader categories. The 326 base DRGs roll up into 25 major diagnostic categories (MDCs) plus a pre-MDC category. An example is MDC 04, Diseases and Disorders of the Respiratory System. As well, each 3M APR DRG is assigned to a service line that is consistent with the outpatient service lines that are defined by the 3M™ Enhanced Ambulatory Patient Groups (EAPGs).

A link to information about the code system - including how to obtain the content from 3M is provided [here.](https://www.3m.com/3M/en_US/health-information-systems-us/drive-value-based-care/patient-classification-methodologies/apr-drgs/)

**AP-DRGs**

In 1987, the state of New York passed legislation instituting a DRG-based prospective payment system for all non-Medicare patients. The legislation included a requirement that the New York State Department of Health (NYDH) evaluate the applicability of the DRGs to a non-Medicare population. In particular, the legislation required that the DRGs be evaluated with respect to neonates and patients with Human Immunodeficiency Virus (HIV) infections. NYDH entered into an agreement with 3M HIS to assist with the evaluation of the need for DRG modifications as well as to make the necessary changes in the DRG definitions and software. The DRG definitions developed by NYDH and 3M HIS are referred to as the All Patient DRGs (AP-DRGs).

As the AP-DRG code system is no longer in use and little authoratative information is available, the following resources have been used to compile the documented information

[https://www.hcup-us.ahrq.gov/db/nation/nis/APR-DRGsV20MethodologyOverviewandBibliography.pdf](https://www.hcup-us.ahrq.gov/db/nation/nis/APR-DRGsV20MethodologyOverviewandBibliography.pdf)

_**Note: Temporary URLs have been defined for the APR-DRGs and AP-DRGs for use in draft implementation guides. It should be noted that the authoritative canonical URL will be different.**_"

* codes from system CMSMSDRG
* codes from system THREEMAPDRG
* codes from system THREEMAPRDRG
* ^copyright = "The Centers for Medicare & Medicaid Services (CMS) maintain MS-DRGs used throughout the US health care industry. The CMS MS-DRGs are free to use without restriction.

The APR-DRG clinical logic is maintained by a team of 3M clinicians, data analysts, nosologists, programmers and economists. The logic is proprietary to 3M but is available for licensees to view in an online definitions manual.

To license APR-DRGs from 3M, see request form [here](https://engage.3m.com/PPS_Groupers_Contact)."

// ******** Place of Service ***************
CodeSystem: CMSPlaceofServiceCodes
Title: "CMS Place of Service Codes (POS)"
Description: "Place of Service Codes are two-digit codes placed on health care professional claims to indicate the setting in which a service was provided. The Centers for Medicare & Medicaid Services (CMS) maintain POS codes used throughout the health care industry.

This code set is required for use in the implementation guide adopted as the national standard for electronic transmission of professional health care claims under the provisions of the Health Insurance Portability and Accountability Act of 1996 (HIPAA). HIPAA directed the Secretary of HHS to adopt national standards for electronic transactions. These standard transactions require all health plans and providers to use standard code sets to populate data elements in each transaction. The Transaction and Code Set Rule adopted the ASC X12N-837 Health Care Claim: Professional, volumes 1 and 2, version 4010, as the standard for electronic submission of professional claims. This standard names the POS code set currently maintained by CMS as the code set to be used for describing sites of service in such claims. POS information is often needed to determine the acceptability of direct billing of Medicare, Medicaid and private insurance services provided by a given provider.

Current codes can be obtained [here](https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set)"
* ^url = "https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set"
* insert CodeSystemStubBoilerplate
* ^copyright = "The Centers for Medicare & Medicaid Services (CMS) maintain Place Of Service (POS) codes used throughout the US health care industry. The CMS POS codes are free to use without restriction."

ValueSet: CMSPlaceofServiceCodes
Title: "CMS Place of Service Codes (POS)"
Description: "Place of Service Codes are two-digit codes placed on health care professional claims to indicate the setting in which a service was provided. The Centers for Medicare & Medicaid Services (CMS) maintain POS codes used throughout the health care industry.

This code set is required for use in the implementation guide adopted as the national standard for electronic transmission of professional health care claims under the provisions of the Health Insurance Portability and Accountability Act of 1996 (HIPAA). HIPAA directed the Secretary of HHS to adopt national standards for electronic transactions. These standard transactions require all health plans and providers to use standard code sets to populate data elements in each transaction. The Transaction and Code Set Rule adopted the ASC X12N-837 Health Care Claim: Professional, volumes 1 and 2, version 4010, as the standard for electronic submission of professional claims. This standard names the POS code set currently maintained by CMS as the code set to be used for describing sites of service in such claims. POS information is often needed to determine the acceptability of direct billing of Medicare, Medicaid and private insurance services provided by a given provider.

Current codes can be obtained [here](https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set)"
* codes from system CMSPlaceofServiceCodes
* ^copyright = "The Centers for Medicare & Medicaid Services (CMS) maintain Place Of Service (POS) codes used throughout the US health care industry. The CMS POS codes are free to use without restriction."

// ******** CARCs / RARCs ***************

//  *** @ Saul - No change to CodeSystem CARCs ; RARCs are new
CodeSystem: X12ClaimAdjustmentReasonCodes
Title: "X12 Claim Adjustment Reason Codes"
Description: "X12, chartered by the American National Standards Institute for more than 40 years, develops and maintains EDI standards and XML schemas which drive business processes globally. X12's diverse membership includes technologists and business process experts in health care, insurance, transportation, finance, government, supply chain and other industries.

The X12 Claim Adjustment Reason Codes describe why a claim or service line was paid differently than it was billed. . These codes are listed within an X12 implementation guide (TR3) and maintained by X12.

External code lists maintained by X12 and external code lists maintained by others and distributed by WPC on behalf of the maintainer can be found here:

[https://x12.org/codes](https://x12.org/codes)

Click on the name of any external code list to access more information about the code list, view the codes, or submit a maintenance request. These external code lists were previously published on either [www.wpc-edi.com/reference](http://www.wpc-edi.com/reference) or [www.x12.org/codes](http://www.x12.org/codes)."
* ^url = "https://x12.org/codes/claim-adjustment-reason-codes"
* insert CodeSystemStubBoilerplate
* ^copyright = "**Intellectual Property Information**

All X12 products are subject to this IP policy, including published and draft works.

X12 is the only organization authorized to grant permission for use of X12 products. Users of all X12 products should make sure that they understand the permissible uses, as well as the limitations on such usage, as outlined below.

Additional IP information can be found here: [https://x12.org/products/ip-use](https://x12.org/products/ip-use)

**Licensing Information**

Send an email to ip@x12.org to request permission to reproduce X12 IP. Include your name, organization, title, address, city, state, zip, email, a detailed description of the Submitted Artifact, including the underlying or cited X12 Product, and a detailed description of the intended audience and planned distribution method for the Artifact.

Additional information on X12 licensing program can be found here:

[https://x12.org/products/licensing-program](https://x12.org/products/licensing-program)

**Purchasing Information:**

To purchase code list subscriptions call (425) 562-2245 or email admin@wpc-edi.com."

CodeSystem: CMSRemittanceAdviceRemarkCodes
Title: "X12 Remittance Advice Remark Codes"
Description: "X12, chartered by the American National Standards Institute for more than 40 years, develops and maintains EDI standards and XML schemas which drive business processes globally. X12's diverse membership includes technologists and business process experts in health care, insurance, transportation, finance, government, supply chain and other industries.

Remittance Advice Remark Codes (RARCs) are used to provide additional explanation for an adjustment already described by a Claim Adjustment Reason Code (CARC) or to convey information about remittance processing.

Each RARC identifies a specific message as shown in the Remittance Advice Remark Code List. There are two types of RARCs, supplemental and informational. The majority of the RARCs are supplemental; these are generally referred to as RARCs without further distinction. Supplemental RARCs provide additional explanation for an adjustment already described by a CARC. The second type of RARC is informational; these RARCs are all prefaced with Alert: and are often referred to as Alerts. Alerts are used to convey information about remittance processing and are never related to a specific adjustment or CARC.

External code lists maintained by X12 and external code lists maintained by others and distributed by WPC on behalf of the maintainer, including the RARC codes. Can be found here:

[https://x12.org/codes](https://x12.org/codes)

Click on the name of any external code list to access more information about the code list, view the codes, or submit a maintenance request. These external code lists were previously published on either [www.wpc-edi.com/reference](http://www.wpc-edi.com/reference) or [www.x12.org/codes](http://www.x12.org/codes)."  
* ^url = "https://x12.org/codes/remittance-advice-remark-codes" 
* insert CodeSystemStubBoilerplate
* ^copyright = "**Intellectual Property Information**

All X12 products are subject to this IP policy, including published and draft works.

X12 is the only organization authorized to grant permission for use of X12 products. Users of all X12 products should make sure that they understand the permissible uses, as well as the limitations on such usage, as outlined below.

Additional IP information can be found here: [https://x12.org/products/ip-use](https://x12.org/products/ip-use)

**Licensing Information**

Send an email to ip@x12.org to request permission to reproduce X12 IP. Include your name, organization, title, address, city, state, zip, email, a detailed description of the Submitted Artifact, including the underlying or cited X12 Product, and a detailed description of the intended audience and planned distribution method for the Artifact.

Additional information on X12 licensing program can be found here:

[https://x12.org/products/licensing-program](https://x12.org/products/licensing-program)

**Purchasing Information:**

To purchase code list subscriptions call (425) 562-2245 or email admin@wpc-edi.com."


ValueSet: X12ClaimAdjustmentReasonCodesCMSRemittanceAdviceRemarkCodes
Title: "X12 Claim Adjustment Reason Codes - Remittance Advice Remark Codes"
Description: "X12, chartered by the American National Standards Institute for more than 40 years, develops and maintains EDI standards and XML schemas which drive business processes globally. X12's diverse membership includes technologists and business process experts in health care, insurance, transportation, finance, government, supply chain and other industries.

The X12 Claim Adjustment Reason Codes describe why a claim or service line was paid differently than it was billed. . These codes are listed within an X12 implementation guide (TR3) and maintained by X12.

Remittance Advice Remark Codes (RARCs) are used to provide additional explanation for an adjustment already described by a Claim Adjustment Reason Code (CARC) or to convey information about remittance processing.

Each RARC identifies a specific message as shown in the Remittance Advice Remark Code List. There are two types of RARCs, supplemental and informational. The majority of the RARCs are supplemental; these are generally referred to as RARCs without further distinction. Supplemental RARCs provide additional explanation for an adjustment already described by a CARC. The second type of RARC is informational; these RARCs are all prefaced with Alert: and are often referred to as Alerts. Alerts are used to convey information about remittance processing and are never related to a specific adjustment or CARC.

External code lists maintained by X12 and external code lists maintained by others and distributed by WPC on behalf of the maintainer can be found here:

[https://x12.org/codes](https://x12.org/codes)

Click on the name of any external code list to access more information about the code list, view the codes, or submit a maintenance request. These external code lists were previously published on either [www.wpc-edi.com/reference](http://www.wpc-edi.com/reference) or [www.x12.org/codes](http://www.x12.org/codes)."
* codes from system X12ClaimAdjustmentReasonCodes 
* codes from system CMSRemittanceAdviceRemarkCodes 
* ^copyright = "**Intellectual Property Information**

All X12 products are subject to this IP policy, including published and draft works.

X12 is the only organization authorized to grant permission for use of X12 products. Users of all X12 products should make sure that they understand the permissible uses, as well as the limitations on such usage, as outlined below.

Additional IP information can be found here: [https://x12.org/products/ip-use](https://x12.org/products/ip-use)

**Licensing Information**

Send an email to ip@x12.org to request permission to reproduce X12 IP. Include your name, organization, title, address, city, state, zip, email, a detailed description of the Submitted Artifact, including the underlying or cited X12 Product, and a detailed description of the intended audience and planned distribution method for the Artifact.

Additional information on X12 licensing program can be found here:

[https://x12.org/products/licensing-program](https://x12.org/products/licensing-program)

**Purchasing Information:**

To purchase code list subscriptions call (425) 562-2245 or email admin@wpc-edi.com

The Centers for Medicare & Medicaid Services (CMS) maintain Remittance Advice Remark Codes (RARC) used throughout the US health care industry."


//  ********* ICD diagnosis codes / procedure codes

RuleSet: ICD9CopyrightNotice
* ^copyright = "The following requirements must be followed to utilize CDC’s public domain content:

1) Attribution to the agency that developed the material must be provided in your use of the materials. Such attribution should clearly state the materials were developed by CDC ATSDR and/or HHS (e.g., Source: CDC; Materials developed by CDC);

2) You must utilize a disclaimer which clearly indicates that your use of the material, including any links to the materials on the CDC, ATSDR or HHS websites, does not imply endorsement by CDC, ATSDR, HHS or the United States Government of you, your company, product, facility, service or enterprise. All such disclaimers must be prominently and unambiguously displayed (e.g., Reference to specific commercial products, manufacturers, companies, or trademarks does not constitute its endorsement or recommendation by the U.S. Government, Department of Health and Human Services, or Centers for Disease Control and Prevention;

3) You may not change the substantive content of the materials; and

4) You must state that the material is otherwise available on the agency website for no charge.

For information on NCHS agency level use of materials see [here](https://www.cdc.gov/other/agencymaterials.html)."

RuleSet: ICD10CMCopyrightNotice
* ^copyright = "The ICD-10 is copyrighted by the [World Health Organization (WHO)external icon](http://www.who.int/classifications/icd/en/), which owns and publishes the classification. WHO has authorized the development of an adaptation of ICD-10 for use in the United States for U.S. government purposes. As agreed, all modifications to the ICD-10 must conform to WHO conventions for the ICD. ICD-10-CM was developed following a thorough evaluation by a Technical Advisory Panel and extensive additional consultation with physician groups, clinical coders, and others to assure clinical accuracy and utility.

The following requirements must be followed to utilize CDC’s public domain content:

1) Attribution to the agency that developed the material must be provided in your use of the materials. Such attribution should clearly state the materials were developed by CDC ATSDR and/or HHS (e.g., Source: CDC; Materials developed by CDC);

2) You must utilize a disclaimer which clearly indicates that your use of the material, including any links to the materials on the CDC, ATSDR or HHS websites, does not imply endorsement by CDC, ATSDR, HHS or the United States Government of you, your company, product, facility, service or enterprise. All such disclaimers must be prominently and unambiguously displayed (e.g., Reference to specific commercial products, manufacturers, companies, or trademarks does not constitute its endorsement or recommendation by the U.S. Government, Department of Health and Human Services, or Centers for Disease Control and Prevention;

3) You may not change the substantive content of the materials; and

4) You must state that the material is otherwise available on the agency website for no charge.

For information on NCHS agency level use of materials see [here](https://www.cdc.gov/other/agencymaterials.html)."


//  ******* ICD ********


ValueSet: CDCICD910CMDiagnosisCodes 
Title: "Diagnosis Codes - International Classification of Diseases, Clinical Modification (ICD-9-CM, ICD-10-CM)"
Description: "The Value Set is a combination of values from volume 1 and volume 2 from the Code System International Classification of Diseases, Ninth Revision, Clinical Modification (ICD-9-CM) and values in the Code System International Classification of Diseases, Tenth Revision, Clinical Modification (ICD-10-CM)

The International Classification of Diseases, Ninth Revision, Clinical Modification (ICD-9-CM) is based on the World Health Organization’s Ninth Revision, International Classification of Diseases (ICD-9). ICD-9-CM was the official system of assigning codes to diagnoses and procedures associated with hospital utilization in the United States. 

The ICD-9-CM consists of:

*   a tabular list containing a numerical list of the disease code numbers in tabular form;
*   an alphabetical index to the disease entries; and
*   a classification system for surgical, diagnostic, and therapeutic procedures (alphabetic index and tabular list).

The National Center for Health Statistics (NCHS) and the [Centers for Medicare and Medicaid Services](http://www.cms.hhs.gov/) are the U.S. governmental agencies responsible for overseeing all changes and modifications to the ICD-9-CM.

[ICD-10-CM](https://confluence.hl7.org/pages/viewpage.action?pageId=97453674) is the replacement for ICD-9-CM, volumes 1 and 2, effective October 1, 2015.

The National Center for Health Statistics (NCHS), the Federal agency responsible for use of the International Statistical Classification of Diseases and Related Health Problems, 10th revision (ICD-10) in the United States, has developed a clinical modification of the classification for morbidity purposes. The ICD-10 is used to code and classify mortality data from death certificates, having replaced ICD-9 for this purpose as of January 1, 1999.

The clinical modification represents a significant improvement over ICD-9-CM and ICD-10. Specific improvements include: the addition of information relevant to ambulatory and managed care encounters; expanded injury codes; the creation of combination diagnosis/symptom codes to reduce the number of codes needed to fully describe a condition; the addition of sixth and seventh characters; incorporation of common 4th and 5th digit subclassifications; laterality; and greater specificity in code assignment. The new structure will allow further expansion than was possible with ICD-9-CM.

Current and previous releases of ICD-9-CM are available here: [https://www.cdc.gov/nchs/icd/icd9cm.htm](https://www.cdc.gov/nchs/icd/icd9cm.htm)

Current and previous releases of ICD-10-CM are available in PDF and XML format here: [https://www.cdc.gov/nchs/icd/icd10cm.htm](https://www.cdc.gov/nchs/icd/icd10cm.htm)

Most files are provided in compressed zip format for ease in downloading. These files have been created by the National Center for Health Statistics (NCHS), under authorization by the World Health Organization. Any questions regarding typographical or other errors noted on this release may be reported to nchsicd10cm@cdc.gov."
* codes from system $ICD10CM
* codes from system $ICD9CM
* insert ICD10CMCopyrightNotice


ValueSet: CMSICD910PCSProcedureCodes 
Title: "Procedure Codes - International Classification of Diseases, Ninth Revision, Clinical Modification (ICD-9-CM) - ICD-10 Procedure Coding System"
Description: "The Value Set is a combination of values from volume 3 from the Code System International Classification of Diseases, Ninth Revision, Clinical Modification (ICD-9-CM) and values in the Code System ICD-10 Procedure Coding System. The International Classification of Diseases, Ninth Revision, Clinical Modification (ICD-9-CM) is based on the World Health Organization’s Ninth Revision, International Classification of Diseases (ICD-9). ICD-9-CM was the official system of assigning codes to diagnoses and procedures associated with hospital utilization in the United States.  The ICD-9-CM consists of: a tabular list containing a numerical list of the disease code numbers in tabular form; an alphabetical index to the disease entries; and a classification system for surgical, diagnostic, and therapeutic procedures (alphabetic index and tabular list). The National Center for Health Statistics (NCHS) and the Centers for Medicare and Medicaid Services are the U.S. governmental agencies responsible for overseeing all changes and modifications to the ICD-9-CM. ICD-10 Procedure Coding System is the replacement for ICD-9-CM, volume 3, effective October 1, 2015. Current and previous releases of ICD-9-CM are available here: https://www.cdc.gov/nchs/icd/icd9cm.htm Most files are provided in compressed zip format for ease in downloading. These files have been created by the National Center for Health Statistics (NCHS), under authorization by the World Health Organization. Any questions regarding typographical or other errors noted on this release may be reported to nchsicd10cm@cdc.gov. The ICD-10-PCS is a procedure classification published by the United States Centers for Medicare & Medicaid Services (CMS) (https://www.cms.gov) for classifying procedures performed in hospital inpatient health care settings. Link to information about the code system: https://www.cms.gov/Medicare/Coding/ICD10 Note: CMS is the owner of the ICD-10-PCS code system. CMS is NOT the owner of ICD-10-CM. CMS republishes the ICD-10-CM codes system on their website for convienence only. For authoratative information on ICD-10-CM, users should refer to the National Center for Health Statistics (NCHS) site located here."
* codes from system $ICD10PCS
* codes from system $ICD9PCS
* ^copyright = "ICD-9 copyright:

The following requirements must be followed to utilize CDC’s public domain content:

1) Attribution to the agency that developed the material must be provided in your use of the materials. Such attribution should clearly state the materials were developed by CDC ATSDR and/or HHS (e.g., Source: CDC; Materials developed by CDC);

2) You must utilize a disclaimer which clearly indicates that your use of the material, including any links to the materials on the CDC, ATSDR or HHS websites, does not imply endorsement by CDC, ATSDR, HHS or the United States Government of you, your company, product, facility, service or enterprise. All such disclaimers must be prominently and unambiguously displayed (e.g., Reference to specific commercial products, manufacturers, companies, or trademarks does not constitute its endorsement or recommendation by the U.S. Government, Department of Health and Human Services, or Centers for Disease Control and Prevention;

3) You may not change the substantive content of the materials; and

4) You must state that the material is otherwise available on the agency website for no charge.

For information on NCHS agency level use of materials see [here](https://www.cdc.gov/other/agencymaterials.html).

ICD-10-PCS copyright:

The CMS licenses its published material in order to encourage maximum use and dissemination. See  
the CMS ([https://www.cms.gov/Medicare/Coding/ICD10](https://www.cms.gov/Medicare/Coding/ICD10)) web site for more information."