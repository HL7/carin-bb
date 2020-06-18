
<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://hl7.org/fhir ../../input-cache/schemas-r5/fhir-single.xsd">

<h3>Search Behavior</h3>

The ExplanationOfBenefit (EOB) Resource is the focal Consumer-Directed Payer Data Exchange (CDPDE) Resource. Several Reference Resources are defined directly/indirectly from the EOB: Coverage, Patient, Organization (Payer ID), Practioner, Organization (Facility), PractionerRole, Location.

The Coverage Reference Resource SHALL be returned with data that was effective as of the date of service of the claim; for example, the data will reflect the employer name in effect at that time. However, for other reference resources, if payers have the data as of the date of service that data SHALL be provided in the reference resource and they SHALL populate meta.lastUpdated with the date that the payer record for that resource was created. If payers do not have the data as of the date of service, they MAY provide their available data in the reference resource and they SHALL populate meta.lastUpdated with the date the data was updated.

<h3>RESTful Capabilities by Resource/Profile</h3>

A server will always treat a search request as if a client indicated \"_include=*\" and SHALL return all EOB & reference resources in the response bundle. Bundle.link.url (self) would show that "_include=*" was added by the server as an additional parameter. Bundle.total will count only EOB resources (this is a normal practice in FHIR to only count the searched resources and not the included / reference resources).

<h4>Explanation of Benefit Profiles</h4>

Supported Profiles: CARIN BB ExplanationOfBenefit Inpatient Facility Profile; CARIN BB ExplanationOfBenefit Outpatient Facility Profile; CARIN BB ExplanationOfBenefit Pharmacy Profile; CARIN BB ExplanationOfBenefit Professional NonClinician Profile

<h5>Search Parameters"</h5>

These search parameters are required (SHALL). The term EOB refers to the four non-abstract profiles of ExplanationOfBenefit defined in this implementation guide.

<table border="1" class="codes">
  <thead>
    <tr>
      <td>
        <b>Name</b>
      </td>
      <td>
        <b>Base Resources</b>
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
              <td><a href="SearchParameter-carinbb-_id.html">_id</a></td>
              <td>EOB</td>
              <td>token</td>
              <td>{% capture md_text %}_id{% endcapture %}{{ md_text | markdownify }}</td>
              <td>none</td>
              <td>{% capture md_text %}GET [base]/ExplanationOfBenefit?_id=[id]{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-carinbb-patient.html">patient</a></td>
              <td>EOB</td>
              <td>reference</td>
              <td>{% capture md_text %}patient{% endcapture %}{{ md_text | markdownify }}</td>
              <td></td>
              <td>{% capture md_text %}GET [base]/ExplanationOfBenefit?patient=[patient]{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-carinbb-_lastUpdated_.html">_lastUpdated</a></td>
              <td>EOB</td>
              <td>date</td>
              <td>{% capture md_text %}_lastUpdated{% endcapture %}{{ md_text | markdownify }}</td>
              <td>Only in combination with the patient search parameter.</td>
              <td>{% capture md_text %}GET [base]/ExplanationOfBenefit?_lastUpdated=[prefix][date]
{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
                      <tr>
              <td><a href="SearchParameter-carinbb-type.html">type</a></td>
              <td>EOB</td>
              <td>date</td>
              <td>{% capture md_text %}type{% endcapture %}{{ md_text | markdownify }}</td>
              <td>Only in combination with the patient search parameter.</td>
              <td>{% capture md_text %}GET [base]/ExplanationOfBenefit?type=[system]|[code]
{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-carinbb-identifier.html">identifier</a></td>
              <td>EOB</td>
              <td>token</td>
              <td>{% capture md_text %}identifier{% endcapture %}{{ md_text | markdownify }}</td>
               <td>none</td>
               <td>{% capture md_text %}GET [base]/ExplanationOfBenefit?identifier=[system]|[value]{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-carinbb-service-date.html">type</a></td>
              <td>EOB</td>
              <td>date</td>
              <td>{% capture md_text %}service-date{% endcapture %}{{ md_text | markdownify }}</td>
               <td>Only in combination with the patient search parameter.</td>
               <td>{% capture md_text %}GET [base]/ExplanationOfBenefit?service-date=[prefix][date]
{% endcapture %}{{ md_text | markdownify }} </td>
            </tr>
           </tbody>
</table>
The rationale for requiring specification of a patient for searches not constrained by _id or identifier  is as follows:
<ul>
<li>Search by _id or identifer returns at most a single unique EOB.  A patient parameter is redundant, but is allowed.</li>
<li>Search by type or date (lastUpdated or service-date) must be constrained by a patient to reduce computationial burden, and provide an additional layer of security if a server validates this parameter against the token before processing the request</li>
</ul>

<h4>Other Profiles</h4>
No search capabilities are defined for the other profiles defined in the Implementation Guide.  
<h3>Search for Servers Requiring Status </h3>
<h3>Searching Multiple Members</h3>
</div>
