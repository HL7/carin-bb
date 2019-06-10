---
title: Claim mapping
layout: default
active: Claim mapping
---

<style>
	th {
	  background-color:rgb(104,125,161) ;
	  color: white;
	}
	tr:nth-child(even) {background-color:rgb(235,236,240);}  
	tr:nth-child(odd) {background-color:rgb(212,215,224);}
</style>
<table border="1">
	<thead>
		<tr>
			<th> # </th>
			<th> CPCDS Element </th>
			<th> R4 Resource </th>
			<th> Profile Element </th>
			<th> Description</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>Claim service start date</td>
			<td>ExplanationOfBenefit</td>
			<td>.billablePeriod</td>
			<td></td>
		</tr>
		<tr>
			<td>2</td>
			<td>Claim service end date</td>
			<td>ExplanationOfBenefit</td>
			<td>.billablePeriod</td>
			<td></td>
		</tr>
		<tr>
			<td>3</td>
			<td>Claim paid date</td>
			<td>ExplanationOfBenefit</td>
			<td>.payment.date</td>
			<td></td>
		</tr>
		<tr>
			<td>4</td>
			<td>Claim received date</td>
			<td>ExplanationOfBenefit</td>
			<td>.claimReceived (Extension)</td>
			<td></td>
		</tr>
		<tr>
			<td>5</td>
			<td>Member admission date </td>
			<td>ExplanationOfBenefit.supportingInfo.valueReference(Encounter)</td>
			<td>.period</td>
			<td>The date corresponding with the onset of services. [inpatient]</td>
		</tr>
		<tr>
			<td>6</td>
			<td>Member discharge date</td>
			<td>ExplanationOfBenefit.supportingInfo.valueReference(Encounter)</td>
			<td>.period</td>
			<td>[inpatient]</td>
		</tr>
		<tr>
			<td>7</td>
			<td>Patient account number</td>
			<td>Patient</td>
			<td>.identifier</td>
			<td>Provider submitted information that can be included on the claim</td>
		</tr>
		<tr>
			<td>8</td>
			<td>Medical record number</td>
			<td>Patient</td>
			<td>.identifier</td>
			<td></td>
		</tr>
		<tr>
			<td>9</td>
			<td>Claim unique identifier</td>
			<td>ExplanationOfBenefit</td>
			<td>.identifier</td>
			<td></td>
		</tr>
		<tr>
			<td>10</td>
			<td>Claim adjusted from</td>
			<td>ExplanationOfBenefit</td>
			<td>.related</td>
			<td>TBD: merged claims</td>
		</tr>
		<tr>
			<td>11</td>
			<td>Claim adjusted to</td>
			<td>ExplanationOfBenefit</td>
			<td>.related</td>
			<td></td>
		</tr>
		<tr>
			<td>12</td>
			<td>Claim diagnosis related group</td>
			<td>ExplanationOfBenefit</td>
			<td>.supportingInfo.{category, code}</td>
			<td>[inpatient]</td>
		</tr>
		<tr>
			<td>13</td>
			<td>Claim inpatient source admission code</td>
			<td>ExplanationOfBenefit.supportingInfo.valueReference(Encounter)</td>
			<td>.hospitalization.admitSource</td>
			<td>[inpatient]</td>
		</tr>
		<tr>
			<td>14</td>
			<td>Claim inpatient admission type code</td>
			<td>ExplanationOfBenefit.supportingInfo.valueReference(Encounter)</td>
			<td>.type</td>
			<td>[inpatient]</td>
		</tr>
		<tr>
			<td>15</td>
			<td>Claim bill facility type code</td>
			<td>ExplanationOfBenefit</td>
			<td>.supportingInfo.{category, code}</td>
			<td>Type of bill code structure - Type of facility</td>
		</tr>
		<tr>
			<td>16</td>
			<td>Claim service classification type code</td>
			<td>ExplanationOfBenefit</td>
			<td>.supportingInfo.{category, code</td>
			<td>Type of bill code structure - Type of care</td>
		</tr><tr>
			<td>17</td>
		 <td>Claim frequency code</td>
			<td>ExplanationOfBenefit</td>
			<td>.supportingInfo.{category, code}</td>
		 <td>Type of bill code structure - Sequence in this episode of care</td>
		</tr><tr>
			<td>18</td>
		<td>Claim status code </td>
			<td>ExplanationOfBenefit</td>
			<td>.status</td>
		<td>denied,completed,etc</td>
		</tr>
		<tr>
			<td>19</td>
			<td>Claim type code</td>
			<td>ExplanationOfBenefit</td>
			<td>.type</td>
			<td>Medical, vision, oral</td>
		</tr>
		<tr>
			<td>20</td>
			<td>Patient discharge status code</td>
			<td>ExplanationOfBenefit.supportingInfo.valueReference(Encounter)</td>
			<td>.hospitalization.dischargeDisposition</td>
			<td>[facility]</td>
		</tr>
		<tr>
			<td>21</td>
			<td>Claim payment denial code</td>
			<td>ExplanationOfBenefit</td>
			<td>.adjudication.{category, reason}</td>
			<td>The code on a non-institutional claim indicating to whom payment was made or if the claim was denied / The reason that no Medicare payment is made for services on an institutional claim. (CARC/RARC, excd disallowed code)</td>
		</tr>
		<tr>
			<td>22</td>
			<td>Claim primary payer code</td>
			<td>ExplanationOfBenefit</td>
			<td>.insurance.{focal=false, coverage(Coverage).{payor(Organization).identifier, order=1}}</td>
			<td>Type of carrier</td>
		</tr>
		<tr>
			<td>23</td>
			<td>Claim payee type code</td>
			<td>ExplanationOfBenefit</td>
			<td>.payee.type</td>
			<td>Recipient of benefits payable</td>
		</tr>
		<tr>
			<td>24</td>
			<td>Claim payee</td>
			<td>ExplanationOfBenefit</td>
			<td>.payee.party</td>
			<td>Recipient reference</td>
		</tr>
	</tbody>
	<thead>
		<tr>
			<th> # </th>
			<th> CPCDS Element </th>
			<th> R4 Resource </th>
			<th> Profile Element </th>
			<th> Description</th>
		</tr>
		<tr>
			<td colspan="5" style="text-align:center;">Provider</td>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>Claim billing provider NPI</td>
			<td>ExplanationOfBenefit.enterer(PractitionerRole)</td>
			<td>.identifier</td>
			<td></td>
		</tr>
		<tr>
			<td>2</td>
			<td>Claim billing provider network status</td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>3</td>
			<td>Claim attending physician NPI</td>
			<td>ExplanationOfBenefit</td>
			<td>.careTeam.{sequence, provider(PractitionerRole).identifier, responsible=true, role=supervising}</td>
			<td>Physician who has overall responsibility for the beneficiary's care and treatment [institutional]</td>
		</tr>
		<tr>
			<td>4</td>
			<td>Claim attending physician network status</td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>5</td>
			<td>Claim site of service NPI</td>
			<td>ExplanationOfBenefit.facility(Location)</td>
			<td>.identifier</td>
			<td>The service location NPI will not be on the claim if it is the same as the billing provider NPI</td>
		</tr>
		<tr>
			<td>6</td>
			<td>Claim referring provider NPI</td>
			<td>ExplanationOfBenefit</td>
			<td>.careTeam.{sequence, provider(PractitionerRole).identifier, role=referrer}</td>
			<td></td>
		</tr>
		<tr>
			<td>7</td>
			<td>Claim referring provider network status</td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>8</td>
			<td>Claim performing provider NPI</td>
			<td>ExplanationOfBenefit.provider(PractitionerRole)</td>
			<td>.identifier</td>
			<td>Rendering/servicing/operating/prescribing provider</td>
		</tr>
		<tr>
			<td>9</td>
			<td>Claim performing provider network status</td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>10</td>
			<td>Claim PCP</td>
			<td>ExplanationOfBenefit</td>
			<td>.careTeam.{sequence, provider(PractitionerRole).identifier, role=pcp}</td>
			<td></td>
		</tr>
	</tbody>
	<thead>
		<tr>
			<th> # </th>
			<th> CPCDS Element </th>
			<th> R4 Resource </th>
			<th> Profile Element </th>
			<th> Description</th>
		</tr>
		<tr>
			<td colspan="5" style="text-align:center;">Amounts</td>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>Claim total submitted amount</td>
			<td>ExplanationOfBenefit</td>
			<td>.total.{category="submitted"}</td>
			<td>Submitted charge amount</td>
		</tr>
		<tr>
			<td>2</td>
			<td>Claim total allowed amount</td>
			<td>ExplanationOfBenefit</td>
			<td>.total.{category="eligible"}</td>
			<td></td>
		</tr>
		<tr>
			<td>3</td>
			<td>Amount paid by patient</td>
			<td>ExplanationOfBenefit</td>
			<td>.total.{category="paidbypatient"}</td>
			<td>Includes all copayments, coinsurance, deductible, or other patient payment amounts [pharmacy]</td>
		</tr>
		<tr>
			<td>4</td>
			<td>Claim amount paid to provider</td>
			<td>ExplanationOfBenefit</td>
			<td>.total.{category="paidtoprovider"}</td>
			<td></td>
		</tr>
		<tr>
			<td>5</td>
			<td>Member reimbursement</td>
			<td>ExplanationOfBenefit</td>
			<td>.total.{category="paidtopatient"}</td>
			<td></td>
		</tr>
		<tr>
			<td>6</td>
			<td>Claim payment amount</td>
			<td>ExplanationOfBenefit</td>
			<td>.total.{category="benefit"}</td>
			<td>By Payer</td>
		</tr>
		<tr>
			<td>7</td>
			<td>Claim disallowed amount</td>
			<td>ExplanationOfBenefit</td>
			<td>.total.{category="noncovered"}</td>
			<td></td>
		</tr>
		<tr>
			<td>8</td>
			<td>Member paid deductible</td>
			<td>ExplanationOfBenefit</td>
			<td>.total.{category="deductible"}</td>
			<td></td>
		</tr>
		<tr>
			<td>9</td>
			<td>Co-insurance liability amount</td>
			<td>ExplanationOfBenefit</td>
			<td>.total.{category="coins"}</td>
			<td></td>
		</tr>
		<tr>
			<td>10</td>
			<td>Copay amount</td>
			<td>ExplanationOfBenefit</td>
			<td>.total.{category="copay"}</td>
			<td></td>
		</tr>
		<tr>
			<td>11</td>
			<td>Member liability</td>
			<td>ExplanationOfBenefit</td>
			<td>.total.{category="patientliability"}</td>
			<td>e.g. Non-contracted provider</td>
		</tr>
		<tr>
			<td>12</td>
			<td>Claim primary payer paid amount</td>
			<td>ExplanationOfBenefit</td>
			<td>.adjudication.{category="priorpayerbenefit"}</td>
			<td></td>
		</tr>
	</tbody>
	<thead>
		<tr>
			<th> # </th>
			<th> CPCDS Element </th>
			<th> R4 Resource </th>
			<th> Profile Element </th>
			<th> Description</th>
		</tr>
		<tr>
			<td colspan="5" style="text-align:center;"> Drug </td>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>Days supply</td>
			<td>ExplanationOfBenefit.supportingInfo.{category, valueReference(MedicationDispense<sup>1</sup>)}</td>
			<td>.daysSupply</td>
			<td>Number of days' supply of medication dispensed by the pharmacy </td>
		</tr>
		<tr>
			<td>2</td>
			<td>RX service reference number</td>
			<td>ExplanationOfBenefit.supportingInfo.{category, valueReference(MedicationDispense<sup>1</sup>)}</td>
			<td>.identifier</td>
			<td>Assigned by the pharmacy at the time the prescription is filled</td>
		</tr>
		<tr>
			<td>3</td>
			<td>DAW product selection code</td>
			<td>ExplanationOfBenefit.supportingInfo.{category, valueReference(MedicationDispense<sup>1</sup>)}</td>
			<td>.substitution.{wasSubstituted, type, reason}</td>
			<td>Prescriber's instruction regarding substitution of generic equivalents or order to dispense the specific prescribed medication </td>
		</tr>
		<tr>
			<td>4</td>
			<td>Refill number</td>
			<td>ExplanationOfBenefit.supportingInfo.{category, valueReference(MedicationDispense<sup>1</sup>)}</td>
			<td>.{type, quantity}</td>
			<td>The number fill of the current dispensed supply (0, 1, 2, etc) </td>
		</tr>
		<tr>
			<td>5</td>
			<td>Prescription origin code</td>
			<td>ExplanationOfBenefit.supportingInfo.{category, valueReference(MedicationDispense<sup>1</sup>)}</td>
			<td>?</td>
			<td>Whether the prescription was transmitted as an electronic prescription, by phone, by fax, or as a written paper copy
</td>
		</tr>
		<tr>
			<td>6</td>
			<td>Plan reported brand-generic code</td>
			<td>ExplanationOfBenefit.supportingInfo.{category, valueReference(MedicationDispense<sup>1</sup>)}</td>
			<td>.medicationReference(Medication<sup>3</sup>).isBrand</td>
			<td>Whether the plan adjudicated the claim as a brand or generic drug </td>
		</tr>
		<tr>
			<td>7</td>
			<td>Pharmacy service type code</td>
			<td>ExplanationOfBenefit.supportingInfo.{category, valueReference(MedicationDispense<sup>1</sup>)}</td>
			<td>.authorizingPrescription(MedicationRequest<sup>2</sup>).dispenseRequest.performer(Organization).type</td>
			<td>Type of pharmacy that dispensed the prescription</td>
		</tr>
		<tr>
			<td>8</td>
			<td>Patient residence code</td>
			<td>ExplanationOfBenefit.supportingInfo.{category, valueReference(MedicationDispense<sup>1</sup>)}</td>
			<td>.destination(Location)</td>
			<td>Where the beneficiary lived when the prescription was filled</td>
		</tr>
	</tbody>
</table>

<br>
<sup>1</sup> <a href="http://hl7.org/fhir/us/phcp/StructureDefinition/PhCP-MedicationDispense">http://hl7.org/fhir/us/phcp/StructureDefinition/PhCP-MedicationDispense</a>
<br>
<sup>2</sup> <a href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest">http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest</a>
<br>
<sup>3</sup> <a href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-medication">http://hl7.org/fhir/us/core/StructureDefinition/us-core-medication</a>