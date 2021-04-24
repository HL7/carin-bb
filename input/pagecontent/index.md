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
<div class="stu-note">
NOTE: This is an early eddition of the STU2 release of the CARIN Blue Button IG. It is listed as version 1.1.0 to facilitate Connectathon testing in the short term. The difference between this version and v1.1.0 include a new Oral EOB Profile and the ability to include a vision type for the Professional and NonClinician EOB.
</div>

<p>This implementation guide describes the CARIN for Blue Button&reg; <sup>[<a href="#ftn.id1" name="id1">*</a>]</sup> Framework and Common Payer Consumer Data Set (CPCDS), providing a set of resources that payers can display to consumers via a FHIR API. See the <a href="toc.html">Table of Contents</a> for more information.</p>
<div>
<h3>Changes for V2.0.0 (since V1.1.0)</h3>
<p>This update addresses several technical corrections and errata and clarifications listed below. They have been reviewed
and voted on by the members of the <a href="http://www.hl7.org/Special/committees/fm/index.cfm">HL7 Financial Management WorkGroup</a> which is sponsoring this errata release and reconciliation of the comments. <strong>To make a comment against a particular errata:</strong></p>

  <ol>
    <li>Create a new Jira tracker (New trackers can be made by clicking on the link in the page footer entitled “Propose a change” and clicking the "Create" button on top)</li>
    <li>Select “US CARIN Blue Button (FHIR)” as the Specification and fill in other relevant information.</li>
  </ol>
  <p><b>The following issues are addressed in this release:</b></p>
  
<ul>
    <li>Added <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Oral.html">Oral Profile</a></li>
    <li>Added orthodontics and prosthesis to <a href="ValueSet-C4BBSupportingInfoType.html">Supporting Info Type ValueSet</a> used as a discriminator for the EOB Oral profile supportingInfo slice discriminator</li>
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