---
title: Diagnosis mapping
layout: default
active: Diagnosis mapping
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
			<th colspan="4" style="text-align:center;"> Diagnosis (0-n) </th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>Diagnosis code</td>
			<td>ExplanationOfBenefit.diagnosis.diagnosisReference(Condition)</td>
			<td>.code.coding.code</td>
		</tr>
		<tr>
			<td>2</td>
			<td>Present on admission</td>
			<td>ExplanationOfBenefit</td>
			<td>.diagnosis.onAdmission</td>
		</tr>
		<tr>
			<td>3</td>
			<td>Diagnosis code type</td>
			<td>ExplanationOfBenefit.diagnosis.diagnosisReference(Condition)</td>
			<td>.code.coding.system</td>
		</tr>
		<tr>
			<td>4</td>
			<td>Diagnosis type</td>
			<td>ExplanationOfBenefit</td>
			<td>.diagnosis.type</td>
		</tr>
		<tr>
			<td>5</td>
			<td>Is E code</td>
			<td>ExplanationOfBenefit</td>
			<td>.diagnosis.type="external cause code"</td>
		</tr>
	</tbody>
</table>