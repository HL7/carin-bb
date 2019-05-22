---
title: Diagnosis
layout: default
active: Diagnosis
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
			<th> CMS Medicare BB2.0 Element </th>
			<th>Notes [HCCI Data Element]</th>
		</tr>
	</thead>
	        <tbody>

        <tr>
			<td>1</td>
			<td>Diagnosis code
</td>
			<td>PRNCPAL_DGNS_CD, ICD_DGNS_CD(1-25)

			<td>[ICD10_CM (1-25), DIAG(1-3)]</td>
</td>
		</tr>
		<tr>
			<td></td>
			<td>Diagnosis Description</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>2</td>
			<td>Present on admission
</td>
			<td>CLM_POA_IND_SW(1-25)</td>
			<td>[POA (1-12)]</td>
		</tr>
		<tr>
			<td>3</td>
			<td>Diagnosis code type
</td>
			<td>ICD_DGNS_VRSN_CD(1-25)</td>
			<td>ICD 9 or ICD 10 [DIAG1, ICD10_CM1]</td>
		</tr>
		<tr>
			<td>4</td>
			<td>Diagnosis type</td>
			<td>Primary, 1-25</td>
			<td>primary, secondary, discharge, etc. [ICD10_CM(1-25)]</td>
		</tr>
		<tr>
			<td>5</td>
			<td>Is E code</td>
			<td>ICD_DGNS_E_CD1</td>
			<td>External cause of injury code. For hospital and emergency department visits, E-codes are used in addition to the diagnostic codes. They can be used as other diagnosis.</td>
		</tr>
	
		
		</tbody>
	</table>