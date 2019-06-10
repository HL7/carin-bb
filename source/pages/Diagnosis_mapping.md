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
			<th> Description </th>
		</tr>
		<tr>
			<td colspan="5" style="text-align:center;">Diagnosis (0-n)</td>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>Diagnosis code</td>
			<td>ExplanationOfBenefit.diagnosis.diagnosisReference(Condition)</td>
			<td>.code.coding.code</td>
			<td></td>
		</tr>
		<tr>
			<td>2</td>
			<td>Diagnosis description</td>
<td>ExplanationOfBenefit.diagnosis.diagnosisReference(Condition)</td>
			<td>.code.coding.display</td>
			<td></td>
		</tr>
		<tr>
			<td>3</td>
			<td>Present on admission</td>
			<td>ExplanationOfBenefit</td>
			<td>.diagnosis.onAdmission</td>
			<td></td>
		</tr>
		<tr>
			<td>4</td>
			<td>Diagnosis code type</td>
			<td>ExplanationOfBenefit.diagnosis.diagnosisReference(Condition)</td>
			<td>.code.coding.system</td>
			<td>ICD 9 or ICD 10</td>
		</tr>
		<tr>
			<td>5</td>
			<td>Diagnosis type</td>
			<td>ExplanationOfBenefit</td>
			<td>.diagnosis.type</td>
			<td>primary, secondary, discharge, etc.</td>
		</tr>
		<tr>
			<td>6</td>
			<td>Is E code</td>
			<td>ExplanationOfBenefit</td>
			<td>.diagnosis.type="external cause code"</td>
			<td>External cause of injury code. For hospital and emergency department visits, E-codes are used in addition to the diagnostic codes. They can be used as "other diagnosis"</td>
		</tr>
	</tbody>
</table>