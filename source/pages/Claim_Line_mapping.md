---
title: Claim Line mapping
layout: default
active: Claim Line mapping
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
			<th> Notes</th>
		</tr>
		<tr>
			<th colspan="5" style="text-align:center;"> Line Service Details </th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>Service (from) date</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.servicedDate OR .item.servicedPeriod</td>
			<td>Dispense/fill date (Rx)</td>
		</tr>
		<tr>
			<td>2</td>
			<td>Line number</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.sequence</td>
			<td></td>
		</tr>
		<tr>
			<td>3</td>
			<td>Service to date</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.servicedPeriod</td>
			<td></td>
		</tr>
		<tr>
			<td>4</td>
			<td>Type of service</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.category</td>
			<td></td>
		</tr>
		<tr>
			<td>5</td>
			<td>Place of service code</td>
			<td>ExplanationOfBenefit.item.locationReference(Location)</td>
			<td>.type</td>
			<td></td>
		</tr>
		<tr>
			<td>6</td>
			<td>Revenue center code</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.revenue</td>
			<td>The provider-assigned revenue code for each cost center for which a separate charge is billed (type of accommodation or ancillary) </td>
		</tr>
		<tr>
			<td>7</td>
			<td>Number of units</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.quantity</td>
			<td>Num of times service or procedure performed </td>
		</tr>
		<tr>
			<td>8</td>
			<td>Allowed number of units</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.adjudication.{category="units-allowed", value}</td>
			<td>Maximum allowed number of units</td>
		</tr>
		<tr>
			<td>9</td>
			<td>National drug code</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.productOrService OR .item.detail.productOrService</td>
			<td></td>
		</tr>
		<tr>
			<td>10</td>
			<td>Compound code</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.productOrService</td>
			<td>Whether or not the dispensed drug was compounded or mixed. </td>
		</tr>
		<tr>
			<td>11</td>
			<td>Quantity dispensed</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.detail.quantity</td>
			<td>Quantity dispensed for the drug. </td>
		</tr>
		<tr>
			<td>12</td>
			<td>Quantity qualifier code</td>
			<td>ExplanationOfBenefit</td>
			<td>item.detail.quantity</td>
			<td>The unit of measurement for the drug. (gram, ml, etc)</td>
		</tr>
		<tr>
			<td>13</td>
			<td>Line network indicator</td>
			<td>ExplanationOfBenefit</td>
			<td>?</td>
			<td></td>
		</tr>
	</tbody>
	<thead>
		<tr>
			<th> # </th>
			<th> CPCDS Element </th>
			<th> R4 Resource </th>
			<th> Profile Element </th>
			<th> Description </th>
		</tr>
		<tr>
			<td colspan="5" style="text-align:center;">Line Amount Details</td>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>Line disallowed amount</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.adjudication.{category="noncovered"}</td>
			<td>Amount related to a revenue center code for services that are not covered.</td>
		</tr>
		<tr>
			<td>2</td>
			<td>Line member reimbursement</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.adjudication.{category="paidtopatient"}</td>
			<td>Payment (reimbursement) made to the beneficiary related to the line item service on the non-institutional claim.</td>
		</tr>
		<tr>
			<td>3</td>
			<td>Line amount paid by patient</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.adjudication.{category="paidbypatient"}</td>
			<td>Amount paid by the beneficiary to the provider for the line item service [outpatient]</td>
		</tr>
		<tr>
			<td>4</td>
			<td>Drug cost</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.net</td>
			<td>Price paid for the drug excluding mfr discounts</td>
		</tr>
		<tr>
			<td>5</td>
			<td>Line allowed payment amount</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.adjudication.{category="benefit"}</td>
			<td>Payment made by Payer (after deductible and coinsurance amounts have been paid) for the line item service on the non-institutional claim</td>
		</tr>
		<tr>
			<td>6</td>
			<td>Line amount paid to provider</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.adjudication.{category="paidtoprovider"}</td>
			<td>Actual payment made by Payer to the provider for the line item service on the noninstitutional claim. Additional payments may have been made to the provider - including beneficiary deductible and coinsurance amounts and/or other primary payer amounts</td>
		</tr>
		<tr>
			<td>7</td>
			<td>Line patient deductible</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.adjudication.{category="deductible"}</td>
			<td></td>
		</tr>
		<tr>
			<td>8</td>
			<td>Line primary payer paid amount</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.adjudication.{category="priorpayerbenefit"}</td>
			<td></td>
		</tr>
		<tr>
			<td>9</td>
			<td>Line coinsurance amount</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.adjudication.{category="coins"}</td>
			<td></td>
		</tr>
		<tr>
			<td>10</td>
			<td>Line submitted amount</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.adjudication.{category="submitted"}</td>
			<td>Provider submitted charges for the line item service on the non-institutional claim</td>
		</tr>
		<tr>
			<td>11</td>
			<td>Line allowed amount</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.adjudication.{category="eligible"}</td>
			<td>Allowed charges for the line item service on the noninstitutional claim. This charge is used to compute pay to providers or reimbursement to beneficiaries. The amount includes both the line-item Payer and beneficiary-paid amounts (i.e. deductible and coinsurance)</td>
		</tr>
		<tr>
			<td>12</td>
			<td>Line member liability</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.adjudication.{category="patientliability"}</td>
			<td>E.g. Non-contracted provider</td>
		</tr>
		<tr>
			<td>13</td>
			<td>Line copay amount</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.adjudication.{category="copay"}</td>
			<td></td>
		</tr>
		<tr>
			<td>14</td>
			<td>Line discounted rate</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.adjudication.{category="discounted"}</td>
			<td></td>
		</tr>
	</tbody>
</table>