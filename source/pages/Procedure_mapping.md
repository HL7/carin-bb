---
title: Procedure mapping
layout: default
active: Procedure mapping
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
			<th colspan="4" style="text-align:center;"> Procedure (0-n) </th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>Procedure code</td>
			<td>ExplanationOfBenefit.procedure.procedureReference(Procedure)</td>
			<td>.code.coding.code</td>
		</tr>
		<tr>
			<td>2</td>
			<td>Procedure date</td>
			<td>ExplanationOfBenefit.procedure.procedureReference(Procedure)</td>
			<td>.performedPeriod</td>
		</tr>
		<tr>
			<td>3</td>
			<td>Procedure code type</td>
			<td>ExplanationOfBenefit.procedure.procedureReference(Procedure)</td>
			<td>.code.coding.system</td>
		</tr>
		<tr>
			<td>4</td>
			<td>Procedure type</td>
			<td>ExplanationOfBenefit</td>
			<td>.procedure.type</td>
		</tr>
		<tr>
			<td>5</td>
			<td>Modifier Code-1</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.modifier OR Procedure.modifier (Extension)</td>
		</tr>
		<tr>
			<td>6</td>
			<td>Modifier Code-2</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.modifier</td>
		</tr>
		<tr>
			<td>7</td>
			<td>Modifier Code-3</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.modifier</td>
		</tr>
		<tr>
			<td>8</td>
			<td>Modifier Code-4</td>
			<td>ExplanationOfBenefit</td>
			<td>.item.modifier</td>
		</tr>
	</tbody>
</table>