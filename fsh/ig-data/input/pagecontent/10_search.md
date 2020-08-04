<div>
<h3>Search Capabilities</h3>
The EOB Resource is the focal Consumer-Directed Payer Data Exchange (CDPDE) Resource. Several Reference Resources are defined directly/indirectly from the EOB: Coverage, Patient, Organization (Payer), Practioner, Organization (Facility), PractionerRole, Location. 
  <p>
    The Coverage Reference Resource SHALL be returned with data that was effective as of the date of service of the claim; for example, the data will reflect the employer name in effect at that time. However, for other reference resources, payers MAY decide to provide either the data that was in effect as of the date of service or the current data*.* All reference resources within the EOB will have meta.lastUpdated flagged as must support. Payers SHALL provide the last time the data was updated or the date of creation in the payers system of record, whichever comes last. Apps will use the meta.lastUpdated values to determine if the reference resources are as of the current date or date of service. 
    <p>When an EOB references another resource (e.g., Patient or Practitioner), the reference may be versioned or versionless. Payers SHALL use versioned references whenever they maintain point-in-time data (data that was effective as of the date of service or date of admission on the claim), but MAY use versionless references when they do not maintain versioned data. Clients MAY request referenced resources as part of an EOB search (by supplying the _include parameter) or directly using read or vread. Payers SHALL support both approaches, and SHALL return the same content for referenced resources in either case. These search parameters are required (SHALL). The term EOB refers to the profiles of ExplanationOfBenefit defined in this implementation guide. <p>For full details, see the <a href="CapabilityStatement-carin-bb.html">capability statement</a>. Resource Type Supported Profiles The server SHALL support the following search parameters, _includes (SHALL), and  Supported Operations (SHALL).
<table class="codes" border="1">
<thead>
<tr>
<td><strong>Resource Type</strong></td>
<td><strong>Supported Profiles</strong></td>
<td><strong>Required Search Parameter (SHALL)</strong></td>
<td><strong>Required _includes (SHALL)</strong></td>
<td><strong>Supported Operations (SHALL)</strong></td>
</tr>
</thead>
<tbody>
<tr>
<td>ExplanationOfBenefit</td>
<td>
<ul>
<li><a href="StructureDefinition-CARIN-BB-ExplanationOfBenefit.html">CARIN-BB-ExplanationOfBenefit</a></li>
<li><a href="StructureDefinition-CARIN-BB-ExplanationOfBenefit-Inpatient-Facility.html">CARIN-BB-ExplanationOfBenefit-Inpatient-Facility</a></li>
<li><a href="StructureDefinition-CARIN-BB-ExplanationOfBenefit-Outpatient-Facility.html">CARIN-BB-ExplanationOfBenefit-Outpatient-Facility</a></li>
<li><a href="StructureDefinition-CARIN-BB-ExplanationOfBenefit-Professional-NonClinician.html">CARIN-BB-ExplanationOfBenefit-Professional-NonClinician</a></li>
<li><a href="StructureDefinition-CARIN-BB-ExplanationOfBenefit-Pharmacy.html">CARIN-BB-ExplanationOfBenefit-Pharmacy</a></li>
</ul>
</td>
<td>
<ul>
<li>_id</li>
<li>_lastUpdated</li>
<li>patient</li>
<li>type (Claim Type) ***</li>
<li>identifier (Business / Claim Identifier of EOB)</li>
<li>service-date***</li>
</ul>
</td>
<td>
<ul>
<li>enumerate</li>
<li></li>
<li></li>
<li></li>
</ul>
</td>
<td>
<ul>
<li>read</li>
<li></li>
<li></li>
<li></li>
</ul>
</td>
</tr>
<tr>
<td>Coverage</td>
<td><a href="StructureDefinition-CARIN-BB-Coverage.html">CARIN-BB-Coverage</a></td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>read</td>
</tr>
<tr>
<td>Patient</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>read, Conditional: vread</td>
</tr>
<tr>
<td>Patient</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>read, Conditional: vread</td>
</tr>
<tr>
<td>Practitioner</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>read, Conditional: vread</td>
</tr>
<tr>
<td>PractitionerRole</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>read, Conditional: vread</td>
</tr>
<tr>
<td>Organization</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>read, Conditional: vread</td>
</tr>
</tbody>
</table>
</div>