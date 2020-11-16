<p>&nbsp;</p>
<!-- <table style="border-color: red;" border="4">
<tbody>
<tr>
<td style="text-align: center;"><strong>DISCLAIMER</strong></td>
</tr>
<tr>
<td>This build has <strong>NOT</strong> been approved by HL7 and should NOT be widely distributed. It's a draft build the CARIN for Blue Button technology team is using to update BEFORE the changes have been approved by HL7 and made to the CI build. It's meant to be a directional resource only for payers who are currently implementing.</td>
</tr>
</tbody>
</table>
<h3>&nbsp;</h3> -->
<h3>Introduction</h3>
<p>This implementation guide describes the CARIN for Blue Button&reg; <sup>[<a href="#ftn.id1" name="id1">*</a>]</sup> Framework and Common Payer Consumer Data Set (CPCDS), providing a set of resources that payers can display to consumers via a FHIR API. See the <a href="toc.html">Table of Contents</a> for more information.</p>
<h3>Log of Continuous Integration Build Changes</h3>
<ul>
<li>Interim Version 0.1.11 - November 12+, 2020 </li>
<ol>
<li>Minor edits to capability statement narrative. (not a functional change)</li>
<li>Move a figure in the usecase section.</li>
</ol>
<li>Interim Version 0.1.10 - November 11, 2020</li>
<ol>
<li>updates based on Financial Management feedback</li>
<li>cleaned up and clarified verbiage</li>
<li>replaced CARIN defined code systems with terminology.HL7.org code systems where available</li>
</ol>
<li>Interim Version 0.1.9 - November 2, 2020</li>
<ol>
<li>Improved notes on all profiles</li>
<li>Updated examples</li>
<li>Updated JiraSpec xml and package-list.json</li>
</ol>
<li>Interim Version 0.1.8 - October 26, 2020</li>
<ol>
<li>Improved notes on all profiles</li>
<li>Cleaned up many QA issues</li>
<li>Bound discharge status value set in EOB Outpatient</li>
<li>Refreshed all CPCDS attachments</li>
</ol>
<li>Interim Version 0.1.7 - October 19, 2020</li>
<ol>
<li>Updated examples with pseudo-FSH annotations. Added easier to read examples page.</li>
<li>Added easier to read search parameter page.</li>
<li>Added implementation notes for all profiles.</li>
<li>Added invariant on Practitioner requiring NPI or Tax ID.</li>
</ol>
<li>Interim Version 0.1.6 - October 14, 2020</li>
<ol>
<li>Updates to MS and cardinality of various fields in EOB profiles and Patient profile. Note that some supportingInfo slices now have cardinality 1..1.</li>
<li>Removed: "The inoutnetwork slice of total is now incorporated into supportingInfo, where it is a better fit." This was a misunderstanding.</li>
<li>The graphic comparing non-EOB profiles has been updated.</li>
<li>Correction to slicing of Patient.identifier that lead to weird rendering issue in IG Publisher.</li>
<li>The short descriptions on all CPCDS-related fields/slices have been updated.</li>
</ol>
<li>Interim Version 0.1.5 - October 9, 2020</li>
<ol>
<li>Updates to MS and cardinality of various fields in EOB profiles and Patient profile. Note that some supportingInfo slices now have cardinality 1..1.</li>
<li>The inoutnetwork slice of total is now incorporated into supportingInfo, where it is a better fit. This change may not be complete.</li>
<li>Correction to slicing of Organization.identifier that lead to weird rendering issue in IG Publisher.</li>
<li>Correction to slicing of item.adjudication in EOB profiles. All slicing definitions are now consistent across these profiles.</li>
<li>Examples for all profiles. Remaining validation errors are due to HL7 terminology issues, not with the examples.</li>
</ol>
<li>Interim Version 0.1.4 - October 7, 2020</li>
<ol>
<li>Updated all invariants.</li>
<li>Updated C4BB Codesystems, ValueSets and Codesystem Stubs. Minor changes to content of C4BB (locally defined) codesystems, and changes to the defining URLs of external codesystems.</li>
<li>Examples for all profiles. Remaining validation errors are due to HL7 terminology issues, not with the examples.</li>
<li>Added description of PDex to <a href="Background.html#relation-to-other-IGs">to the background material</a>.</li>
</ol>
<li>Interim Version 0.1.3 - September 8, 2020</li>
<ol>
<li>Pat's updates to CodeSystem stubs and Codesystems/Valuesets.</li>
<li>Updates to Graphics.</li>
<li>Changed references from CARIN-BB to C4BB, including profile, codesystem, and valueset names.</li>
<li>Changed naming convention for releases to Release.Ballot.Version.</li>
</ol>
<li>Interim Version 0.1.2 - August 28, 2020</li>
<ol>
<li>Update to <a href="CARINBBResourcesv17.png">EOBComparisonv17</a> from Pat, still in draft form.</li>
<li>Created Codesystem stubs for all key external codesystems referenced by IG, along with corresponding ValueSets.</li>
<li>Further corrections to capability statement based on Igor comments. supported_profiles vs profiles still deferred.</li>
<li>Resolved all but a handful of remaining comments relating to BV1, BV2, BV2a, BV4, BV6</li>
</ol>
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
<li>Mark Roberts (Leavitt Partners, LLC) -&nbsp;<a href="mailto:mark.roberts@leavittpartners.com">mark.roberts@leavittpartners.com</a></li>
<li>Saul A. Kravitz (The MITRE Corporation) -&nbsp;<a href="mailto:saul@mitre.org">saul@mitre.org</a></li>
<li>Igor Sirkovich (Smile CDR, Inc.) -&nbsp;<a href="mailto:igor@smilecdr.com">igor@smilecdr.com</a></li>   
<li>Josh Lamb (UPMC) -&nbsp;<a href="mailto:igor@smilecdr.com">lambj4@upmc.edu</a></li> 
<li>HL7 Payer/Provider Information Exchange</li>
</ul>
</li>
</ul>
<h3>Acknowledgements</h3>
<p>The CARIN Consumer Directed Payer Data Exchange Implementation Guide is also known as the CARIN IG for Blue Button&reg; Implementation Guide. This IG was developed using <a href="https://build.fhir.org/ig/HL7/fhir-shorthand/">FHIR Shorthand syntax</a> and the <a href="https://github.com/FHIR/sushi">SUSHI</a> tookit, a free, open source toolchain from the MITRE Corporation. Valuable guidance on FSH and FHIR slicing was provided by Chris Moesel. The capability statements were developed with tools and valuable guidance from Eric Haas.</p>
<div class="footnote"><sup>[<a href="#id1" name="ftn.id1">*</a>]</sup>Blue Button, the slogan, 'Download My Data,' the Blue Button Logo, and the Blue Button combined logo are registered service marks owned by the U.S. Department of Health and Human Services.</div>