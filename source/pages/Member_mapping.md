---
title: Member mapping
layout: default
active: Member mapping
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
			<th colspan="4" style="text-align:center;"> Member </th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>Member id</td>
			<td>Patient</td>
			<td>.identifier</td>
		</tr>
		<tr>
			<td>2</td>
			<td>Date of birth</td>
			<td>Patient</td>
			<td>.birthDate</td>
		</tr>
		<tr>
			<td>3</td>
			<td>Date of death</td>
			<td>Patient</td>
			<td>.deceasedDateTime</td>
		</tr>
		<tr>
			<td>4</td>
			<td>County</td>
			<td>Patient</td>
			<td>.address</td>
		</tr>
		<tr>
			<td>5</td>
			<td>State</td>
			<td>Patient</td>
			<td>.address</td>
		</tr>
		<tr>
			<td>6</td>
			<td>Country</td>
			<td>Patient</td>
			<td>.address</td>
		</tr>
		<tr>
			<td>7</td>
			<td>Race code</td>
			<td>Patient</td>
			<td>.extension <a href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-race">(US Core Race)</a></td>
		</tr>
		<tr>
			<td>8</td>
			<td>Ethnicity</td>
			<td>Patient</td>
			<td>.extension <a href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity">(US Core Ethnicity)</a></td>
		</tr>
		<tr>
			<td>9</td>
			<td>Gender code</td>
			<td>Patient</td>
			<td>.gender</td>
		</tr>
		<tr>
			<td>10</td>
			<td>Name</td>
			<td>Patient</td>
			<td>.name</td>
		</tr>
		<tr>
			<td>11</td>
			<td>Zip code</td>
			<td>Patient</td>
			<td>.address</td>
		</tr>
		<tr>
			<td>12</td>
			<td>Relationship to subscriber</td>
			<td>Patient</td>
			<td>?</td>
		</tr>
		<tr>
			<td>13</td>
			<td>Subscriber id</td>
			<td>Patient</td>
			<td>.identifier</td>
		</tr>
	</tbody>
</table>