### Introduction

<!-- 
    TODO 
    - change log add 31384 and new ones from Pat Taylor 
    Add commentary that the peer review is limited to only the items/changes noted in the change log
    FHIR-30375 Incorrect/inadequate specification of the need for instances of each profile to declare conformance to an appropriate profile
- FHIR-31492 Update NCPDP URLs
- FHIR-31534
- FHIR-31535 


https://jira.hl7.org/browse/FHIR-31535?jql=cf%5B11402%5D%20%3D%20STU-1.1.0-Update

-->
<p>This implementation guide describes the CARIN for Blue Button&reg; <sup>[<a href="#ftn.id1" name="id1">*</a>]</sup> Framework and Common Payer Consumer Data Set (CPCDS), providing a set of resources that payers can display to consumers via a FHIR API. See the <a href="toc.html">Table of Contents</a> for more information.</p>
<div class="stu-note">

<h3> Changes for V1.1.0 (since V1.0.0 - STU1)</h3>
<p>This proposed STU Update addresses several fixes, technical corrections, errata, and clarifications listed below. They have been reviewed
and voted on by the members of the <a href="http://www.hl7.org/Special/committees/fm/index.cfm">HL7 Financial Management WorkGroup</a> which is sponsoring this errata release and reconciliation of the comments.</P>
<p>
<strong>The Peer Review scope for this STU Update only includes the changes listed below. Interested parties are free to comment on any part of the IG, but those not regarding the issues below will be considered for future versions. To make a comment on the STU Update:</strong></p>

  <ol>
    <li>Create a new Jira tracker (New trackers can be made by clicking on the link in the page footer entitled “Propose a change” and clicking the "Create" button on top)</li>
    <li>Select “US CARIN Blue Button (FHIR)” as the Specification and fill in other relevant information.</li>
    <li>Include the related Jira issue in the "Related Issues" section on the "Advanced" tab.</li>
  </ol>
  <p><b>The following issues are addressed in this release:</b></p>
  
<ul>
    <li>Fixed errors in examples
        <ul>
            <li><a href="ExplanationOfBenefit-InpatientEOBExample1.html">Inpatient</a> and <a href="ExplanationOfBenefit-OutpatientEOBExample1.html">Outpatient</a> Institutional EOB examples, removed top-level adjudication because item level adjudication was present (<a href="https://jira.hl7.org/browse/FHIR-29802">FHIR-29802</a>)</li>
            <li>Fixed incorrect text in <a href="ExplanationOfBenefit-EOBProfessional1a.html">EOB Professional example</a> (<a href="https://jira.hl7.org/browse/FHIR-30372">FHIR-30372</a>)</li>
        </ul>
    </li>
    <li>Added missing <a href="1_Background.html#davinci-carin">Diagram in How DaVinci’s PDex IG and the CARIN IG for Blue Button® work together</a> (<a href="https://jira.hl7.org/browse/FHIR-30083">FHIR-30083</a>)
    </li>
    <li>Added Data Absent Reason "not-applicable" code to <a href="ValueSet-C4BBEOBInstitutionalProcedureCodes.html#definition">Institutional Procedure Codes ValueSet</a> for use with Inpatient Institutional EOB item.productOrService and an <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional-definitions.html#ExplanationOfBenefit.item.productOrService">Invariant disallowing the use of this code in Outpatient Institutional EOB</a> (<a href="https://jira.hl7.org/browse/FHIR-30357">FHIR-30357</a>)</li>
    <li>Added 'Must Support' to Professional and NonClinician EOB <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician-definitions.html#ExplanationOfBenefit.item.productOrService">item.productOrService</a> and <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician-definitions.html#ExplanationOfBenefit.item.modifier">item.modifier</a> (<a href="https://jira.hl7.org/browse/FHIR-30358">FHIR-30358</a>)</li>
    <li>Fixed Explanations of Benefits Profile Definition <a href="4_Common_Payer_Consumer_Data_Set.html#profiles-definition">diagram</a> and <a href="CARINforBlueButtonProfileComparisonOverview.pptx">source presentation file (pptx)</a> legend and added DRG owner (<a href="https://jira.hl7.org/browse/FHIR-30360">FHIR-30360</a>)</li>
    <li>Added <a href="CodeSystem-AHANUBCPointOfOriginForAdmissionOrVisitNewborn.html">NUBC Point of Origin for Newborn CodeSystem</a> and renamed NUBC Point of Origin CodeSystem to <a href="CodeSystem-AHANUBCPointOfOriginForAdmissionOrVisitNonnewborn.html">NUBC Point of Origin for Non-newborn CodeSystem</a>for Inpatient and Outpatient Institutional EOB supportingInfo <a href="ValueSet-AHANUBCPointOfOriginForAdmissionOrVisit.html">Point of Origin ValueSet</a> for use when Type of Admission is newborn, <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional.html#inv">Inpatient Institutional EOB Invariant</a>, and <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional.html#inv">Outpatient Institutional EOB Invariant</a> (<a href="https://jira.hl7.org/browse/FHIR-30370">FHIR-30370</a> and <a href="https://jira.hl7.org/browse/FHIR-31384">FHIR-31384</a>)</li>
    <li>Changed <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional-definitions.html#ExplanationOfBenefit.supportingInfo:drg.code">Inpatient Institutional EOB supportingInfo DRG code terminology binding</a> strength from required to extensible to allow for state Medicaid assigned DRGs (<a href="https://jira.hl7.org/browse/FHIR-30380">FHIR-30380</a>)</li>
    <li>Added HIPPS codes to <a href="ValueSet-C4BBEOBInstitutionalProcedureCodes.html">Institutional EOB Procedure Codes ValueSet</a> (<a href="https://jira.hl7.org/browse/FHIR-30413">FHIR-30413</a>)</li>
    <li> Added C4BB Payer Benefit Payment Status to <a href="ValueSet-C4BBAdjudicationCategoryDiscriminator.html#definition">C4BB Adjudication Category Discriminator ValueSet</a> for use in the Professional and NonClinician EOB item.adjudication and removed inoutnetwork code from <a  href="CodeSystem-C4BBAdjudicationDiscriminator.html">Adjudication Discriminator CodeSystem</a> (<a href="https://jira.hl7.org/browse/FHIR-30806">FHIR-30806</a>)</li>
    <li>Added Invariants requiring adjudication[adjudicationamounttype] and adjudication[adjudicationamounttype].amount when header level adjudication is present to <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional.html#inv">Inpatient</a> and <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional.html#inv">Outpatient</a> Institutional EOBs and changed <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician-definitions.html#ExplanationOfBenefit.total:adjudicationamounttype">Professional and NonClinician EOB total[adjudicationamounttype]</a> to a cardinality of 1..*( Changed item.adjudication[adjudicationamounttype].amount (<a href="https://jira.hl7.org/browse/FHIR-30369">FHIR-30369</a>)</li>
    <li>Changes on differentiating ExplanationOfBenefit profiles (<a href="https://jira.hl7.org/browse/FHIR-31594">FHIR-31594</a>)
        <ul>
            <li>Added ExplanationofBenefit.subType requirements to the <a href = "StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional-definitions.html#ExplanationOfBenefit.subType">Inpatient</a> and <a href = "StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional-definitions.html#ExplanationOfBenefit.subType">Outpatient</a> Institutional ExplanationOfBenefit profiles.</li>
            <li>Added <a href="ValueSet-C4BBClaimSubType.html">Claim Procedure Subtype ValueSet</a> and <a href="CodeSystem-C4BBClaimSubType.html">Claim Procedure Subtype CodeSystem</a></li>
        </ul>
    </li>    
    <li>Changes of requirements and guidance on all profiles meta.profile (<a href="https://jira.hl7.org/browse/FHIR-30375">FHIR-30375</a>)
        <ul>
            <li>Defined fixed values for a slice of meta.profile for <a href="artifacts.html#3">all profiles</a>.</li>
            <li>Added guidance on the use of meta.profile as notes to all profiles.</li>
        </ul>
    </li>
    <li>Updated NCPDP CodeSystem URLs (<a href="https://jira.hl7.org/browse/FHIR-31492">FHIR-31492</a>) including: 
        <ul>
            <li><a href="CodeSystem-NCPDPBrandGenericIndicator.html">NCPDP Brand Generic Indicator</a></li>
            <li><a href="CodeSystem-NCPDPCompoundCode.html">NCPDP Compound Code</a></li>
            <li><a href="CodeSystem-NCPDPDispensedAsWrittenOrProductSelectionCode.html">NCPDP Dispense As Written (DAW)/Product Selection Code</a></li>
            <li><a href="CodeSystem-NCPDPPrescriptionOriginCode.html">NCPDP Prescription Origin Code</a></li>
            <li><a href="CodeSystem-NCPDPRejectCode.html">NCPDP Reject Code</a></li>
        </ul>
    </li>
    <li>Removed incorrect casting of <a href="SearchParameter-explanationofbenefit-service-date.html">ExplanationOfBenefit service-date (item.serviced) search parameter</a> (<a href="https://jira.hl7.org/browse/FHIR-30443">FHIR-30443)</a>)</li>
    <li>Changed inoutnetwork slice names and cardinalities (<a href="https://jira.hl7.org/browse/FHIR-30635">FHIR-30635</a>)
        <ul>
            <li>Changed <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional-definitions.html#ExplanationOfBenefit.total:benefitpaymentstatus">Inpatient Institutional</a>, <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional-definitions.html#ExplanationOfBenefit.total:benefitpaymentstatus">Outpatient Institutional</a>, and <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Pharmacy-definitions.html#ExplanationOfBenefit.total:benefitpaymentstatus">Pharmacy</a> EOBs total[inoutnetwork] slice name to benefitpaymentstatus</li>
            <li>Changed <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician-definitions.html#ExplanationOfBenefit.item.adjudication:benefitpaymentstatus">Professional and NonClinician EOB item.adjudication[inoutnetwork]</a> slice name to benefitpayementstatus</li>
            <li>Changed cardinality of <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional-definitions.html#ExplanationOfBenefit.total:benefitpaymentstatus">Inpatient</a> and <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional-definitions.html#ExplanationOfBenefit.total:benefitpaymentstatus">Outpatient</a> Institutional EOB total[benefitpaymentstatus] from (0..1) to (1..1)</li>
            <li>Removed notes in <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html#root">Professional and NonClinician EOB</a> referencing total[inoutnetwork] slice name</li>
            <li>Updated notes for all profiles that referenced inoutnetwork slice name to benefitpaymentstatus</li>
            <li>Updated the Detailed Profile Comparison <a href="4_Common_Payer_Consumer_Data_Set.html#profiles-definition">image</a> and <a href="CARINforBlueButtonProfileComparison.xlsx">source file (xslx)</a> in section 5</li>
        </ul>
    </li>
    <li>Changed cardinality of several slice properties from (0..1) to (1..1) (<a href="https://jira.hl7.org/browse/FHIR-30807">FHIR-30807</a>)
        <ul>
            <li>Changed cardinality of item.adjudication[allowedunits].value from (0..1) to (1..1) in <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional-definitions.html#ExplanationOfBenefit.item.adjudication:allowedunits.value">Inpatient</a> and <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional-definitions.html#ExplanationOfBenefit.item.adjudication:allowedunits.value">Outpatient</a> Institutional EOBs</li>
            <li>Changed <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional-definitions.html#ExplanationOfBenefit.adjudication:denialreason.reason">Inpatient Institutional EOB adjudication[denialreason].reason</a> cardinality from (0..1) to (1.1.)</li>
            <li>Changed <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional-definitions.html#ExplanationOfBenefit.supportingInfo:pointoforigin.code">Outpatient Institutional EOB supportingInfo[pointoforigin].code</a> cardinality from (0..1) to (1..1)</li>
        </ul>
    </li>
    <li>Changed resources used to present patient account number and medical record number (<a href="https://jira.hl7.org/browse/FHIR-31534">FHIR-31534</a>)
        <ul>
            <li>Removed medrecnum and patacctnum slices from the <a href="StructureDefinition-C4BB-Patient.html">Patient profile Patient.Identifier</a></li>
            <li>Added medicalrecordnumber and patientaccountnumber supportingInfo slices to <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional.html">Inpatient</a>, <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional.html">Outpatient</a>, and <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">Professional Non-Clinical</a> ExplanationOfBenefit profiles</li>
            <li>Added medicalrecordnumber and patientaccountnumber to <a href="CodeSystem-C4BBSupportingInfoType.html">Supporting Info Type CodeSystem</a></li>
        </ul>
    </li>
    <li>Removed IG specified requirements of Coverage.Subscriber from the <a href="StructureDefinition-C4BB-Coverage.html">Coverage Profile</a> (<a href="https://jira.hl7.org/browse/FHIR-31535">FHIR-31535</a>)</li>
    <li>Shortened the titles of Inpatient Institutional, Outpatient Institutional, and Professional and NonClinicain EOB <a href="artifacts.html#5">Procedure Code and Procedure Code Modifier ValueSets</a> (<a href="https://jira.hl7.org/browse/FHIR-31074">FHIR-31074</a>)</li>
    <li>Changed <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional.html">Inpatient EOB</a> insurance cardinality for 1..1 to 1..* by removing constraint in profile (<a href="https://jira.hl7.org/browse/FHIR-31477">FHIR-31477</a>)</li>
    <li>Added language regarding security and privacy to the <a href="7_Authorization_Authentication_and_Registration.html#fhir-security-and-privacy-guidance">Authorization, Authentication, and Registration page</a> with a link to the <a href="http://hl7.org/fhir/secpriv-module.html">HL7 FHIR Security and Privacy Module</a> (<a href="https://jira.hl7.org/browse/FHIR-31692">FHIR-31692</a>)</li>
    <li>Changed <a href="artifacts.html#5">NCPDP CodeSystem URLs</a> (<a href="https://jira.hl7.org/browse/FHIR-31492">FHIR-31492</a>)</li>
    <li>Transitioned project structure for Sushi 1.0.0 (For Implementation Guide generation)</li>
    <li>Added <a href="index.html#authors">additional contributors</a> (<a href="https://jira.hl7.org/browse/FHIR-30084">FHIR-30084</a>)</li>
</ul>
</div>
<a name="authors"> </a>
### Authors
<ul>
<li>Primary
<ul>
<li>Amol Vyas (Cambia Health Solutions) -&nbsp;<a href="mailto:amol.vyas@cambiahealth.com">amol.vyas@cambiahealth.com</a></li>
<li>Pat Taylor (Blue Cross Blue Shield Association) - <a href="mailto:pat.taylor@bcbsa.com">pat.taylor@bcbsa.com</a></li>
<li>HL7 Financial Management Workgroup</li>
</ul>
</li>
<li>Secondary
<ul>
<li>Adam Culbertson (Humana) -&nbsp;<a href="mailto:ACulbertson1@humana.com">ACulbertson1@humana.com</a></li>
<li>Corey Spears (MITRE) -&nbsp;<a href="mailto:cspears@mitre.org">cspears@mitre.org</a></li>   
<li>Igor Sirkovich (Smile CDR, Inc.) -&nbsp;<a href="mailto:igor@smilecdr.com">igor@smilecdr.com</a></li>   
<li>Jason Teeple (Cigna) -&nbsp;<a href="mailto:jason.teeple@cigna.com">jason.teeple@cigna.com</a></li>
<li>Josh Lamb (UPMC) -&nbsp;<a href="mailto:igor@smilecdr.com">lambj4@upmc.edu</a></li> 
<li>Lisa Nelson (MaxMD) -&nbsp;<a href="mailto:lnelson@max.md">lnelson@max.md</a></li>
<li>Mark Roberts (Leavitt Partners, LLC) -&nbsp;<a href="mailto:mark.roberts@leavittpartners.com">mark.roberts@leavittpartners.com</a></li>
<li>Ryan Howells (Leavitt Partners, LLC) -&nbsp;<a href="mailto:ryan.howells@leavittpartners.com">ryan.howells@leavittpartners.com</a></li>
<li>Saul Kravitz (MITRE) -&nbsp;<a href="mailto:saul@mitre.org">saul@mitre.org</a></li>
<li>HL7 Payer/Provider Information Exchange</li>
</ul>
</li>
</ul>
### Acknowledgements
<p>The CARIN Consumer Directed Payer Data Exchange Implementation Guide is also known as the CARIN IG for Blue Button&reg; Implementation Guide. This IG was developed using <a href="https://build.fhir.org/ig/HL7/fhir-shorthand/">FHIR Shorthand syntax</a> and the <a href="https://github.com/FHIR/sushi">SUSHI</a> tookit, a free, open source toolchain from the MITRE Corporation. Valuable guidance on FSH and FHIR slicing was provided by Chris Moesel. The capability statements were developed with tools and valuable guidance from Eric Haas.</p>
<div class="footnote"><sup>[<a href="#id1" name="ftn.id1">*</a>]</sup>Blue Button, the slogan, 'Download My Data,' the Blue Button Logo, and the Blue Button combined logo are registered service marks owned by the U.S. Department of Health and Human Services.</div>