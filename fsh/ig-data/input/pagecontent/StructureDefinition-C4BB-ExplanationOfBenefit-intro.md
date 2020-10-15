<h4 class="x_MsoNormal">Synonyms:</h4>
<ul>
<li class="x_MsoNormal">The Implementation Guide considers a health plan patient / beneficiary / member to be synonymous.&nbsp; The subscriber is the member who carries the health coverage.&nbsp; Subscriber synonyms include policy holder / insured.&nbsp; The payer synonyms are insurer / health plan / payor</li>
<li class="x_MsoNormal">The practitioner functional roles of performing, rendering and servicing are synonymous.&nbsp; CPCDS uses performing</li>
<li class="x_MsoNormal">The terms institutional and facility are synonymous.&nbsp; CPCDS uses institutional</li>
<li class="x_MsoNormal">The terms allowed and eligible are synonymous.&nbsp; CPCDS uses eligible</li>
<li class="x_MsoNormal">The terms disallowed and noncovered are synonymous.&nbsp; CPCDS uses noncovered</li>
</ul>
<h4 class="x_MsoNormal">Other Payer</h4>
<p class="x_MsoNormal">CPCDS modified the concept of primary payer to other payer to accommodate situations when multiple prior payers are involved.&nbsp; Each amount paid by the other payer should be listed separately.</p>
<h4 class="x_MsoNormal">Paths to the Patient Resource</h4>
<p class="x_MsoNormal">There are two paths to get to the Patient Resource and the data elements represented inside the Patient Resource:&nbsp;&nbsp;EOB.patient(Patient) and EOB.insurance.coverage(Coverage).beneficiary(Patient)</p>
<h4 class="x_MsoNormal">Notes on Fields</h4>
<ul>
<li class="x_MsoNormal">.type&nbsp; Defines the Claims profiles</li>
<li class="x_MsoNormal">.patient&nbsp; Additional required path:EOB.insurance.coverage(Coverage).beneficiary(Patient).identifier</li>
<li class="x_MsoNormal">.insurer&nbsp; Same as insurance.coverage.organization.&nbsp; Party responsible for reimbursing the provider</li>
<li class="x_MsoNormal">.supportinginfo.sequence rule:&nbsp; client app implementations should look-up supportingInfo elements based on category values instead of sequence values</li>
<li class="x_MsoNormal">.careTeam.sequence rule:&nbsp; careTeam.sequence values uniquely identify careTeam members.&nbsp; They do not necessarily indiate any order in which the patient was seen by the careTeam or identify any level of significance of the careTeam to the patient, etc.&nbsp; Client app implementations should not assign any significance to the sequence values.&nbsp;&nbsp;&nbsp;</li>
<li class="x_MsoNormal">.insurance:&nbsp;&nbsp;Define an invariant:&nbsp; Will have multiple occurrences on secondary / tertiary, etc. claims.&nbsp; Up to one occurrence, that of the ExplanationOfBenefit.insurer, will have a boolean value = 'True'.&nbsp;</li>
<li class="x_MsoNormal">.insurance.focal:&nbsp; If there is an occurrence, with focal = true, EOB.insurance.coverage.payor =&nbsp; EOB.insurer is the same as EOB.insurance.coverage.payor.&nbsp;&nbsp; (Coverage.payor is 1..1).&nbsp; There can be&nbsp; 0 or * occurrences with focal = false</li>
<li class="x_MsoNormal">.insurance.coverage:&nbsp; When focal = true, Coverage.payer--&gt; Organization.identifier.&nbsp; When focal = false, EOB.insurance.coverage.display = [name of other carrier]&nbsp;&nbsp;</li>
<li class="x_MsoNormal">.insurance.coverage:&nbsp; Same as insurance.coverage.organization.&nbsp; Party responsible for reimbursing the provider.</li>
<li class="x_MsoNormal">.item.noteNumber:&nbsp; References number of the associated processNote entered</li>
</ul>