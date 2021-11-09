### Introduction

<!-- 

https://jira.hl7.org/browse/FHIR-31535?jql=cf%5B11402%5D%20%3D%20STU-1.1.0-Update

-->

<p>This implementation guide describes the CARIN for Blue Button® <sup>[<a href="#ftn.id1" name="id1">*</a>]</sup> Framework and Common Payer Consumer Data Set (CPCDS), providing a set of resources that payers can display to consumers via a FHIR API. See the <a href="toc.html">Table of Contents</a> for more information.</p>
<div>
<h3>Changes for STU2 (since V1.1.0)</h3>
<p>This update addresses several technical corrections and errata and clarifications listed below. They have been reviewed
and voted on by the members of the <a href="http://www.hl7.org/Special/committees/fm/index.cfm">HL7 Financial Management WorkGroup</a> which is sponsoring this errata release and reconciliation of the comments. <strong>To make a comment against a particular errata:</strong></p>

<ol>
    <li>Create a new Jira tracker (New trackers can be made by clicking on the link in the page footer entitled “Propose a change” and clicking the "Create" button on top)</li>
    <li>Select “US CARIN Blue Button (FHIR)” as the Specification and fill in other relevant information.</li>
  </ol>
  <p><b>The following issues are addressed in this release:</b></p>

<ul>

<li>Added <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Oral.html">Oral Profile</a> (<a href="https://jira.hl7.org/browse/FHIR-FHIR-34009">FHIR-34009</a>)
<ul>
<li>Added orthodontics and prosthesis to <a href="ValueSet-C4BBSupportingInfoType.html">Supporting Info Type ValueSet</a> used as a discriminator for the EOB Oral profile supportingInfo slice discriminator (<a href="https://jira.hl7.org/browse/FHIR-34010">FHIR-34010</a>)</li>
<li>Change item.location[x] to only locationCodeableConcept (<a href="https://jira.hl7.org/browse/FHIR-32067">FHIR-32067</a>


</ul>
<li>(<a href="https://jira.hl7.org/browse/FHIR-32067">FHIR-32067</a>)
<ul>
<li>Changed <a href="ExplanationOfBenefit-EOBOral1a.html">Oral Professional Profile</a> item.location[x] to only locationCodeableConcept </li>
<li>Changed <a href="ExplanationOfBenefit-EOBProfessional1a.html">Oral Profile</a> item.location[x] to only locationCodeableConcept (<a href="https://jira.hl7.org/browse/FHIR-32067">FHIR-32067</a>)
</ul>

 
<li>Changed <a href="CodeSystem-THREEMAPRDRG.html">Code System Description</a> (<a href="https://jira.hl7.org/browse/FHIR-31066">FHIR-31066</a>) item.location[x] to only locationCodeableConcept </li>
<ul> 
<li>Replacied 'Link to information about the code system with <a href="https://www.3m.com/3M/en_US/health-information-systems-us/drive-value-based-care/patient-classification-methodologies/apr-drgs/">https://www.3m.com/3M/en_US/health-information-systems-us/drive-value-based-care/patient-classification-methodologies/apr-drgs/</a></li>
<li> Added The following text...<br>
The clinical logic is maintained by a team of 3M clinicians, data analysts, nosologists, programmers and economists. The logic is proprietary to 3M but is available for licensees to view in an online definitions manual. To license APR DRG from 3M, see request form here </li>
</ul>
<li>Changed <a href="CapabilityStatement-c4bb.html">Capability Statement</a> (<a href="https://jira.hl7.org/browse/FHIR-30009">FHIR-30009</a>)<br>
To read "A Server SHALL be capable of supporting the following _includes:
Coverage:payor - GET [base]/Coverage?_include=Coverage:payor" </li>
<li>Changed <a href="sushi-config.yaml">Sushi Configuration file</a> (<a href="https://jira.hl7.org/browse/FHIR-33177">FHIR-33177</a>)
Update to US Core 4.0.0 profiles </li>
<li>Changed <a href="CoverageProfile.html">Coverage Profile</a> (<a href="https://jira.hl7.org/browse/FHIR-30323">FHIR-30323</a>)
Remove Must Support from Coverage.identifier </li>
<li>Tighter guidance requiring WHEN provenance needs to be included in the EOB profiles  (<a href="https://jira.hl7.org/browse/FHIR-31639">FHIR-31639</a>)</li><ul>
<li>Changed cardinality of EOB.item.serviced[x] to 1..1 (<a href="ExplanationOfBenefit-EOBPharmacy1.html">Pharmacy Profile</a>)<br></li>
<li>Changed cardinality of EOB.item.serviced[x] to 1..1 (<a href="ExplanationOfBenefit-EOBProfessional1a.html">Professional Profile</a>)<br></li>
<li>Changed cardinality of EOB.item.serviced[x] to 1..1 (<a href="ExplanationOfBenefit-OutpatientEOBExample1.html">Out Patient</a>)<br></li>
</ul>
<li>(<a href="https://jira.hl7.org/browse/FHIR-33024">FHIR-33024</a>)</li>
<ul>
<li>Added Not Applicable code to AMACPTCMSHCPCSProcedureCodes valueset (<a href="https://jira.hl7.org/browse/FHIR-33024">FHIR-33024</a>)</li>
</ul>
<li>Changed <a href="ExplanationOfBenefit-EOBProfessional1a.html">Oral Professional Profile</a>  item.location to required (1..1) (<a href="https://jira.hl7.org/browse/FHIR-34148">FHIR-34148</a>)</li>




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

