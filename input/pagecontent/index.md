<p>&nbsp;</p>
<h3>Introduction</h3>
<p>This implementation guide describes the CARIN for Blue Button&reg; <sup>[<a href="#ftn.id1" name="id1">*</a>]</sup> Framework and Common Payer Consumer Data Set (CPCDS), providing a set of resources that payers can display to consumers via a FHIR API. See the <a href="toc.html">Table of Contents</a> for more information.</p>
<h3>Changes Since V1.0.0</h3>
<ul>
<li>Transitioned project structure for Sushi 1.0.0</li>
<li>Added slicing to meta.profile on all profiles to enforce intended requirement that each instance declare its conformance to the appropriate Carin-BB profile </li>
<li>Changed cardinality of item.adjudication[adjudicationAmounttype].amount to 1..1 to line up with adjudciation[adjudicationAmountType].amount cardinality.</li>
</ul>
<h3>Authors</h3>
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
<li>Ryan Howells (Leavitt Partners, LLC) -&nbsp;<a href="mailto:ryan.howells@leavittpartners.com">ryan.howells@leavittpartners.com</a></li>
<li>Saul Kravitz (MITRE) -&nbsp;<a href="mailto:saul@mitre.org">saul@mitre.org</a></li>
<li>Josh Lamb (UPMC) -&nbsp;<a href="mailto:igor@smilecdr.com">lambj4@upmc.edu</a></li> 
<li>Mark Roberts (Leavitt Partners, LLC) -&nbsp;<a href="mailto:mark.roberts@leavittpartners.com">mark.roberts@leavittpartners.com</a></li>
<li>Lisa Nelson (MaxMD) -&nbsp;<a href="mailto:lnelson@max.md">lnelson@max.md</a></li>
<li>Adam Culbertson (Humana) -&nbsp;<a href="ACulbertson1@humana.com">ACulbertson1@humana.com</a></li>
<li>Jason Teeple (Cigna) -&nbsp;<a href="mailto:jason.teeple@cigna.com">jason.teeple@cigna.com</a></li>
<li>Corey Spears (MITRE) -&nbsp;<a href="mailto:cspears@mitre.org">cspears@mitre.org</a></li>   
<li>Igor Sirkovich (Smile CDR, Inc.) -&nbsp;<a href="mailto:igor@smilecdr.com">igor@smilecdr.com</a></li>   
<li>HL7 Payer/Provider Information Exchange</li>
</ul>
</li>
</ul>
<h3>Acknowledgements</h3>
<p>The CARIN Consumer Directed Payer Data Exchange Implementation Guide is also known as the CARIN IG for Blue Button&reg; Implementation Guide. This IG was developed using <a href="https://build.fhir.org/ig/HL7/fhir-shorthand/">FHIR Shorthand syntax</a> and the <a href="https://github.com/FHIR/sushi">SUSHI</a> tookit, a free, open source toolchain from the MITRE Corporation. Valuable guidance on FSH and FHIR slicing was provided by Chris Moesel. The capability statements were developed with tools and valuable guidance from Eric Haas.</p>
<div class="footnote"><sup>[<a href="#id1" name="ftn.id1">*</a>]</sup>Blue Button, the slogan, 'Download My Data,' the Blue Button Logo, and the Blue Button combined logo are registered service marks owned by the U.S. Department of Health and Human Services.</div>