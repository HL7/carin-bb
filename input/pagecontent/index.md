### Introduction

<!-- 

https://jira.hl7.org/browse/FHIR-31535?jql=cf%5B11402%5D%20%3D%20STU-1.1.0-Update

-->

<p>The CARIN Consumer Directed Payer Data Exchange (CARIN for Blue Button®[*) Implementation Guide defines a FHIR®-based API that enables secure, consumer-directed access to adjudicated claims and encounter data maintained by commercial health plans and payers. The CARIN BlueButton is not a claims processing standard and instead is meant to enable the communication of data that has resulted from claims processing.

Building on the CMS Medicare Blue Button 2.0 API model, this guide supports the requirements of the CMS Patient Access and Interoperability Rules by standardizing how payers expose claims, explanation of benefit, and related administrative data to members and their authorized third-party applications. The guide leverages HL7® FHIR Release 4 and the US Core profiles wherever applicable to promote consistency and interoperability across payer implementations, and aligns with other HL7 Da Vinci and CARIN implementation guides to support a cohesive payer interoperability ecosystem. These constraints and guidance enable scalable, standards-based access to claims data that empowers consumers, supports application innovation, and advances nationwide interoperability objectives.

This implementation guide describes the CARIN for Blue Button Framework and Common Payer Consumer Data Set (CPCDS), providing a set of resources that payers can provide to consumers via a FHIR API.</p>

<a name="authors"> </a>
### Authors
<ul>
<li>Primary
<ul>
<li>Amol Vyas (NCQA) - <a href="mailto:avyas@ncqa.org">avyas@ncqa.org</a></li>
<li>Pat Taylor (Blue Cross Blue Shield Association) - <a href="mailto:pat.taylor@bcbsa.com">pat.taylor@bcbsa.com</a></li>
<li>HL7 Financial Management Workgroup</li>
</ul>
</li>
<li>Secondary
<ul>
<li>Adam Culbertson (Humana) - <a href="mailto:ACulbertson1@humana.com">ACulbertson1@humana.com</a></li>
<li>Corey Spears (Lantana Consulting Group) - <a href="mailto:corey.spears@lantanagroup.com">corey.spears@lantanagroup.com</a></li>   
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

