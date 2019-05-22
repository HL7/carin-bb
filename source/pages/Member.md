---
title: Member
layout: default
active: Member
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
			<td>Member id</td>
			<td>BENE_ID</td>
			<td>Unique identifier to member [Z_PATID]</td>
		</tr>
		<tr>
			<td>2</td>
			<td>Date of birth
</td>
			<td>DOB_DT</td>
			<td>[YBIRTH(SDDV1) or AGE_BAND_CD (SDDV2)]</td>
		</tr>
		<tr>
			<td>3</td>
			<td>Date of death</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>4</td>
			<td>County</td>
			<td>BENE_COUNTY_CD</td>
			<td>[CBSA_CD]</td>
		</tr>
		<tr>
			<td>5</td>
			<td>State</td>
			<td>BENE_STATE_CD</td>
			<td>[STATE]</td>
		</tr>
		<tr>
			<td>6</td>
			<td>Country</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
		<td>7</td>
			<td>Race code</td>
			<td>BENE_RACE_CD</td>
			<td></td>
		</tr>
		<tr>
		<td>8</td>
			<td>Ethnicity</td>
			<td></td>
			<td></td>
		</tr>
			<tr>
		<td>9</td>
			<td>Gender code</td>
			<td>GNDR_CD</td>
			<td>[GDR]</td>
		</tr>
			<tr>
		<td>10</td>
			<td>Name</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>11</td>
			<td>Zip code</td>
			<td>BENE_MLG_CNTCT_ZIP_CD</td>
			<td>[MBR_ZIP_5_CD]</td>
		</tr>
		<tr>
			<td>12</td>
			<td>Relationship to subscriber</td>
			<td></td>
			<td>[REL_CD]</td>
		</tr>
		<tr>
			<td>13</td>
			<td>Subscriber id</td>
			<td></td>
			<td></td>
		</tr>

		
		</tbody>
	</table>