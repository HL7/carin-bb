---
title: Procedure
layout: default
active: Procedure
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
			<td>Procedure code</td>
			<td>ICD_PRCDR_CD(1-25)</td>
			<td>[ICD10_PCS(1-25)]</td>
		</tr>
		<tr>
			<td></td>
			<td>Procedure Description</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>2</td>
			<td>Procedure date</td>
			<td>PRCDR_DT(1-25)</td>
			<td>[FST_DT]</td>
		</tr>
		<tr>
			<td>3</td>
			<td>Procedure code type</td>
			<td></td>
			<td>CPT/HCPCS/ICD-PCS</td>
		</tr>
		<tr>
			<td>4</td>
			<td>Procedure type</td>
			<td></td>
			<td>primary, secondary, discharge, etc.</td>
		</tr>
		<tr>
			<td>5</td>
			<td>Modifier Code -1</td>
			<td>HCPCS_1ST_MDFR_CD</td>
			<td>[PROCMOD]</td>
		</tr>
		<tr>
			<td>6</td>
			<td>Modifier Code -2</td>
			<td>HCPCS_2ND_MDFR_CD</td>
			<td>[PROCMOD_2]</td>
		</tr>
		<tr>
		<td>7</td>
			<td>Modifier Code -3</td>
			<td>HCPCS_3RD_MDFR_CD</td>
			<td>[PROCMOD_3]</td>
		</tr>
		<tr>
		<td>8</td>
			<td>Modifier Code -4</td>
			<td>HCPCS_4TH_MDFR_CD</td>
			<td>[PROCMOD_4]</td>
		</tr>

		
		</tbody>
	</table>