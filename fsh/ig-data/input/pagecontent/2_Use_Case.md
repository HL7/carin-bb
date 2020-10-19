
<h3 id="terms-and-concepts">Terms and Concepts</h3>
<table class="codes" border="1">
<thead>
<tr>
<td><strong>Term</strong></td>
<td><strong>Definition</strong></td>
</tr>
</thead>
<tbody>
<tr>
<td>Subscriber</td>
<td>An individual or entity that selects benefits offered by an entity, such as an employer, government, or insurance company</td>
</tr>
<tr>
<td>Dependent</td>
<td>An individual, other than the subscriber, who has insurance coverage under the benefits selected by a subscriber</td>
</tr>
<tr>
<td>Member</td>
<td>Any individual covered by the benefits offered by an entity, such as an employer or insurance company</td>
</tr>
<tr>
<td>Beneficiary</td>
<td>Any individual that selects or is covered by benefits provided by government programs</td>
</tr>
<tr>
<td>Patient</td>
<td>
<p>An individual who has received, is receiving or intends to receive health care services. (Health care services as defined by federal and state regulations.)</p>
</td>
</tr>
<tr>
<td>Personal Representative</td>
<td>Per the HIPAA privacy regulations at 45 CFR 164.502(g), a <a href="https://www.hhs.gov/hipaa/for-professionals/privacy/guidance/personal-representatives/index.html">personal-representative</a> is someone authorized under state or other applicable law to act on behalf of the individual in making health care related decisions (such as a parent, guardian, or person with a medical power of attorney)</td>
</tr>
<tr>
<td>Coordination of Benefits</td>
<td>The process of determining which of two or more insurance policies will have the primary responsibility of processing/paying a claim and the extent to which the other policies will contribute</td>
</tr>
<tr>
<td>Payer</td>
<td>
<p>Public or private party which offers and/or administers health insurance plan(s) or coverage and/or pays claims directly or indirectly. Examples include:</p>
<ul>
<li>Insurance Company</li>
<li>Health Maintenance Organization</li>
<li>Medicare</li>
<li>Third-party Administrator</li>
<li>Repricer</li>
</ul>
</td>
</tr>
<tr>
<td>Encounter data vs Claims</td>
<td>Encounter data means the information or data relating to the receipt of any item(s) or service(s) by an enrollee under a contract between a State and a managed care plan. Encounter data are conceptually equivalent to the paid claims records that state Medicaid agencies create when they pay providers on a FFS basis</td>
</tr>
<tr>
<td>EOB.careteam</td>
<td>The members of the team or organization who contributed to the service to the patient submitted on the claim by the billing provider to the payer</td>
</tr>
<tr>
<td>CareTeam Resource</td>
<td>The Care Team includes all the people and organizations who plan to participate in the coordination and delivery of care for a patient</td>
</tr>
</tbody>
</table>
<h3 id="use-cases">Use Case - Consumer Access to their Claims Data</h3>
<h4>Background</h4>
<p>Consumer-directed exchange occurs when a consumer or an authorized caregiver invokes their HIPAA Individual Right of Access (45 CFR 164.524) and requests their digital health information from a HIPAA covered entity (CE) via an application or other third-party data steward.&nbsp;</p>
<h4>Technical Workflow</h4>
<p><img style="width: 100%; float: none; align: middle;" src="CARINSequence.png" /> Actors:</p>
<ul>
<li>Consumer (aka Subscriber, Beneficiary, Patient, or Personal Representative)</li>
<li>Consumer App- A digital third-party application selected by and primarily for the Consumer with a consumer-facing user interface</li>
<li>Health Plan API (aka Payer, Covered Entity)</li>
<li>Health Plan&rsquo;s Identity and Access Authorization server</li>
</ul>
<p>Flow:</p>
<ol>
<li>Consumer App presents a list of potential Payers / Health Plans to access to the Consumer.</li>
<li>Consumer selects the Payer / Health Plan.</li>
<li>Consumer App opens the link to the Health Plan's Identity and Access Authorization server.</li>
<li>Consumer enters the credentials.</li>
<li>Health Plan's Identity and Access Authorization server validates the credentials, generates and returns to the Consumer App an OIDC token with Consumer and authorized patient/beneficiary identities encoded.</li>
<li>Consumer App successfully links the user to the Payer / Health Plan and notifies the Consumer.</li>
<li>Consumer requests the Consumer App to fetch Explanation Of Benefit records.</li>
<li>Consumer App generates and sends to the Health Plan's CARIN IG for Blue Button&reg; enabled FHIR API a request (which includes Patient ID, and token from the step #5) to fetch the Explanation Of Benefit (EOB) and supporting reference FHIR resources.</li>
<li>Health Plan's CARIN IG for Blue Button&reg; enabled FHIR API responds with a bundle of the requested EOB and supporting reference FHIR resources.</li>
<li>Consumer App presents the EOB and supporting reference FHIR resources to the Consumer.</li>
</ol>
<h3>Personas and Patient Stories</h3>
<p><strong>TBD</strong></p>
<p>&nbsp;</p>

