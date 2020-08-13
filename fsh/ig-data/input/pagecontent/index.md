<table style="border-color: red;" border="4">
<tbody>
<tr>
<td style="text-align: center;"><strong>DISCLAIMER</strong></td>
</tr>
<tr>
<td>This build has <strong>NOT</strong> been approved by HL7 and should NOT be widely distributed. It's a draft build the CARIN for Blue Button technology team is using to update BEFORE the changes have been approved by HL7 and made to the CI build. It's meant to be a directional resource only for payers who are currently implementing.</td>
</tr>
</tbody>
</table>
<h3>&nbsp;</h3>
<h3>Introduction</h3>
<p>This implementation guide describes the CARIN for Blue Button&reg; <sup>[<a href="#ftn.id1" name="id1">*</a>]</sup> Framework and Common Payer Consumer Data Set (CPCDS), providing a set of resources that payers can display to consumers via a FHIR API. See the [Table of Contents](toc.html) for more information.</p>
<h3>Log of Continuous Integration Build Changes</h3>
<ul>
<li>Interim Version 0.4.1 - August 13, 2020</li>
<ol>
<li>Update to EOBComparisonv13 from Pat</li>
<li>Imported comments and MS from CPCDS spreadsheet</li>
<li>Further corrections to capability statement based on Igor comments.   supported_profiles vs profiles deferred.</li>
</ol>
<li>Interim Version 0.4. - August 5, 2020</li>
<ol>
<li>Update to EOBComparisonv13 from Pat</li>
<li>Imported comments and MS from CPCDS spreadsheet</li>
</ol>
<li>Version 0.3.1 - July 26, 2020</li>
<ol>
<li>Corrections to slices defined and names of value sets referenced in 4 EOB profiles following review. EOB Profile Summary withdrawn pending review..</li>
<li>Correction to example</li>
<li>Correct version of CPCDS mapping spreadsheet linked.</li>
</ol>
<li>Version 0.3.0 - July 24, 2020</li>
<ol>
<li>Corrections to slices defined and names of value sets referenced in 4 EOB profiles following review. These are now in line with <a href="EOBtypes.png">the EOB Profile Summary</a>.</li>
<li>Addition of initial skeletal examples for 4 EOB profiles. Feedback/input/suggestions welcome!</li>
<li>Eliminated CPCDS mapping table in Coverage intro. CPCDS information is to be moved to an external reference only based on FW WG direction.</li>
<li>Committing FSH/sushi inputs to github now that mismatch between Sushi 0.14.0 and the latest IG publisher has been addressed.</li>
</ol>
<li>Version 0.2.0 - July 17, 2020</li>
<ol>
<li>Corrections to slices defined and value sets referenced in 4 EOB profiles following review</li>
<li>Changes to Value Set names (removing VS suffix)</li>
<li>Experimental labeling of Coverage profile with annotation from CPCDS-FHIR mapping spreadsheet. Inclusion of CPCDS mapping table in Coverage intro</li>
<li>Addition of (empty) Capability Statement page.</li>
<li>Addition of initial set of examples. Will be expanded to cover all resources.</li>
</ol>
</ul>
<h3>Authors</h3>
<table style="width: 50%;" border="1">
<tbody>
<tr>
<th>Primary or Secondary</th>
<th>Name</th>
<th>Email</th>
</tr>
<tr>
<td>Primary</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>HL7 Financial Management Workgroup / Provider Information Exchange Workgroup</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>Amol Vyas</td>
<td>amol.vyas@cambiahealth.com</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>Pat Taylor</td>
<td>Pat.Taylor@bcbsa.com</td>
</tr>
<tr>
<td>Secondary</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>Mark Roberts</td>
<td>mark.roberts@leavittpartners.com</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>Saul A. Kravitz</td>
<td>saul@mitre.org</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>Igor Sirkovich</td>
<td>igor@smilecdr.com</td>
</tr>
</tbody>
</table>
<h3>Acknowledgements</h3>
<p>The CARIN Consumer Directed Payer Data Exchange Implementation Guide is also known as the CARIN IG for Blue Button&reg; Implementation Guide. This IG was developed using [FHIR Shorthand syntax](https://build.fhir.org/ig/HL7/fhir-shorthand/) and the [SUSHI tookit](https://github.com/FHIR/sushi), a free, open source toolchain from the MITRE Corporation. Valuable guidance on FSH and FHIR slicing was provided by Chris Moesel. The capability statements were developed with tools and valuable guidance from Eric Haas.</p>
<div class="footnote"><sup>[<a href="#id1" name="ftn.id1">*</a>]</sup>Blue Button, the slogan, 'Download My Data,' the Blue Button Logo, and the Blue Button combined logo are registered service marks owned by the U.S. Department of Health and Human Services.</div>