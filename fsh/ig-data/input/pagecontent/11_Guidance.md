## Conformance Verbs
The conformance verbs - SHALL, SHOULD, MAY - used in this guide are defined in [FHIR Conformance Rules](https://trifolia-fhir-dev.lantanagroup.com/http:/hl7.org/fhir/R4/conformance-rules.html).

## Must Support
For profiles defined in other IGs, the meaning of Must Support is established in the defining IG. 

Note that the Must Support requirements for this IG are modeled after the US Core implementation guide, with the requirements for CARIN Server APIs modeled on those for US Core Responders, and the requirements for CARIN Consumer Apps modeled on those for US Core Requestors.

For profiles defined in this IG, Must Support means the following:

The CARIN BB’s interpretation of Must Support and Missing Data is aligned with US Core IG must support.  When querying and reading CARIN BB Profiles, *Must Support* on any profile data element **SHALL** be interpreted as follows:

* Health Plan API actors **SHALL** be capable of populating all data elements as part of the query results as specified by the CARINBlueButtonHealthPlanAPICapabilityStatement.
* Consumer App actors **SHALL** be capable of processing resource instances containing the data elements without generating an error or causing the application to fail. 
* Consumer App actors **SHALL** be capable of displaying the data elements for human use.
* Consumer App actors **SHOULD** be capable of storing the information for other purposes.
* In situations where information on a particular data element is not present and the reason for absence is unknown, Health Plan API actors **SHALL NOT** include the data elements in the resource instance returned as part of the query results.
* When querying Health Plan API actors, Consumer App actors **SHALL** interpret missing data elements within resource instances as data not present in the Health Plan API actors system.
* In situations where information on a particular data element is missing and the Health Plan API actor knows the precise reason for the absence of data, Health Plan API actors **SHALL** send the reason for the missing information using values (such as nullFlavors) from the value set where they exist or use the dataAbsentReason extension.
* Consumer App actors **SHALL** be able to process resource instances containing data elements asserting missing information.
* NOTE: The above definition of *Must Support* is derived from HL7v2 concept Required but may be empty - RE described in HL7v2 V28_CH02B_Conformance.doc.
* NOTE: Readers are advised to understand [FHIR Terminology](http://hl7.org/fhir/R4/terminologies.html) requirements, [FHIR RESTful API](http://hl7.org/fhir/R4/http.html) based on the HTTP protocol, along with [FHIR Data Types](http://hl7.org/fhir/R4/datatypes.html), [FHIR Search](http://hl7.org/fhir/R4/search.html) and [FHIR Resource](http://hl7.org/fhir/R4/resource.html) formats before implementing CARIN BB IG requirements.


## Missing Data
If the source system does not have data for a *Must Support* data element with minimum cardinality = 0, the data element is omitted from the resource. If the source system does not have data for a required data element (in other words, where the minimum cardinality is > 0), follow guidance defined in the core FHIR specification and summarized in the [US Core IG](http://hl7.org/fhir/us/core/general-guidance.html#missing-data).

## Conformance to US Core Profiles
Any actor acting as a Health Plan API actor in this IG **SHALL**:
* 	Be able to populate all profile data elements that have a minimum cardinality >= 1 and/or flagged as *Must Support* as defined by that profiles StructureDefinition.
* 	Conform to the US Core Server Capability Statement expectations for that profile's type.
Any actor acting a FHIR Client in this IG **SHALL**:
* 	Be able to process and retain all profile data elements that have a minimum cardinality >= 1 and/or flagged as Must Support as defined by that profiles StructureDefinition.
* 	Conform to the US Core Client Capability Statement expectations for that profiles type.

## U.S. Core Data for Interoperability and 2015 Edition Common Clinical Data Set
The US Core Profiles were originally designed to meet the 2015 Edition certification criterion for Patient Selection 170.315(g)(7), and Application Access - Data Category Request 170.315(g)(8). They were created for each item in the [2015 Edition Common Clinical Data Set (CCDS)](https://www.healthit.gov/sites/default/files/ccds_reference_document_v1_1.pdf). The 3.1.0 version of the US Core Profiles IG includes new requirements from the latest proposed ONC [U.S. Core Data for Interoperability (USCDI)](https://www.healthit.gov/topic/laws-regulation-and-policy/notice-proposed-rulemaking-improve-interoperability-health) and includes all the [API Resource Collection in Health (ARCH)](https://www.healthit.gov/isa/api-resource-collection-health-arch) resources.


## Access to Licensed Code Systems
The Industry Standard Code Systems defined by this IG align with claims submission standards adopted by the Department of Health and Human  Services.  Some of the codes require licenses; others are available for use.  The CARIN team will be submitting proposed additions to the set of [Externally Published code systems](https://www.hl7.org/fhir/terminologies-systems.html) for any Industry Standard Code Systems not in the published list. [https://www.hl7.org/fhir/terminologies-systems.html](https://www.hl7.org/fhir/terminologies-systems.html)  

### Licensed Industry Standard Code Systems
 
This IG includes value set bindings to industry standard codes that reference Code Systems which require implementers to purchase a license before the coded concepts can be used.   HL7 presently addresses similar license requirements for LOINC and SNOMED CT codes, which although are not used by this IG, are required for other IGs.  The following information summarizes the set of licensed Code Systems required by this IG and provides links to the information about where to go to purchase a license.

* CPT (Current Procedural Terminology) Procedure Codes and Modifiers:  The CPT procedure and modifier codes are owned by the American Medical Association. [http://www.ama-assn.org/go/cpt](http://www.ama-assn.org/go/cpt). 
* CARC (Claim Adjustment Reason Codes) Codes:  CARC Codes are owned by X12.  [http://www.x12.org/codes/claim-adjustment-reason-codes/](http://www.x12.org/codes/claim-adjustment-reason-codes/).
* NUBC (National Uniform Billing Committee) Codes:  The NUBC secretariat is the American Hospital Association.  [https://www.nubc.org](https://www.nubc.org). 
* NCPDP (National Council for Prescription Drug Program):  Retail Pharmacy data standards are defined by the NCPDP.  [https://www.ncpdp.org](https://www.ncpdp.org).
 
### Available Industry Standard Code Systems
 
This IG includes value set bindings to industry standard codes that are available for use without licenses.  An example is the [ICD-10](http://www.icd10data.com/icd10pcs) procedure codes ICD-10-PCS codes which are defined in [US Core Procedure Profile](http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure).  (However, the US Core Procedure Profile cannot be used by this IG as it includes LOINC and SNOMED CT codes, which are not defined by HHS for claims submissions).  The following information summarizes the set of Code Systems required by this IG that are available for use and provides links to the location of the information.
 
* ICD-CM Diagnosis Codes: International Statistical Classification of Diseases and Related Health Problems (ICD).  This IG will use version 10.  The ICD-10-CM code set is maintained by the National Center for Health Statistics (NCHS) of the Centers for Disease Control and Prevention (CDC) for use in the United States. It is based on ICD-10, which was developed by the World Health Organization (WHO) and is used internationally a medical classification.  [https://www.icd10data.com/ICD10CM/Codes](https://www.icd10data.com/ICD10CM/Codes)

* ICD-Procedure Codes (ICD-PCS):  The ICD-10-PCS code set is owned by CMS.   [http://www.ama-assn.org/go/cpt]( http://www.ama-assn.org/go/cpt).

*  DRG (Diagnosis Related Group):  The DRGs are payment categories that are used to classify patients for the purpose of reimbursing hospitals for each case in a given category with a fixed fee regardless of the actual costs incurred.   All versions of the DRG (MS-DRG, AP-DRG, etc.) are owned by CMS.  MS-DRGs are used for the Medicare population.  [https://www.cms.gov/Medicare/Medicare-Fee-for-Service-Payment/AcuteInpatientPPS/MS-DRG-Classifications-and-Software.html](https://www.cms.gov/Medicare/Medicare-Fee-for-Service-Payment/AcuteInpatientPPS/MS-DRG-Classifications-and-Software.html).

* HCPCS (Healthcare Common Procedure Coding System) Level II Procedure and Modifier Codes:  HCPCS codes primarily include non-physician products, supplies, and procedures not included in CPT.  They are owned by CMS and are available for use.  [https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets/Alpha-Numeric-HCPCS-Items/2020-HCPCS-Record-Layout](https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets/Alpha-Numeric-HCPCS-Items/2020-HCPCS-Record-Layout).

* NDC (National Drug Codes):  The US Federal Drug Administration (FDA) Data Standards Council assigns the first 5 digits of the 11 digit code.  [http://hl7.org/fhir/sid/ndc.html](https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets/Alpha-Numeric-HCPCS-Items/2020-HCPCS-Record-Layout).

* RARC (Remittance Advice Remark Codes) Codes:  The RARC codes are owned by CMS.  [http://www.wpc-edi.com/reference/codelists/healthcare/remittance-advice-remark-codes](http://www.wpc-edi.com/reference/codelists/healthcare/remittance-advice-remark-codes).
 
