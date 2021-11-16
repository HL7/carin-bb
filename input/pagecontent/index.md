### Introduction

<!-- 

https://jira.hl7.org/browse/FHIR-31535?jql=cf%5B11402%5D%20%3D%20STU-1.1.0-Update

-->

<p>This implementation guide describes the CARIN for Blue Button® <sup>[<a href="#ftn.id1" name="id1">*</a>]</sup> Framework and Common Payer Consumer Data Set (CPCDS), providing a set of resources that payers can display to consumers via a FHIR API. See the <a href="toc.html">Table of Contents</a> for more information.</p>
<div class="stu-note">
<h3>Changes for STU2 (since V1.1.0)</h3>
<p>This ballot addresses several additions, modifications, technical corrections, errata, clarifications listed below. They have been reviewed
and voted on by the members of the <a href="http://www.hl7.org/Special/committees/fm/index.cfm">HL7 Financial Management WorkGroup</a> which is sponsoring this ballot release and reconciliation of the comments.</p>

<p><b>The following issues are addressed in this ballot:</b></p>

<ul>
  <li>Added <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Oral.html">Oral ExplanationOfBenefit profile</a> and vision subtType to <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">Professional NonClinician ExplanationOfBenefit profile</a> (<a href="https://jira.hl7.org/browse/FHIR-FHIR-34009">FHIR-34009</a> and <a href="https://jira.hl7.org/browse/FHIR-FHIR-27025">FHIR-27025</a>)
    <ul>
      <li>Added orthodontics and prosthesis to <a href="ValueSet-C4BBSupportingInfoType.html">Supporting Info Type ValueSet</a> used as a discriminator for the EOB Oral profile supportingInfo slice discriminator (<a href="https://jira.hl7.org/browse/FHIR-34010">FHIR-34010</a>)</li>
      <li>Added <a href="ValueSet-C4BBSurfaceCodes.html">US Surface Codes</a> for Oral ExplanationOfBenefit.item.subSite (<a href="https://jira.hl7.org/browse/FHIR-34089">FHIR-34089</a>)</li>
      <li>Added Invariants requiring all ExplanationOfBenefit.supportingInfo[additionalBodySite] instances be referred to by at least one ExplanationOfBenefit.item and require a tooth number for line items where a surface code in ExplanationOfBenefit.item.subsite exists in <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Oral.html">Oral ExplanationOfBenefit profile</a> (<a href="https://jira.hl7.org/browse/FHIR-34091">FHIR-34091</a>)</li>
    </ul>
  </li>

  <li>Updated from US Core 3.1.0 to 4.0.0 affecting the inherited requirements of the <a href="StructureDefinition-C4BB-Patient.html">Patient</a>, <a href="StructureDefinition-C4BB-Practitioner.html">Practitioner</a>, and <a href="StructureDefinition-C4BB-Organization.html">Organization</a> profiles. (<a href="https://jira.hl7.org/browse/FHIR-33177">FHIR-33177</a>)</li>

  <li>Changed cardinality of ExplanationOfBenefit.item from 0..* to 1..* in <a href="StructureDefinition-C4BB-ExplanationOfBenefit.html">Base ExplanationOfBenefit profile</a> requiring ExplanationOfBenefit for all <a href="artifacts.html#structures-resource-profiles">all Resource ExplanationOfBenefit profiles</a> (<a href="https://jira.hl7.org/browse/FHIR-34114">FHIR-34114</a>)</li>

  <li>Require item.location[x] to be only CodeableConcept in <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">Professional</a> and <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Oral.html">Oral</a> ExplanationOfBenefit profiles (<a href="https://jira.hl7.org/browse/FHIR-32067">FHIR-32067</a>)</li>
  <li>Changed <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">Professional NonClinician ExplanationOfBenefit</a> item.location[x] from cardinality of 0..1 to 1..1 and added Must Support (<a href="https://jira.hl7.org/browse/FHIR-34148">FHIR-34148</a>)</li>

  <li>Changed item.serviced[x] and billablePeriod cardinality (<a href="https://jira.hl7.org/browse/FHIR-31639">FHIR-31639</a>)
    <ul>
      <li>ExplanationOfBenefit.item.serviced[x] from 0..1 to 1..1 for <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional.html">Outpatient Institutional ExplanationOfBenefit profile</a></li>
      <li>ExplanationOfBenefit.item.serviced[x] and ExplanationOfBenefit.billablePeriod from 0..1 to 1..1 for <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">Professional NonClinician ExplanationOfBenefit profile</a></li>
      <li>ExplanationOfBenefit.item.serviced[x] from 0..1 to 1..1 for <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Pharmacy.html">Pharmacy ExplanationOfBenefit profile</a></li>
    </ul>
  </li>
  <li>Moved ExplanationOfBenefit.total[benefitpaymentstatus] slice to ExplanationOfBenefit.supportingInfo[benefitpaymentstatus] (therefore not requiring an amount property) for <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional.html">Inpatient Institutional</a>, <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional.html">Outpatient Institutional</a>, <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Pharmacy.html">Pharmacy</a>, and <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Oral.html">Oral</a> ExplanationOfBenefit profiles (<a href="https://jira.hl7.org/browse/FHIR-33082">FHIR-33082</a>)</li>

  <li>Changed ExplanationOfBenefit.adjudication and ExplanationOfBenefit.item.adjudication slicing from closed to open for <a href="artifacts.html#structures-resource-profiles">all Resource ExplanationOfBenefit profiles</a> (<a href="https://jira.hl7.org/browse/FHIR-34241">FHIR-34241</a>)</li>

  <li>Add not-applicable code to <a href="ValueSet-AMACPTCMSHCPCSProcedureCodes.html">Professional Procedure Codes ValueSet</a> and <a href="ValueSet-ADADentalProcedureCode.html">Oral Procedure Code ValueSet</a> for <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">Professional NonClinician ExplanationOfBenefit profile</a> (with Invariant allowing only if subType = vision) and <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Oral.html">Oral</a> (ExplanationOfBenefit.item.productOrService (<a href="https://jira.hl7.org/browse/FHIR-33024">FHIR-33024</a>)</li>

  <li>Removed Invariant that not allowing not-applicable code for <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional.html">Outpatient Institutional ExplanationOfBenefit profile</a> item.productOrService (<a href="https://jira.hl7.org/browse/FHIR-32850">FHIR-32850</a>)</li>

  <li>Added refillsAuthorized slice to ExplanationOfBenefit.supportingInfo of <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Pharmacy.html">Pharmacy ExplanationOfBenefit</a> profile (<a href="https://jira.hl7.org/browse/FHIR-33487">FHIR-33487</a>)</li>

  <li>Changed payee.party cardinality from 1..1 to 0..1 and added invariant requiring payee.party if payee.type='other' in <a href="StructureDefinition-C4BB-ExplanationOfBenefit.html">Base ExplanationOfBenefit profile</a> (<a href="https://jira.hl7.org/browse/FHIR-31699">FHIR-31699</a>)</li>

  <li>Added <a href="SearchParameter-explanationofbenefit-service-start-date.html">service-start-date search parameter</a> (<a href="https://jira.hl7.org/browse/FHIR-33165">FHIR-33165</a>)</li>

  <li>Added Coverage _id search parameter to <a href="CapabilityStatement-c4bb.html">Capability Statement</a> with associated guidance (<a href="https://jira.hl7.org/browse/FHIR-30009">FHIR-30009</a>)</li>

  <li>Added guidance on the expectation of _include support and interpretation of _include=ExplanationOfBenefit:* to <a href="6_searchparameters.html">search Parameters page</a> and <a href="CapabilityStatement-c4bb.html">Capability Statement</a> (<a href="https://jira.hl7.org/browse/FHIR-32982">FHIR-32982</a>)</li>

  <li>Moved ExplanationOfBenefit searches documentation from read interaction to search-type interaction in <a href="CapabilityStatement-c4bb.html">Capability Statement</a> (<a href="https://jira.hl7.org/browse/FHIR-33176">FHIR-33176</a>)</li>

  <li>Removed invalid invariant from <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">Professional NonClinician ExplanationOfBenefit profile</a> that required ExplanationOfBenefit.careTeam.provider to be an Organization reference when careTeam.role was 'site' ('site' not a code in the role ValueSet) (<a href="https://jira.hl7.org/browse/FHIR-31658">FHIR-31658</a>)</li>

  <li>Added paidbypatientcash and paidbypatientother codes to <a href="ValueSet-C4BBAdjudication.html">Adjudication ValueSet</a> and <a href="CodeSystem-C4BBAdjudication.html">Adjudication CodeSystem</a> (<a href="https://jira.hl7.org/browse/FHIR-33996">FHIR-33996</a>)</li>

  <li>Modified security guidance in <a href="Security_And_Privacy_Considerations.html">Security and Privacy Considerations</a> page (<a href="https://jira.hl7.org/browse/FHIR-31693">FHIR-31693</a>)</li>

  <li>Changed display of code other from default value of "Provider to "Other" in <a href="ValueSet-C4BBPayeeType.html">Payee Type ValueSet</a> (<a href="https://jira.hl7.org/browse/FHIR-34020">FHIR-34020</a>)</li>

  <li>Added guidance for the use of the 11-digit NDC code for <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Pharmacy.html">Pharmacy ExplanationOfBenefit</a> profile item.productOrService and item.detail.productOrService (<a href="https://jira.hl7.org/browse/FHIR-32660">FHIR-32660</a>)</li>

  <li>Corrected XPath expression for the <a href="SearchParameter-explanationofbenefit-service-date.html">service-date SearchParameter</a> (<a href="https://jira.hl7.org/browse/FHIR-32843">FHIR-32843</a>)</li>
  
  <li>Corrected invariant for <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional.html">Inpatient Institutional</a> and <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional.html">Outpatient Institutional</a> ExplanationOfBenefit profiles to allow other adjudication slices that do not have a category.code from C4BBAdjudication ValueSet (adjudicationamounttype slice) (<a href="https://jira.hl7.org/browse/FHIR-32978">FHIR-32978</a>)</li>

  <li>Changed <a href="CodeSystem-THREEMAPRDRG.html">3M APR DRG CodeSystem</a> description to include improved licensing information (<a href="https://jira.hl7.org/browse/FHIR-31066">FHIR-31066</a>)</li>

  <li>Removed second extra repetition of meta.profile on all <a href="artifacts.html#7">examples</a> (<a href="https://jira.hl7.org/browse/FHIR-32428">FHIR-32428</a>)</li>

  <li>Added clearer guidance on ExplanationOfBenefit.supportingInfo[servicefacility] and ExplanationOfBenefit.item.location[x] to <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">Professional NonClinician ExplanationOfBenefit profile</a>; ExplanationOfBenefit.item.location[x] and ExplanationOfBenefit.supportingInfo[typeofbill] to <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional.html">Inpatient Institutional</a> and <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional.html">Outpatient Institutional</a> ExplanationOfBenefit profiles (<a href="https://jira.hl7.org/browse/FHIR-34087">FHIR-34087</a>)</li>

  <li>Removed references to PractitionerRole and Location from <a href="1_Background.html#carin-ig-for-blue-button-relation-to-other-igs">Background Relation to other IGs</a> section (<a href="https://jira.hl7.org/browse/FHIR-33060">FHIR-33060</a>)</li>

  <li>Added clearer description of ExplanationOfBenefit.related for <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional.html">Base ExplanationOfBenefit</a> profile (<a href="https://jira.hl7.org/browse/FHIR-31411">FHIR-31411</a>)</li>

  <li>Updated element short descriptions to be more meaningful for all  <a href="artifacts.html#structures-resource-profiles">all Resource profiles</a> (<a href="https://jira.hl7.org/browse/FHIR-34091">FHIR-34091</a>)</li>
</ul>

</div>
<a name="authors"> </a>
### Authors
<ul>
<li>Primary
<ul>
<li>Amol Vyas (Cambia Health Solutions) - <a href="mailto:amol.vyas@cambiahealth.com">amol.vyas@cambiahealth.com</a></li>
<li>Pat Taylor (Blue Cross Blue Shield Association) - <a href="mailto:pat.taylor@bcbsa.com">pat.taylor@bcbsa.com</a></li>
<li>HL7 Financial Management Workgroup</li>
</ul>
</li>
<li>Secondary
<ul>
<li>Adam Culbertson (Humana) - <a href="mailto:ACulbertson1@humana.com">ACulbertson1@humana.com</a></li>
<li>Corey Spears (MITRE) - <a href="mailto:cspears@mitre.org">cspears@mitre.org</a></li>   
<li>Igor Sirkovich (Smile CDR, Inc.) - <a href="mailto:igor@smilecdr.com">igor@smilecdr.com</a></li>   
<li>Jason Teeple (Cigna) - <a href="mailto:jason.teeple@cigna.com">jason.teeple@cigna.com</a></li>
<li>Josh Lamb (UPMC) - <a href="mailto:igor@smilecdr.com">lambj4@upmc.edu</a></li> 
<li>Lisa Nelson (MaxMD) - <a href="mailto:lnelson@max.md">lnelson@max.md</a></li>
<li>Mark Roberts (Leavitt Partners, LLC) - <a href="mailto:mark.roberts@leavittpartners.com">mark.roberts@leavittpartners.com</a></li>
<li>Ryan Howells (Leavitt Partners, LLC) - <a href="mailto:ryan.howells@leavittpartners.com">ryan.howells@leavittpartners.com</a></li>
<li>Saul Kravitz (MITRE) - <a href="mailto:saul@mitre.org">saul@mitre.org</a></li>
<li>HL7 Payer/Provider Information Exchange</li>
</ul>
</li>
</ul>
### Acknowledgements
<p>The CARIN Consumer Directed Payer Data Exchange Implementation Guide is also known as the CARIN IG for Blue Button® Implementation Guide. This IG was developed using <a href="https://build.fhir.org/ig/HL7/fhir-shorthand/">FHIR Shorthand syntax</a> and the <a href="https://github.com/FHIR/sushi">SUSHI</a> tookit, a free, open source toolchain from the MITRE Corporation. Valuable guidance on FSH and FHIR slicing was provided by Chris Moesel. The capability statements were developed with tools and valuable guidance from Eric Haas.</p>
<div class="footnote"><sup>[<a href="#id1" name="ftn.id1">*</a>]</sup>Blue Button, the slogan, 'Download My Data,' the Blue Button Logo, and the Blue Button combined logo are registered service marks owned by the U.S. Department of Health and Human Services.</div>
<p> </p>

