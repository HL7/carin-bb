
<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://hl7.org/fhir ../../input-cache/schemas-r5/fhir-single.xsd">

<h3>"CPCDE Search Behavior"</h3>
<p>
The ExplanationOfBenefit (EOB) Resource is the focal Consumer-Directed Payer Data Exchange (CDPDE) Resource. Several Reference Resources are defined directly/indirectly from the EOB: Coverage, Patient, Organization (Payer ID), Practioner, Organization (Facility), PractionerRole, Location.
</p>
<p>
The Coverage Reference Resource SHALL be returned with data that was effective as of the date of service of the claim; for example, the data will reflect the employer name in effect at that time. However, for other reference resources, if payers have the data as of the date of service that data SHALL be provided in the reference resource and they SHALL populate meta.lastUpdated with the date that the payer record for that resource was created. If payers do not have the data as of the date of service, they MAY provide their available data in the reference resource and they SHALL populate meta.lastUpdated with the date the data was updated.
</p>
<h3>RESTful Capabilities by Resource/Profile"</h3>
<p>
A server will always treat a search request as if a client indicated "_include=*" and SHALL return all EOB & reference resources in the response bundle. Bundle.link.url (self) would show that "_include=*" was added by the server as an additional parameter. Bundle.total will count only EOB resources (this is a normal practice in FHIR to only count the searched resources and not the included / reference resources)ExplanationOfBenefit
</p>
<p>
Supported Profiles: CARIN BB ExplanationOfBenefit Profile; CARIN BB ExplanationOfBenefit Inpatient Facility Profile; CARIN BB ExplanationOfBenefit Outpatient Facility Profile; CARIN BB ExplanationOfBenefit Pharmacy Profile; CARIN BB ExplanationOfBenefit Professional NonClinician Profile
</p>
<h3>Search Parameters"</h3>
<p>
These search parameters are required (SHALL). The term EOB refers to the four non-abstract profiles of ExplanationOfBenefit defined in this implementation guide.
</p>
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
        <b>Example</b>
      </td>
    </tr>
  </thead>
  <tbody>
    <tr>
              <td><a href="SearchParameter-carinbb-_id.html">_id_</a></td>
              <td>EOB</td>
              <td>token</td>
              <td>{% capture md_text %}_id{% endcapture %}{{ md_text | markdownify }}</td>
              <td>{% capture md_text %}GET [base]/ExplanationOfBenefit?_id=[id]{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-carinbb-patient.html">patient</a></td>
              <td>EOB</td>
              <td>reference</td>
              <td>{% capture md_text %}patient{% endcapture %}{{ md_text | markdownify }}</td>
              <td>{% capture md_text %}GET [base]/ExplanationOfBenefit?patient=[patient]{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
            <tr>
              <td><a href="SearchParameter-carinbb-_lastUpdated_.html">_lastUpdated_</a></td>
              <td>EOB</td>
              <td>date</td>
              <td>{% capture md_text %}_lastUpdated{% endcapture %}{{ md_text | markdownify }}</td>
              <td>{% capture md_text %}GET [base]/ExplanationOfBenefit?_lastUpdated=[prefix][date]
* Shall only be supported in a combination with patient
{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
                      <tr>
              <td><a href="SearchParameter-carinbb-type.html">type</a></td>
              <td>EOB</td>
              <td>date</td>
              <td>{% capture md_text %}_lastUpdated_{% endcapture %}{{ md_text | markdownify }}</td>
              <td>{% capture md_text %}GET [base]/ExplanationOfBenefit?type=[system]|[code]
* Shall only be supported in a combination with patient{% endcapture %}{{ md_text | markdownify }}
             </td>
            </tr>
                                  <tr>
              <td><a href="SearchParameter-carinbb-identifier.html">identifier</a></td>
              <td>EOB</td>
              <td>token</td>
              <td>{% capture md_text %}identifier{% endcapture %}{{ md_text | markdownify }}</td>
              <td>{% capture md_text %}GET [base]/ExplanationOfBenefit?identifier=[system]|[value]{% endcapture %}{{ md_text | markdownify }}
             </td>
            </tr>
                                  <tr>
              <td><a href="SearchParameter-carinbb-service-date.html">type</a></td>
              <td>EOB</td>
              <td>date</td>
              <td>{% capture md_text %}service-date{% endcapture %}{{ md_text | markdownify }}</td>
              <td>{% capture md_text %}GET [base]/ExplanationOfBenefit?service-date=[prefix][date]
* Shall only be supported in a combination with patient
{% endcapture %}{{ md_text | markdownify }}
             </td>
            </tr>
           </tbody>
</table>
</div>
