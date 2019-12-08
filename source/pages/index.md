---
title: Implementation Guide Home Page
layout: default
active: home
---

<!-- { :.no_toc } -->

<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->

* Do not remove this line (it will not be displayed)
{:toc}

<!-- end TOC -->

### Description


# CARIN Alliance
**_Enabling consumers and their authorized caregivers to access more of their digital health information with less friction._**

This implementation guide describes the CARIN Blue Button&reg; Framework and Common Payer Consumer Data Set (CPCDS), providing a set of resources that payers can display to consumers via a FHIR API.

See the [Table of Contents](toc.html) for more information.

---
### Latest Changes
| Number | Description |
| ----- | ----- |
| 44 | Refined mapping page and added worksheet download link. Added initial capability statement, profile desciptions and  must support flags. |
| 43 | The IG does not forbid any elements from base R4. Added &reg; symbol to Blue Button references to acknowledge CMS' registered mark. Reorganized the mapping sections. |
| 42 | First pass at harmonization of profiles and terminologies. Added the **Authorization, Authentication, and Registration** section. |
| 41 | set content to completed for code system [CARINBBClaimType](http://hl7.org/fhir/us/carin/CodeSystem/carin-bb-claim-type) |
| 40 | 	Binding of value set [CARINBBClaimType](http://hl7.org/fhir/us/carin/ValueSet/carin-bb-claim-type) to eob.type in profile [CARINBBExplanationOfBenefit](http://hl7.org/fhir/us/carin/StructureDefinition/carin-bb-explanationofbenefit) |
| 39 | 	Added new code allowedunits to [CARINBBAdjudicationCategory](http://hl7.org/fhir/us/carin/CodeSystem/carin-bb-adjudicationcategory) |
| 38 | 	Added new code clmlastactiondate to [CARINBBClaimInformationCategory](http://hl7.org/fhir/us/carin/CodeSystem/carin-bb-claiminformationcategory) |
| 37 | Updated Feedback section with Zulip stream information |
| 36 | Added explicit "draft" verbiage |
| 35 | Revised narrative content |
| 34 | Removed Credits and added USCore Patient based CARINBBPatient profile |
| 33 | Removed mapping page content and created new pages for Coverage, Patient, Comprehensive, and Data Index (to match spreadsheet); added content from spreadsheet to the pages |
| 32 | Added 4 specific EOB and 1 Coverage profiles |
| 31 | Removed mapping pages for Claim, Claim LIne, Diagnosis, Procedure, Member and Coverage; removed 10 EOB profile stubs and replaced with 1 base profile |
| 30 | Added pages to hold mappings for EOB Inpatient Facility, EOB Outpatient Facility, EOB Professional/Non-Clinician, and EOB Pharmacy |
| 29 | Updated Provider and Claim Line Amounts mappings. |
| 28 | Removed references to flat file format.  Combined CPCDS format and mapping sections. Updated sample reverse mapping. |
| 27 | Replaced 6 EOB profiles (one per claim type) with 10 EOB profiles (one per claim/subclaim type, flattened). Renamed things with new naming convention. |
| 26 | Added sample of reverse mapping narrative for ExplanationOfBenefit |
| 25 | Added FHIR Resources section to narrative and included Example EOB. |
| 24 | Replaced EOB profile with one EOB profile for each claim type. Added Business Rules page as a placeholder. |
| 23 | Added the Latest Changes section. Added USCoreR4 Dependency. |

---
>This implementation guide is currently a work in progress and is in draft status.
>
>Blue Button&reg; is a registered mark of CMS
---


