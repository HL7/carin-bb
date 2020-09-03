

<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://hl7.org/fhir ../../input-cache/schemas-r5/fhir-single.xsd">
<h3>Profiles defined as part of this Implementation Guide</h3>
The list of CARIN Profiles is shown below. Each profile defines the minimum mandatory elements, extensions and terminology requirements that SHALL be present.  Extensions are not defined for this Implementation Guide.  Required data elements that are not defined in the base ExplanationOfBenefits resource are defined as slices of existing fields.
<table class="codes">
  <thead>
    <tr>
      <td>
        <b>Name</b>
      </td>
      <td>
        <b>Based On</b>
      </td>
      <td>
        <b>Definition</b>
      </td>
    </tr>
  </thead>
  <tbody>
      <tr>
      <td><a href="StructureDefinition-C4BB-Coverage.html">C4BB-Coverage</a></td>
      <td><a href="http://hl7.org/fhir/R4/coverage.html">Coverage (R4)</a></td>
      <td>{% capture md_text %}CARIN Blue Button Coverage Profile{% endcapture %}{{ md_text | markdownify }}</td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-C4BB-ExplanationOfBenefit.html">C4BB-ExplanationOfBenefit</a></td>
      <td><a href="http://hl7.org/fhir/R4/explanationofbenefit.html">ExplanationOfBenefit (R4)</a></td>
      <td>{% capture md_text %}Abstract parent profile that includes constraints that are common to the four specific ExplanationOfBenefit (EOB) profiles defined in this Implementation Guide.
All EOB instances should be from one of the four non-abstract EOB profiles defined in this Implementation Guide:  Inpatient, Outpatient, Pharmacy, and Professional/NonClinician  {% endcapture %}{{ md_text | markdownify }}</td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Facility.html">C4BB-ExplanationOfBenefit-Inpatient-Facility</a></td>
      <td><a href="StructureDefinition-C4BB-ExplanationOfBenefit.html">C4BB-ExplanationOfBenefit </a></td>
      <td>{% capture md_text %}The profile is used for Explanation of Benefits (EOBs) based on claims submitted by clinics, hospitals, skilled nursing facilities and other institutions for inpatient services, which may include the use of equipment and supplies, laboratory services, radiology services and other charges. Inpatient claims are submitted for services rendered at a facility as part of an overnight stay. 
The claims data is based on the institutional claim format UB-04, submission standards adopted by the Department of Health and Human Services as form CMS-1450.{% endcapture %}{{ md_text | markdownify }}</td>
    </tr>
        <tr>
      <td><a href="StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Facility.html">C4BB-ExplanationOfBenefit-Outpatient-Facility</a></td>
      <td><a href="StructureDefinition-C4BB-ExplanationOfBenefit.html">C4BB-ExplanationOfBenefit </a></td>
      <td>{% capture md_text %}The profile is used for Explanation of Benefits (EOBs) based on claims submitted by clinics, hospitals, skilled nursing facilities and other institutions for outpatient services, which may include including the use of equipment and supplies, laboratory services, radiology services and other charges. Outpatient claims are submitted for services rendered at a facility that are not part of an overnight stay. 
The claims data is based on the institutional claim form UB-04, submission standards adopted by the Department of Health and Human Services as form CMS-1450.{% endcapture %}{{ md_text | markdownify }}</td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-C4BB-ExplanationOfBenefit-Pharmacy.html">C4BB-ExplanationOfBenefit-Pharmacy</a></td>
      <td><a href="StructureDefinition-C4BB-ExplanationOfBenefit.html">C4BB-ExplanationOfBenefit </a></td>
      <td>{% capture md_text %}The profile is used for Explanation of Benefits (EOBs) based on claims submitted by retail pharmacies. 
The claims data is based on submission standards adopted by the Department of Health and Human Services defined by NCPDP (National Council for Prescription Drug Program).{% endcapture %}{{ md_text | markdownify }}</td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">C4BB-ExplanationOfBenefit-Professional-NonClinician</a></td>
      <td><a href="StructureDefinition-C4BB-ExplanationOfBenefit.html">C4BB-ExplanationOfBenefit </a></td>
      <td>{% capture md_text %}This profile is used for Explanation of Benefits (EOBs) based on claims submitted by physicians, suppliers and other non-institutional providers for professional services. These services may be rendered in inpatient or outpatient, including office locations. 
The claims data is based on the professional claim form 1500, submission standards adopted by the Department of Health and Human Services as form CMS-1500."{% endcapture %}{{ md_text | markdownify }}</td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-C4BB-Organization.html">C4BB-Organization</a></td>
      <td><a href="http://hl7.org/fhir/us/core/STU3.1/StructureDefinition-us-core-organization.html">Organization (US Core)</a></td>
      <td>{% capture md_text %}A CARIN Blue Button Organization Profile.{% endcapture %}{{ md_text | markdownify }}</td>
    </tr>
        <tr>
      <td><a href="StructureDefinition-C4BB-Patient.html">C4BB-Patient</a></td>
      <td><a href="http://hl7.org/fhir/us/core/STU3.1/StructureDefinition-us-core-patient.html">Patient (US Core)</a></td>
      <td>{% capture md_text %}A CARIN Blue Button Patient Profile.{% endcapture %}{{ md_text | markdownify }}</td>
    </tr>
        <tr>
      <td><a href="StructureDefinition-C4BB-Practitioner.html">C4BB-Practitioner</a></td>
      <td><a href="http://hl7.org/fhir/us/core/STU3.1/StructureDefinition-us-core-practitioner.html">Practitioner (US Core)</a></td>
      <td>{% capture md_text %}A CARIN Blue Button Practitioner Profile.{% endcapture %}{{ md_text | markdownify }}</td>
    </tr>
    <!-- <tr>
      <td><a href="StructureDefinition-C4BB-PractitionerRole.html">C4BB-PractitionerRole</a></td>
      <td><a href="http://hl7.org/fhir/R4/practitionerrole.html">PractitionerRole (R4)</a></td>
      <td>{% capture md_text %}A CARIN Blue Button PractitionerRole Profile.{% endcapture %}{{ md_text | markdownify }}</td>
    </tr>     -->
  </tbody>
</table>
</div>
