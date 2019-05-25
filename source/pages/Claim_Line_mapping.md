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
		</tr>
		<tr>
			<th colspan="4" style="text-align:center;"> Line Service Details </th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>Service (from) date</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.serviceDate OR .item.servicedPeriod</td>
		</tr>
		<tr>
			<td>2</td>
			<td>Line number</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.sequence</td>
		</tr>
		<tr>
			<td>3</td>
			<td>Service to date</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.servicedPeriod</td>
		</tr>
		<tr>
			<td>4</td>
			<td>Type of service</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.category</td>
		</tr>
		<tr>
			<td>5</td>
			<td>Place of service code</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.location[x]</td>
		</tr>
		<tr>
			<td>6</td>
			<td>Revenue center code</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.revenue</td>
		</tr>
		<tr>
			<td>7</td>
			<td>Number of units</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.quantity</td>
		</tr>
		<tr>
			<td>8</td>
			<td>Allowed number of units</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.adjudication.{category, value}</td>
		</tr>
		<tr>
			<td>9</td>
			<td>National drug code</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.productOrService OR .item.detail.productOrService</td>
		</tr>
		<tr>
			<td>10</td>
			<td>Compound code</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.productOrService</td>
		</tr>
		<tr>
			<td>11</td>
			<td>Quantity dispensed</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.detail.quantity</td>
		</tr>
		<tr>
			<td>12</td>
			<td>Quantity qualifier code</td>
			<td>ExplanationOfBenefit</td>
			<td>item.detail.quantity</td>
		</tr>
		<tr>
			<td>13</td>
			<td>Line network indiciator</td>
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
			<th colspan="4" style="text-align:center;"> Line Amount Details </th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>Line non covered charged amount</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>2</td>
			<td>Line amount paid to member</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>3</td>
			<td>Line patient paid amount</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>Drug cost</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.net</td>
		</tr>
		<tr>
			<td>4</td>
			<td>Line payment amount</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>5</td>
			<td>Claim payment denial code</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>6</td>
			<td>Line member reimbursement</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>7</td>
			<td>Line payment amount to provider</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>8</td>
			<td>Line patient deductible</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>9</td>
			<td>Line primary payer paid amount</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>10</td>
			<td>Line secondary payer paid amount</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>11</td>
			<td>Line coinsurance amount</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>12</td>
			<td>Line submitted amount</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>13</td>
			<td>Line allowed amount</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>14</td>
			<td>Line member liability</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>15</td>
			<td>Line copay amount</td>
			<td></td>
			<td></td>
		</tr>
	</tbody>
</table>