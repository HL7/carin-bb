<h4>Intro material for CARINBB-Coverage</h4>

<table border="1" class="codesytems local">
  <thead>
    <tr>
      <td>
        <b>MapID</b>
      </td>
      <td>
        <b>CARIN CPCDS Description</b>
      </td>
            <td>
        <b>FHIR Resource L0</b>
      </td>
      <td>
        <b>FHIR Resource L1 Element</b>
      </td>
        <td>
        <b>FHIR Resource L2 Element</b>
      </td>
      <td>
        <b>FHIR Element Description or L3/4</b>
      </td>
        <td>
        <b>FHIR Reference</b>
      </td> 
    </tr>
  </thead>
  <tbody> 
<tr>
<td>
2
</td>
<td>
Payer Identifier
</td>
<td>
Issuer of the Policy
</td>
<td>
payor
</td>
<td>

</td>
<td>
Issuer of the policy
</td>
<td>
Reference(Organization)
</td>
</tr>
<tr>
<td>
3
</td>
<td>
Coverage type
</td>
<td>
Identifies if the coverage is PPO, HMO, POS, etc.  
</td>
<td>
type
</td>
<td>

</td>
<td>
Coverage Type and Self-Pay Codes (Preferred)
</td>
<td>

</td>
</tr>
<tr>
<td>
72
</td>
<td>
Relationship to subscriber
</td>
<td>
Relationship of the member to the person insured (subscriber).
</td>
<td>
relationship
</td>
<td>

</td>
<td>
Beneficiary relationship to the subscriber
</td>
<td>

</td>
</tr>
<tr>
<td>
74
</td>
<td>
Start date
</td>
<td>
Date that the contract became effective
</td>
<td>
period
</td>
<td>

</td>
<td>
Coverage start and end dates
</td>
<td>

</td>
</tr>
<tr>
<td>
75
</td>
<td>
End date
</td>
<td>
Date that the contract was terminated or coverage changed
</td>
<td>
period
</td>
<td>

</td>
<td>
Coverage start and end dates
</td>
<td>

</td>
</tr>
<tr>
<td>
132
</td>
<td>
Subscriber id
</td>
<td>
Identifies the subscriber identification
</td>
<td>
subscriberId
</td>
<td>

</td>
<td>
ID assigned to the subscriber
</td>
<td>

</td>
</tr>
<tr>
<td>
133
</td>
<td>
Coverage status
</td>
<td>
Identfies the status of the coverage information (default: active)
</td>
<td>
status
</td>
<td>

</td>
<td>
active | cancelled | draft | entered-in-error
</td>
<td>

</td>
</tr>
<tr>
<td>
134
</td>
<td>
Group id
</td>
<td>
Employer account identifier
</td>
<td>
class
</td>
<td>
value
</td>
<td>
Value associated with the type
</td>
<td>

</td>
</tr>
<tr>
<td>
135
</td>
<td>
Group name
</td>
<td>
Name of the Employer Account
</td>
<td>
class
</td>
<td>
name
</td>
<td>
Human readable description of the type and value
</td>
<td>

</td>
</tr>
<tr>
<td>
154
</td>
<td>
Plan Identifier
</td>
<td>
Business concept used by a health plan to describe its benefit offerings
</td>
<td>
class
</td>
<td>
value
</td>
<td>
Value associated with the type
</td>
<td>

</td>
</tr>
<tr>
<td>
155
</td>
<td>
Plan Name
</td>
<td>
Name of the health plan benefit offering assigned to the Plan Identfier
</td>
<td>
class
</td>
<td>
name
</td>
<td>
Human readable description of the type and value
</td>
<td>

</td>
</tr>
</tbody>
</table>