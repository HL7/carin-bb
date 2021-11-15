<h4>Synonyms:</h4>
<ul>
<li>The Implementation Guide considers a health plan patient / beneficiary / member to be synonymous.&nbsp; The subscriber is the member who carries the health coverage.&nbsp; Subscriber synonyms include policy holder / insured.&nbsp; The payer synonyms are insurer / health plan / payor</li>
<li>The practitioner functional roles of performing, rendering and servicing are synonymous.&nbsp; CPCDS uses performing</li>
<li>The terms institutional and facility are synonymous.&nbsp; CPCDS uses institutional</li>
<li>The terms allowed and eligible are synonymous.&nbsp; CPCDS uses eligible</li>
<li>The terms disallowed and noncovered are synonymous.&nbsp; CPCDS uses noncovered</li>
</ul>
<h4>Other Payer</h4>
<p>CPCDS modified the concept of primary payer to other payer to accommodate situations when multiple prior payers are involved.&nbsp; Each amount paid by the other payer should be listed separately.</p>
<h4>Paths to the Patient Resource</h4>
<p>There are two paths to get to the Patient Resource and the data elements represented inside the Patient Resource:&nbsp;&nbsp;EOB.patient(Patient) and EOB.insurance.coverage(Coverage).beneficiary(Patient)</p>
<h4>Notes on Fields</h4>
<ul>
<li>The EOB FHIR Resource defines a comprehensive set of data elements.&nbsp; Many of them are not relevant to this use case.&nbsp; When reviewing the Profile Snapshot, several data elements previously hidden are now exposed.&nbsp; Fields intended for consideration to be provided in the API are marked as <a href="3_General_Guidance.html#must-support">Must Support</a>; i.e., a red <span style="color: #ffffff; background-color: #ff0000;">S</span> or have a minimum cardinality of 1.&nbsp; All other data elements are not expected to be sent by a Responder; if they are sent a Requestor can choose to ignore them</li>
<li>.meta.lastUpdated:&nbsp;Payers SHALL provide the last time the data was updated or the date of creation in the payer&rsquo;s system of record, whichever comes last.</li>
<li>.status:&nbsp; value =Expected values are active or cancelled. To comply with the CMS rule, draft EOBs are not required.&nbsp;</li>
<li>.type&nbsp;Defines the Claims profiles. Values from Claim Type Codes are required; data absent reason is not allowed</li>
<li>.use:&nbsp;The CMS rule applies to adjudicated claims; it does not require preauthorizations or predeterminations.</li>
<li>.patient&nbsp; Additional required path:EOB.insurance.coverage(Coverage).beneficiary(Patient).identifier</li>
<li>.insurer&nbsp; Same as insurance.coverage.organization.&nbsp; Party responsible for reimbursing the provider</li>
<li>.outcome:&nbsp; value = complete</li>
<li>.related:&nbsp; .related:  Adjustment requests are used to change an original ExplanationOfBenefit information. The original payment can be increased or decreased, billed units can be changed, or other changes may occur. ExplanationOfBenefit.related captures the identifier of the prior / new ExplanationOfBenefit. 
If the current adjusts a prior ExplanationOfBenefit, .related.reference = the prior ExplanationOfBenefit identifier and related.relationship value = 'prior'. 
If the current ExplanationOfBenefit has been adjusted; related.reference = the ExplanationOfBenefit.identifier of the adjusting ExplanationOfBenefit and related.relationship value = 'replacedby'.   
The .related.reference contains the identifier of the immediately preceding or following ExplanationOfBenefit, not the first or last.</li>
<li>.supportinginfo.sequence rule:&nbsp; client app implementations should look-up supportingInfo elements based on category values instead of sequence values</li>
<li>.careTeam.sequence rule:&nbsp; careTeam.sequence values uniquely identify careTeam members.&nbsp; They do not necessarily indiate any order in which the patient was seen by the careTeam or identify any level of significance of the careTeam to the patient, etc.&nbsp; Client app implementations should not assign any significance to the sequence values.&nbsp;&nbsp;&nbsp;</li>
<li>.insurance:&nbsp;&nbsp;Define an invariant:&nbsp; Will have multiple occurrences on secondary / tertiary, etc. claims.&nbsp; Up to one occurrence, that of the ExplanationOfBenefit.insurer, will have a boolean value = 'True'.&nbsp;</li>
<li>.insurance.focal:&nbsp; If there is an occurrence, with focal = true, EOB.insurance.coverage.payor =&nbsp; EOB.insurer is the same as EOB.insurance.coverage.payor.&nbsp;&nbsp; (Coverage.payor is 1..1).&nbsp; There can be&nbsp; 0 or * occurrences with focal = false</li>
<li>.insurance.coverage:&nbsp; When focal = true, Coverage.payer--&gt; Organization.identifier.&nbsp; When focal = false, EOB.insurance.coverage.display = [name of other carrier]&nbsp;&nbsp;</li>
<li>.insurance.coverage:&nbsp; Same as insurance.coverage.organization.&nbsp; Party responsible for reimbursing the provider.</li>
<li>.item.noteNumber:&nbsp; References number of the associated processNote entered</li>
<li>The CPCDS data elements are defined in the data element comments.&nbsp; The numbers, e.g. (1), following the data element descriptions in the comments correlate to the MapID in the&nbsp;<a href="CPCDSDataDictionary.docx" >CPCDS Data Dictionary</a>&nbsp;and the&nbsp;<a href="CPCDStoFHIRProfilesMapping.xlsx">Mapping Worksheet</a>&nbsp;as described&nbsp;<a href="4_Common_Payer_Consumer_Data_Set.html">here.</a></li>
<li>meta.profile is required as a matter of convenience of receiving systems. The meta.profile should be used by the Server to hint/assert/declare that this instance conforms to one (or more) stated profiles (with business versions). meta.profile does not capture any business logic, processing directives, or semantics (for example, inpatient or outpatient). Clients should not assume that the Server will exhaustively indicate all profiles with all versions that this instance conforms to. Clients can (and should) perform their own validation of conformance to the indicated profile(s) and to any other profiles of interest.</li>
</ul>