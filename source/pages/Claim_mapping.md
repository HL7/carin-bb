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
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>Claim service start date</td>
			<td>ExplanationOfBenefit</td>
			<td>.billablePeriod</td>
		</tr>
		<tr>
			<td>2</td>
			<td>Claim service end date</td>
			<td>ExplanationOfBenefit</td>
			<td>.billablePeriod</td>
		</tr>
		<tr>
			<td>3</td>
			<td>Claim paid date</td>
			<td>ExplanationOfBenefit</td>
			<td>.payment.date</td>
		</tr>
		<tr>
			<td>4</td>
			<td>Claim received date</td>
			<td>ExplanationOfBenefit</td>
			<td>.claimReceived (Extension)</td>
		</tr>
		<tr>
			<td>5</td>
			<td>Member admission date</td>
			<td>ExplanationOfBenefit.supportingInfo.valueReference(Encounter)</td>
			<td>.period</td>
		</tr>
		<tr>
			<td>6</td>
			<td>Member discharge date</td>
			<td>ExplanationOfBenefit.supportingInfo.valueReference(Encounter)</td>
			<td>.period</td>
		</tr>
		<tr>
			<td>7</td>
			<td>Patient account number</td>
			<td>Patient</td>
			<td>.identifier</td>
		</tr>
		<tr>
			<td>8</td>
			<td>Medical record number</td>
			<td>Patient</td>
			<td>.identifier</td>
		</tr>
		<tr>
			<td>9</td>
			<td>Claim unique identifier</td>
			<td>ExplanationOfBenefit</td>
			<td>.identifier</td>
		</tr>
		<tr>
			<td>10</td>
			<td>Claim adjusted from</td>
			<td>ExplanationOfBenefit</td>
			<td>.related</td>
		</tr>
		<tr>
			<td>11</td>
			<td>Claim adjusted to</td>
			<td>ExplanationOfBenefit</td>
			<td>.related</td>
		</tr>
		<tr>
			<td>12</td>
			<td>Claim diagnosis related group</td>
			<td>ExplanationOfBenefit</td>
			<td>.supportingInfo.{category, code}</td>
		</tr>
		<tr>
			<td>13</td>
			<td>Claim inpatient source admission code</td>
			<td>ExplanationOfBenefit.supportingInfo.valueReference(Encounter)</td>
			<td>.hospitalization.admitSource</td>
		</tr>
		<tr>
			<td>14</td>
			<td>Claim inpatient admission type code</td>
			<td>ExplanationOfBenefit.supportingInfo.valueReference(Encounter)</td>
			<td>.type</td>
		</tr>
		<tr>
			<td>15</td>
			<td>Claim bill facility type code</td>
			<td>ExplanationOfBenefit</td>
			<td>.supportingInfo.{category, code}</td>
		</tr>
		<tr>
			<td>16</td>
			<td>Claim service classification type code</td>
			<td>ExplanationOfBenefit</td>
			<td>.supportingInfo.{category, code</td>
		</tr><tr>
			<td>17</td>
			<td>Claim frequency code</td>
			<td>ExplanationOfBenefit</td>
			<td>.supportingInfo.{category, code}</td>
		</tr><tr>
			<td>18</td>
			<td>Claim status code</td>
			<td>ExplanationOfBenefit</td>
			<td>.status</td>
		</tr>
		<tr>
			<td>19</td>
			<td>Claim type code</td>
			<td>ExplanationOfBenefit</td>
			<td>.type</td>
		</tr>
		<tr>
			<td>20</td>
			<td>Claim sub type code</td>
			<td>ExplanationOfBenefit</td>
			<td>.subType</td>
		</tr>
		<tr>
			<td>21</td>
			<td>Patient discharge status code</td>
			<td>ExplanationOfBenefit.supportingInfo.valueReference(Encounter)</td>
			<td>.hospitalization.dischargeDisposition <a href="https://bluebutton.cms.gov/resources/variables/ptnt_dschrg_stus_cd/">(Patient Discharge Status Code)</a></td>
		</tr>
		<tr>
			<td>22</td>
			<td>Claim payment denial code</td>
			<td>ExplanationOfBenefit</td>
			<td>.adjudication.{category, reason}</td>
		</tr>
		<tr>
			<td>23</td>
			<td>Claim primary payer code</td>
			<td>ExplanationOfBenefit</td>
			<td>?</td>
		</tr>
		<tr>
			<td>24</td>
			<td>Claim payee type code</td>
			<td>ExplanationOfBenefit</td>
			<td>.payee.type</td>
		</tr>
		<tr>
			<td>25</td>
			<td>Claim payee</td>
			<td>ExplanationOfBenefit</td>
			<td>.payee.party</td>
		</tr>
	</tbody>
	<thead>
		<tr>
			<th> # </th>
			<th> CPCDS Element </th>
			<th> R4 Resource </th>
			<th> Profile Element </th>
		</tr>
		<tr>
			<th colspan="4" style="text-align:center;"> Provider </th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>Claim billing provider NPI</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>2</td>
			<td>Claim billing provider network status</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>3</td>
			<td>Claim attending physician NPI</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>4</td>
			<td>Claim attending physician network status</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>5</td>
			<td>Claim site of service NPI</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>6</td>
			<td>Claim referring provider NPI</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>7</td>
			<td>Claim referring provider network status</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>8</td>
			<td>Claim performing provider NPI</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>9</td>
			<td>Claim performing provider network status</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>10</td>
			<td>Claim operating physician NPI</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>11</td>
			<td>Claim operating physician network status</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>12</td>
			<td>Claim other physician NPI</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>13</td>
			<td>Claim other physician network status</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>14</td>
			<td>Claim rendering physician NPI</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>15</td>
			<td>Claim rendering physician network status</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>16</td>
			<td>Claim service location NPI</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>17</td>
			<td>Claim PCP</td>
			<td></td>
			<td></td>
		</tr>
	</tbody>
	<thead>
		<tr>
			<th> # </th>
			<th> CPCDS Element </th>
			<th> R4 Resource </th>
			<th> Profile Element </th>
		</tr>
		<tr>
			<th colspan="4" style="text-align:center;"> Amounts </th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>Claim total submitted amount</td>
			<td>ExplanationOfBenefit</td>
			<td>.total.{category="submitted"}</td>
		</tr>
		<tr>
			<td>2</td>
			<td>Claim total allowed amount</td>
			<td>ExplanationOfBenefit</td>
			<td>.total.{category="eligible"}</td>
		</tr>
		<tr>
			<td>3</td>
			<td>Amount paid by patient</td>
			<td>ExplanationOfBenefit</td>
			<td>.total.{category="paidbypatient"}</td>
		</tr>
		<tr>
			<td>4</td>
			<td>Claim amount paid to provider</td>
			<td>ExplanationOfBenefit</td>
			<td>.total.{category="paidtoprovider"}</td>
		</tr>
		<tr>
			<td>5</td>
			<td>Member reimbursement</td>
			<td>ExplanationOfBenefit</td>
			<td>.total.{category="paidtopatient"}</td>
		</tr>
		<tr>
			<td>6</td>
			<td>Claim payment amount</td>
			<td>ExplanationOfBenefit</td>
			<td>.total.{category="benefit"}</td>
		</tr>
		<tr>
			<td>7</td>
			<td>Claim disallowed amount</td>
			<td>ExplanationOfBenefit</td>
			<td>.adjudication.{category="non-covered"}</td>
		</tr>
		<tr>
			<td>8</td>
			<td>Member paid deductible</td>
			<td>ExplanationOfBenefit</td>
			<td>.total.{category="deductible"}</td>
		</tr>
		<tr>
			<td>9</td>
			<td>Co-insurance liability amount</td>
			<td>ExplanationOfBenefit</td>
			<td>.total.{category="coins"}</td>
		</tr>
		<tr>
			<td>10</td>
			<td>Copay amount</td>
			<td>ExplanationOfBenefit</td>
			<td>.total.{category="copay"}</td>
		</tr>
		<tr>
			<td>11</td>
			<td>Member liability</td>
			<td>ExplanationOfBenefit</td>
			<td>.total.{category="patientliability"}</td>
		</tr>
		<tr>
			<td>12</td>
			<td>Claim primary payer paid amount</td>
			<td>ExplanationOfBenefit</td>
			<td>.adjudication.{category="priorpayerbenefit"}</td>
		</tr>
	</tbody>
	<thead>
		<tr>
			<th> # </th>
			<th> CPCDS Element </th>
			<th> R4 Resource </th>
			<th> Profile Element </th>
		</tr>
		<tr>
			<th colspan="4" style="text-align:center;"> Drug </th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>Days supply</td>
			<td>ExplanationOfBenefit.supportingInfo.{category, valueReference(MedicationDispense<sup>1</sup>)}</td>
			<td>.daysSupply</td>
		</tr>
		<tr>
			<td>2</td>
			<td>RX service reference number</td>
			<td>ExplanationOfBenefit.supportingInfo.{category, valueReference(MedicationDispense<sup>1</sup>)}</td>
			<td>.identifier</td>
		</tr>
		<tr>
			<td>3</td>
			<td>DAW product selection code</td>
			<td>ExplanationOfBenefit.supportingInfo.{category, valueReference(MedicationDispense<sup>1</sup>)}</td>
			<td>.substitution.{wasSubstituted, type, reason}</td>
		</tr>
		<tr>
			<td>4</td>
			<td>Refill number</td>
			<td>ExplanationOfBenefit.supportingInfo.{category, valueReference(MedicationDispense<sup>1</sup>)}</td>
			<td>.{type, quantity}</td>
		</tr>
		<tr>
			<td>5</td>
			<td>Prescription origin code</td>
			<td>ExplanationOfBenefit.supportingInfo.{category, valueReference(MedicationDispense<sup>1</sup>)}</td>
			<td>?</td>
		</tr>
		<tr>
			<td>6</td>
			<td>Plan reported brand-generic code</td>
			<td>ExplanationOfBenefit.supportingInfo.{category, valueReference(MedicationDispense<sup>1</sup>)}</td>
			<td>.medicationReference(Medication<sup>3</sup>).isBrand</td>
		</tr>
		<tr>
			<td>7</td>
			<td>Pharmacy service type code</td>
			<td>ExplanationOfBenefit.supportingInfo.{category, valueReference(MedicationDispense<sup>1</sup>)}</td>
			<td>.authorizingPrescription(MedicationRequest<sup>2</sup>).dispenseRequest.performer(Organization).type</td>
		</tr>
		<tr>
			<td>8</td>
			<td>Patient residence code</td>
			<td>ExplanationOfBenefit.supportingInfo.{category, valueReference(MedicationDispense<sup>1</sup>)}</td>
			<td>.destination(Location)</td>
		</tr>
	</tbody>
</table>

<br>
<sup>1</sup> <a href="http://hl7.org/fhir/us/phcp/StructureDefinition/PhCP-MedicationDispense">MedicationDispense</a>
<br>
<sup>2</sup> <a href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest">MedicationRequest</a>
<br>
<sup>3</sup> <a href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-medication">Medication</a>