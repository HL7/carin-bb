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

---
### Latest Changes


| Number | Description |
| :---: | --- |
| 59 | A new html page was added to the IG to fix the broken Directory of Published version link which wasn't working because this is the first version of the IG to be published. |
| 58 | The Request a Change link in the IG footer was fixed in Trifolia to take commenters to the new HL7 Jira site for tracking issues. |
| 57 | Examples have been added and referenced from a new Examples Section. Additional examples will be developed and reviewed during the ballot reconciliation period to be included with the published IG. |
| 56 | Search Parameters: Added a Search Parameters page to expose the developed SearchParameter Resources defined in this IG. A note to balloters was added to explain that Trifolia on FHIR is not rendering SearchParameter Resources correctly and reviewers need to use the XML or JSON tab to see the defintion. |
| 55 | Notes to Balloters: A note to balloters was added to explain that the name of the IG has been changed. The formal HL7 title does not include the FHIR Accelerator Program name, nor does it use of a trademarked phrase. An acknowledgement was added to explain the IG will also be known as (aka) the Carin Blue Button IG. |
| 54 | Notes to Balloters: A note to balloters was added to explain that certain Terminology naming issues will be addressed during the ballot process and will be resolved prior to publication in the following way: the Value Sets will be updated to remove reference to CARIN Blue Button, replaced by either industry standard names or, for those specific to claim adjudication, with the new IG name.  Industry standard Code System revisions include consolidating the three Type of Bill Codes, removing reference to SNOMED CT, etc. Some value sets renaming has be started. The rest will be completed during ballot reconciliation. |
| 53 | Note to Balloters: A note to balloters was added to explain that certain Code System referencing issues will be addressed during the ballot process and will be resolved prior to publication. Based on recent guidance from the HL7 Vocabulary Workgroup a change will be made to reference external licensed Code Systems using URIs instead of OIDs|
| 52 | Capability Statements: The names of the Capability Statements were modified to align with the updated actor names. |
| 51 | Profiles and Extensions: The MustSupport implementer guidance was added to the CARINBBExplanationOfBenefit Profile.  A sentence was added to explain the Explanation of Benefit profiles inherit MustSupport guidance from the base profile.  Search parameter guidance was added for the Coverage and Explanation of Benefit profile.  |
| 50 | Notes to Balloters: The Feedback section was modified to Notes to Balloters and comments were added requesting feedback on additional search parameters needed to support the use cases covered in this IG. An additional comment was added about Value Set and Codes System names noting they will be updated prior to publication and Terminology references. The note explains that they way Licensed Codes Systems and associated Value Sets are identified will be modified to incorporate recent changes in the way FHIR IGs specify external codes systems that HL7 is not licensed to incorporate into publications made available through HL7.org/FHIR 
|
| 49 | Access to Licensed Code Systems: A new section under General Guidance, Access to Licensed Code Systems, was added.  It will include guidance on how to access Licensed Industry Standard Code Systems and Available Industry Standard Code Systems. |
| 48 | General Guidance: A section, General Guidance, was added to include guidance to support MustSupport for this IG, how to handle missing information. |
| 47 | Use Case: A sequence flow diagram was added and the actor names in the descriptions were modified to align with the actor names used in the diagram. |
| 46 | CARIN Blue Button Framework Specification: hotlinks were added to make the content it describes directly accessible without having to click through next page. |
| 45 | Home Page, CARIN Alliance section: Formatting was resolved and additional verbiage was added to note that Blue Button is a registered mark of the U.S. Department of Health and Human Services. An attribution statement was made in the Acknowledgements to state, Blue Button, the slogan, Download My Data, the Blue Button Logo, and the Blue Button combined logo are registered service marks owned by the U.S. Department of Health and Human Services. |
| 44 | Refined mapping page and added worksheet download link. Added initial profile desciptions and  must support flags. |
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
| 32 | Added 4 specific EOB and 1 Coverage profiles. |
| 31 | Removed mapping pages for Claim, Claim LIne, Diagnosis, Procedure, Member and Coverage; removed 10 EOB profile stubs and replaced with 1 base profile |
| 30 | Added pages to hold mappings for EOB Inpatient Facility, EOB Outpatient Facility, EOB Professional/Non-Clinician, and EOB Pharmacy |
| 29 | Updated Provider and Claim Line Amounts mappings. |
| 28 | Removed references to flat file format.  Combined CPCDS format and mapping sections. Updated sample reverse mapping. |
| 27 | Replaced 6 EOB profiles (one per claim type) with 10 EOB profiles (one per claim/subclaim type, flattened). Renamed things with new naming convention. |
| 26 | Added sample of reverse mapping narrative for ExplanationOfBenefit. |
| 25 | Added FHIR Resources section to narrative and included Example EOB. |
| 24 | Replaced EOB profile with one EOB profile for each claim type. Added Business Rules page as a placeholder. |
| 23 | Added the Latest Changes section. Added USCoreR4 Dependency. |


### Acknowledgements
The Consumer-Directed Payer Data Exchange Implementation Guide is also known as the CARIN Blue Button&reg; Implementation Guide.

Blue Button, the slogan, 'Download My Data,' the Blue Button Logo, and the Blue Button combined logo are registered service marks owned by the U.S. Department of Health and Human Services.

---
>This implementation guide is currently a work in progress and is in draft status.
>
>Blue Button&reg; is a registered mark of HHS
---


