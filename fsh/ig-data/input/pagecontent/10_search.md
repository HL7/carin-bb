
<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://hl7.org/fhir ../../input-cache/schemas-r5/fhir-single.xsd">



<h5>Summary of Search Critiera</h5>

These search parameters are required (SHALL). The term EOB refers to the  profiles of ExplanationOfBenefit defined in this implementation guide.  For full details, see the <a href="CapabilityStatement-carin-bb.html">capability statement</a>.

<table border="1" class="codes">
  <thead>
    <tr>
       <td>
        <b>Supported Profiles</b>
      </td>
      <td>
        <b>Required Search Parameter (SHALL)</b>
      </td>
      <td>
        <b>Type</b>
      </td>
      <td>
        <b>Description</b>
      </td>
      <td>
        <b>Notes</b>
      </td>
        <td>
        <b>Example</b>
      </td>
    </tr>
  </thead>
  <tbody>
    <tr>
              <td>EOB</td>
              <td>_id</td>
              <td>token</td>
              <td></td>
              <td>none</td>
              <td>GET [base]/ExplanationOfBenefit?_id=[id]</td>
            </tr>
            <tr>
              <td>EOB</td>
              <td><a href="SearchParameter-explanationofbenefit-patient.html">patient</a></td>
              <td>reference</td>
              <td>patient</td>
              <td></td>
              <td>GET [base]/ExplanationOfBenefit?patient=[patient]</td>
            </tr>
            <tr>
             <td>EOB</td>
             <td>_lastUpdated</td>
              <td>date</td>
              <td></td>
              <td>Only in combination with the patient search parameter.</td>
              <td>GET [base]/ExplanationOfBenefit?_lastUpdated=[prefix][date]</td>
            </tr>
              <tr>
              <td>EOB</td>
              <td><a href="SearchParameter-explanationofbenefit-type.html">type</a></td>
              <td>date</td>
              <td>Claim type.</td>
              <td>Only in combination with the patient search parameter.</td>
              <td>}GET [base]/ExplanationOfBenefit?type=[system]|[code]</td>
            </tr>
            <tr>
              <td>EOB</td>
              <td><a href="SearchParameter-explanationofbenefit-identifier.html">identifier</a></td>
              <td>token</td>
              <td>identifier</td>
               <td>Business/Claim Identifier.</td>
               <td>GET [base]/ExplanationOfBenefit?identifier=[system]|[value]</td>
            </tr>
            <tr>
              <td>EOB</td>
              <td><a href="SearchParameter-explanationofbenefit-service-date.html">service-date</a></td>
              <td>date</td>
              <td>service-date</td>
               <td>Only in combination with the patient search parameter.</td>
               <td>GET [base]/ExplanationOfBenefit?service-date=[prefix][date] </td>
            </tr>
            <tr>
              <td>CARIN_BB_Coverage</td>
              <td>_id</td>
              <td>token</td>
              <td></td>
              <td>none</td>
              <td>GET [base]/Coverage?_id=[id]</td>
            </tr>
                        <tr>
              <td>CARIN_BB_Patient</td>
              <td>_id</td>
              <td>token</td>
              <td></td>
              <td>none</td>
              <td>GET [base]/Patient?_id=[id]</td>
            </tr>
                        <tr>
              <td>CARIN_BB_Organization</td>
              <td>_id</td>
              <td>token</td>
              <td></td>
              <td>none</td>
              <td>GET [base]/Organization?_id=[id]</td>
            </tr>
                        <tr>
              <td>CARIN_BB_PractitionerRole</td>
              <td>_id</td>
              <td>token</td>
              <td></td>
              <td>none</td>
              <td>GET [base]/PractitionerRole?_id=[id]</td>
            </tr>
                        <tr>
              <td>CARIN_BB_Practitioner</td>
              <td>_id</td>
              <td>token</td>
              <td></td>
              <td>none</td>
              <td>GET [base]/Practitioner?_id=[id]</td>
            </tr>
            <tr>
              <td>CARIN_BB_Location</td>
              <td>_id</td>
              <td>token</td>
              <td></td>
              <td>none</td>
              <td>GET [base]/Coverage?_id=[id]</td>
            </tr>
           </tbody>
</table>
The rationale for requiring specification of a patient for searches not constrained by _id or identifier  is as follows:
<ul>
<li>Search by _id or identifer returns at most a single unique EOB.  A patient parameter is redundant, but is allowed.</li>
<li>Search by type or date (lastUpdated or service-date) must be constrained by a patient to reduce computationial burden, and provide an additional layer of security if a server validates this parameter against the token before processing the request</li>
</ul>

Servers SHALL support the following _includes on the EOB Profiles:
<table border="1" class="codes">
  <thead>
    <tr>
       <td>
        <b>Supported Profiles</b>
      </td>
      <td>
        <b>Resource Type</b>
      </td>
      <td>
        <b>Required _include(SHALL)</b>
      </td>
      <td>
        <b>Required _include:iterate(SHALL)</b>
      </td>
     </tr>
  </thead>
  <tbody>
  <tr>
  <td>EOB</td>
  <td>Coverage</td>
  <td>coverage</td>
  <td>Coverage:payor</td>
  </tr>
    <tr>
  <td>EOB</td>
  <td>Patient</td>
  <td>patient</td>
  <td></td>
  </tr>
    <tr>
  <td>EOB</td>
  <td>Practitioner</td>
  <td>provider</td>
  <td></td>
  </tr>
    <tr>
  <td>EOB</td>
  <td>Practitioner, PractitionerRole, Organization</td>
  <td>careteam</td>
  <td>PractitionerRole:practitioner, PractitionerRole:organization</td>
  </tr>
  <tr>
  <td>EOB</td>
  <td>Organization</td>
  <td>insurer</td>
  <td></td>
  </tr>
    <tr>
  <td>EOB</td>
  <td>Location</td>
  <td>facility</td>
  <td></td>
  </tr>
  </tbody>
  </table>
</div>
