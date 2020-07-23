
<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://hl7.org/fhir ../../input-cache/schemas-r5/fhir-single.xsd">

<h3>Search Behavior</h3>

<b>Warning:  Under Construction.   Will be updated in version 0.3 </b>

The EOB Resource is the focal Consumer-Directed Payer Data Exchange (CDPDE) Resource. Several Reference Resources are defined directly/indirectly from the EOB: Coverage, Patient, Organization (Payer ID), Practioner, Organization (Facility), PractionerRole, Location.

The Coverage Reference Resource SHALL be returned with data that was effective as of the date of service of the claim; for example, the data will reflect the employer name in effect at that time. However, for other reference resources, payers MAY decide to provide either the data that was in effect as of the date of service or the current data. All reference resources within the EOB will have meta.lastUpdated flagged as must support. Payers SHALL provide the last time the data was updated or the date of creation in the payers system of record, whichever comes last. Apps will use the meta.lastUpdated values to determine if the reference resources are as of the current date or date of service.

<h3>RESTful Capabilities by Resource/Profile</h3>

To fetch supporting Reference Resources, payers SHALL support _include for all resources referenced by an ExplanationOfBenefit as well as "_include=*", which would bring all referenced resources in the bundle. Client's ExplanationOfBenefit searches can use "_include=*", "_include" for specific reference resources or no "_include" at all (atomic calls) as best suits their use case. Payers SHALL also support resource reads by _id for all profiles defined by this implementation guide.

Payers SHALL provide equivalency for “query via _id” (when a client requests data for the referenced resources using a separate call to each resource by its id) and “query via _include" (when a client requests data from all referenced resources to be bundled in one response with the EOB resources). Equivalency means that the same data SHALL be returned regardless whether the client uses “_id” or “_include”. Particularly, if a payer returns point in time versioned reference resources in response to a "_include" request", the same point in time versioned reference resources SHALL be returned in response to the atomic calls / reads for these reference resources).

<h4>Explanation of Benefit Profiles</h4>

Supported Profiles: CARIN BB ExplanationOfBenefit Inpatient Facility Profile; CARIN BB ExplanationOfBenefit Outpatient Facility Profile; CARIN BB ExplanationOfBenefit Pharmacy Profile; CARIN BB ExplanationOfBenefit Professional NonClinician Profile

<h5>Summary of Search Critiera</h5>

These search parameters are required (SHALL). The term EOB refers to the four non-abstract profiles of ExplanationOfBenefit defined in this implementation guide.

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

<h4>Profile Interaction Summary</h4>
For all profiles of Explanation of Benefit and the profile of Coverage defined in this IG,  servers SHALL support search-type and read queries.

For profiles of Patient, Practitioner, PractitionerRole, Location, and Organization, servers SHOULD be capable of returning a versioned resource in response to a vread request using: GET [base]/[Resource]/[id]/_history/[vid] 