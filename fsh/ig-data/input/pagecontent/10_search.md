
<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://hl7.org/fhir ../../input-cache/schemas-r5/fhir-single.xsd">

<h3>Search Behavior</h3>

The EOB Resource is the focal Consumer-Directed Payer Data Exchange (CDPDE) Resource. Several Reference Resources are defined directly/indirectly from the EOB: Coverage, Patient, Organization (Payer ID), Practioner, Organization (Facility), PractionerRole, Location.

The Coverage Reference Resource SHALL be returned with data that was effective as of the date of service of the claim; for example, the data will reflect the employer name in effect at that time. However, for other reference resources, if payers have the data as of the date of service that data SHALL be provided in the reference resource and they SHALL populate meta.lastUpdated with the date that the payer record for that resource was created. If payers do not have the data as of the date of service, they SHALL provide their available data in the reference resource and they SHALL populate meta.lastUpdated with the date the data was updated.

<h3>RESTful Capabilities by Resource/Profile</h3>

A server will support an <a href="OperationDefinition-Assemble-ExplanationOfBenefit.html">$assemble-eob"</a> operation which will return a bundle including all  ExplanationOfBenefits resources from the four supported profiles  matching the search request along with all the reference resources in the response bundle. Bundle.total will show a count of the ExplanationOfBenefit instances returned.

These $assemble-eob operation SHALL support the following parameters:
<table border="1" class="codesytems local">
 <thead>
    <tr>
      <td>
        <b>Parameter Name</b>
      </td>
      <td>
        <b>Type</b>
      </td>
      <td>
        <b>Cardinality</b>
      </td>
      <td>
        <b>Description</b>
      </td>
      <td>
        <b>Notes</b>
      </td>
    </tr>
  </thead>
 <tbody>
    <tr>
              <td>_id</td>
              <td>id</td>
              <td>0..1</td>
              <td>Logical id for the ExplanationOfBenefit resource.</td>
              <td>(none))</td>
    </tr>
     <tr>
              <td>patient</td>
              <td>id</td>
              <td>1..1</td>
              <td>Required.  The id of the patient resource located on the server on which this operation is executed. If there is no match, an empty Bundle is returned</td>
              <td>(none))</td>
    </tr>
    <tr>
              <td>_since</td>
              <td>instant</td>
              <td>0..1</td>
              <td>ExplanationOfBenefit resources updated after this period will be included in the response. The intent of this parameter is to allow a client to request only records that have changed since the last request.</td>
              <td>(none))</td>
    </tr>
    <tr>
              <td>type</td>
              <td>CodeableConcept</td>
              <td>0..1</td>
              <td>The type of the ExplanationOfBenefit, e.g. institutional, pharmacy, professional</td>
              <td>(none))</td>
    </tr>
        <tr>
              <td>identifier</td>
              <td>Identifier</td>
              <td>0..1</td>
              <td>Claim Number / Business Identifier of the ExplanationOfBenefit resource.</td>
              <td>(none))</td>
    </tr>
    <tr>
              <td>service-date</td>
              <td>date</td>
              <td>0..1</td>
              <td>Date of the service for the ExplanationOfBenefit.</td>
              <td>(none))</td>
    </tr>
</tbody>
</table>

<h4>Other Profiles</h4>
No search capabilities are defined for the other profiles defined in the Implementation Guide.  
<h3>Search for Servers Requiring Status </h3>
<h3>Searching Multiple Members</h3>
</div>
