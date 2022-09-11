CARIN Consumer Directed Payer Data Exchange (CARIN IG for Blue Button®) was developed under the <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/https://www.carinalliance.com/">CARIN Alliance</a>.


<!-- 
### Changes and Updates for Version 2.0.0
The current official published version of CARIN BB for FHIR R4 
Change description or STU1.1
FHIR-34428
24457
34504
34514 & 34516
FHIR-34669
FHIR-34784
FHIR-35031
FHIR-35361
FHIR-35213 - General Guidance - ### Profiling Constraints
FHIR-35360 - General Guidance - ### CapabilityStatement Server Requirement
FHIR-35708
FHIR-35710
FHIR-35709
FHIR-35712
FHIR-35712 - Search for HL7IdentifierType, and invariant Practitioner-identifier  
FHIR-35729
FHIR-35730
FHIR-35732
FHIR-35735
FHIR-35766
FHIR-35956
FHIR-36760
FHIR-37561
FHIR-36770 and FHIR-36771
FHIR-37334
FHIR-37335
FHIR-37561
FHIR-31693
-->

### Changes and Updates for Version 2.0.0
The current official published version of CARIN BB for FHIR R4 

<!--
<ul>
  <li>Added <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Oral.html">Oral ExplanationOfBenefit profile</a> and vision subtType to <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">Professional NonClinician ExplanationOfBenefit profile</a> (<a href="https://jira.hl7.org/browse/FHIR-FHIR-34009">FHIR-34009</a> and <a href="https://jira.hl7.org/browse/FHIR-FHIR-27025">FHIR-27025</a>)
    <ul>
      <li>Added orthodontics and prosthesis to <a href="ValueSet-C4BBSupportingInfoType.html">Supporting Info Type ValueSet</a> used as a discriminator for the EOB Oral profile supportingInfo slice discriminator (<a href="https://jira.hl7.org/browse/FHIR-34010">FHIR-34010</a>)</li>
      <li>Added <a href="ValueSet-C4BBSurfaceCodes.html">US Surface Codes</a> for Oral ExplanationOfBenefit.item.subSite (<a href="https://jira.hl7.org/browse/FHIR-34089">FHIR-34089</a>)</li>
      <li>Added Invariants requiring all ExplanationOfBenefit.supportingInfo[additionalBodySite] instances be referred to by at least one ExplanationOfBenefit.item and require a tooth number for line items where a surface code in ExplanationOfBenefit.item.subsite exists in <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Oral.html">Oral ExplanationOfBenefit profile</a> (<a href="https://jira.hl7.org/browse/FHIR-34091">FHIR-34091</a>)</li>
    </ul>
  </li>

  <li>Updated from US Core 3.1.0 to 4.0.0 affecting the inherited requirements of the <a href="StructureDefinition-C4BB-Patient.html">Patient</a>, <a href="StructureDefinition-C4BB-Practitioner.html">Practitioner</a>, and <a href="StructureDefinition-C4BB-Organization.html">Organization</a> profiles. (<a href="https://jira.hl7.org/browse/FHIR-33177">FHIR-33177</a>)</li>

  <li>Changed cardinality of ExplanationOfBenefit.item from 0..* to 1..* in <a href="StructureDefinition-C4BB-ExplanationOfBenefit.html">Base ExplanationOfBenefit profile</a> requiring ExplanationOfBenefit for all <a href="artifacts.html#structures-resource-profiles">all Resource ExplanationOfBenefit profiles</a> (<a href="https://jira.hl7.org/browse/FHIR-34114">FHIR-34114</a>)</li>

  <li>Require item.location[x] to be only CodeableConcept in <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">Professional</a> and <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Oral.html">Oral</a> ExplanationOfBenefit profiles (<a href="https://jira.hl7.org/browse/FHIR-32067">FHIR-32067</a>)</li>
  <li>Changed <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">Professional NonClinician ExplanationOfBenefit</a> item.location[x] from cardinality of 0..1 to 1..1 and added Must Support (<a href="https://jira.hl7.org/browse/FHIR-34148">FHIR-34148</a>)</li>

  <li>Changed item.serviced[x] and billablePeriod cardinality (<a href="https://jira.hl7.org/browse/FHIR-31639">FHIR-31639</a>)
    <ul>
      <li>ExplanationOfBenefit.item.serviced[x] from 0..1 to 1..1 for <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional.html">Outpatient Institutional ExplanationOfBenefit profile</a></li>
      <li>ExplanationOfBenefit.item.serviced[x] and ExplanationOfBenefit.billablePeriod from 0..1 to 1..1 for <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">Professional NonClinician ExplanationOfBenefit profile</a></li>
      <li>ExplanationOfBenefit.item.serviced[x] from 0..1 to 1..1 for <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Pharmacy.html">Pharmacy ExplanationOfBenefit profile</a></li>
    </ul>
  </li>
  <li>Moved ExplanationOfBenefit.total[benefitpaymentstatus] slice to ExplanationOfBenefit.supportingInfo[benefitpaymentstatus] (therefore not requiring an amount property) for <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional.html">Inpatient Institutional</a>, <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional.html">Outpatient Institutional</a>, <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Pharmacy.html">Pharmacy</a>, and <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Oral.html">Oral</a> ExplanationOfBenefit profiles (<a href="https://jira.hl7.org/browse/FHIR-33082">FHIR-33082</a>)</li>

  <li>Changed ExplanationOfBenefit.adjudication and ExplanationOfBenefit.item.adjudication slicing from closed to open for <a href="artifacts.html#structures-resource-profiles">all Resource ExplanationOfBenefit profiles</a> (<a href="https://jira.hl7.org/browse/FHIR-34241">FHIR-34241</a>)</li>

  <li>Add not-applicable code to <a href="ValueSet-AMACPTCMSHCPCSProcedureCodes.html">Professional Procedure Codes ValueSet</a> and <a href="ValueSet-ADADentalProcedureCode.html">Oral Procedure Code ValueSet</a> for <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">Professional NonClinician ExplanationOfBenefit profile</a> (with Invariant allowing only if subType = vision) and <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Oral.html">Oral</a> (ExplanationOfBenefit.item.productOrService (<a href="https://jira.hl7.org/browse/FHIR-33024">FHIR-33024</a>)</li>

  <li>Removed Invariant that not allowing not-applicable code for <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional.html">Outpatient Institutional ExplanationOfBenefit profile</a> item.productOrService (<a href="https://jira.hl7.org/browse/FHIR-32850">FHIR-32850</a>)</li>

  <li>Added refillsAuthorized slice to ExplanationOfBenefit.supportingInfo of <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Pharmacy.html">Pharmacy ExplanationOfBenefit</a> profile (<a href="https://jira.hl7.org/browse/FHIR-33487">FHIR-33487</a>)</li>

  <li>Changed payee.party cardinality from 1..1 to 0..1 and added invariant requiring payee.party if payee.type='other' in <a href="StructureDefinition-C4BB-ExplanationOfBenefit.html">Base ExplanationOfBenefit profile</a> (<a href="https://jira.hl7.org/browse/FHIR-31699">FHIR-31699</a>)</li>

  <li>Added <a href="SearchParameter-explanationofbenefit-service-start-date.html">service-start-date search parameter</a> (<a href="https://jira.hl7.org/browse/FHIR-33165">FHIR-33165</a>)</li>

  <li>Added Coverage _id search parameter to <a href="CapabilityStatement-c4bb.html">Capability Statement</a> with associated guidance (<a href="https://jira.hl7.org/browse/FHIR-30009">FHIR-30009</a>)</li>

  <li>Added guidance on the expectation of _include support and interpretation of _include=ExplanationOfBenefit:* to <a href="searchparameters.html">search Parameters page</a> and <a href="CapabilityStatement-c4bb.html">Capability Statement</a> (<a href="https://jira.hl7.org/browse/FHIR-32982">FHIR-32982</a>)</li>

  <li>Moved ExplanationOfBenefit searches documentation from read interaction to search-type interaction in <a href="CapabilityStatement-c4bb.html">Capability Statement</a> (<a href="https://jira.hl7.org/browse/FHIR-33176">FHIR-33176</a>)</li>

  <li>Removed invalid invariant from <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">Professional NonClinician ExplanationOfBenefit profile</a> that required ExplanationOfBenefit.careTeam.provider to be an Organization reference when careTeam.role was 'site' ('site' not a code in the role ValueSet) (<a href="https://jira.hl7.org/browse/FHIR-31658">FHIR-31658</a>)</li>

  <li>Added paidbypatientcash and paidbypatientother codes to <a href="ValueSet-C4BBAdjudication.html">Adjudication ValueSet</a> and <a href="CodeSystem-C4BBAdjudication.html">Adjudication CodeSystem</a> (<a href="https://jira.hl7.org/browse/FHIR-33996">FHIR-33996</a>)</li>

  <li>Modified security guidance in <a href="Security_And_Privacy_Considerations.html">Security and Privacy Considerations</a> page (<a href="https://jira.hl7.org/browse/FHIR-31693">FHIR-31693</a>)</li>

  <li>Changed display of code other from default value of "Provider to "Other" in <a href="ValueSet-C4BBPayeeType.html">Payee Type ValueSet</a> (<a href="https://jira.hl7.org/browse/FHIR-34020">FHIR-34020</a>)</li>

  <li>Added guidance for the use of the 11-digit NDC code for <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Pharmacy.html">Pharmacy ExplanationOfBenefit</a> profile item.productOrService and item.detail.productOrService (<a href="https://jira.hl7.org/browse/FHIR-32660">FHIR-32660</a>)</li>

  <li>Corrected XPath expression for the <a href="SearchParameter-explanationofbenefit-service-date.html">service-date SearchParameter</a> (<a href="https://jira.hl7.org/browse/FHIR-32843">FHIR-32843</a>)</li>
  
  <li>Corrected invariant for <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional.html">Inpatient Institutional</a> and <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional.html">Outpatient Institutional</a> ExplanationOfBenefit profiles to allow other adjudication slices that do not have a category.code from C4BBAdjudication ValueSet (adjudicationamounttype slice) (<a href="https://jira.hl7.org/browse/FHIR-32978">FHIR-32978</a>)</li>

  <li>Changed <a href="CodeSystem-THREEMAPRDRG.html">3M APR DRG CodeSystem</a> description to include improved licensing information (<a href="https://jira.hl7.org/browse/FHIR-31066">FHIR-31066</a>)</li>

  <li>Removed second extra repetition of meta.profile on all <a href="artifacts.html#7">examples</a> (<a href="https://jira.hl7.org/browse/FHIR-32428">FHIR-32428</a>)</li>

  <li>Added clearer guidance on ExplanationOfBenefit.supportingInfo[servicefacility] and ExplanationOfBenefit.item.location[x] to <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">Professional NonClinician ExplanationOfBenefit profile</a>; ExplanationOfBenefit.item.location[x] and ExplanationOfBenefit.supportingInfo[typeofbill] to <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional.html">Inpatient Institutional</a> and <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional.html">Outpatient Institutional</a> ExplanationOfBenefit profiles (<a href="https://jira.hl7.org/browse/FHIR-34087">FHIR-34087</a>)</li>

  <li>Removed references to PractitionerRole and Location from <a href="Background.html#carin-ig-for-blue-button-relation-to-other-igs">Background Relation to other IGs</a> section (<a href="https://jira.hl7.org/browse/FHIR-33060">FHIR-33060</a>)</li>

  <li>Added clearer description of ExplanationOfBenefit.related for <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional.html">Base ExplanationOfBenefit</a> profile (<a href="https://jira.hl7.org/browse/FHIR-31411">FHIR-31411</a>)</li>

  <li>Updated element short descriptions to be more meaningful for all  <a href="artifacts.html#structures-resource-profiles">all Resource profiles</a> (<a href="https://jira.hl7.org/browse/FHIR-34091">FHIR-34091</a>)</li>
</ul>
-->

### Changes and Updates for Version 1.1.0
STU Update of STU 1

<ul>
    <li>Added Data Absent Reason "not-applicable" code to <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/ValueSet-C4BBEOBInstitutionalProcedureCodes.html#definition">Institutional Procedure Codes ValueSet</a> for use with Inpatient Institutional EOB item.productOrService and an <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional-definitions.html#ExplanationOfBenefit.item.productOrService">Invariant disallowing the use of this code in Outpatient Institutional EOB</a> (<a href="http://hl7.org/fhir/us/carin-bb/stu1.1/https://jira.hl7.org/browse/FHIR-30357">FHIR-30357</a>)</li>
    <li>Changed <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional-definitions.html#ExplanationOfBenefit.supportingInfo:drg.code">Inpatient Institutional EOB supportingInfo DRG code terminology binding</a> strength from required to extensible to allow for state Medicaid assigned DRGs (<a href="http://hl7.org/fhir/us/carin-bb/stu1.1/https://jira.hl7.org/browse/FHIR-30380">FHIR-30380</a>)</li>
    <li>Added HIPPS codes to <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/ValueSet-C4BBEOBInstitutionalProcedureCodes.html">Institutional EOB Procedure Codes ValueSet</a> (<a href="http://hl7.org/fhir/us/carin-bb/stu1.1/https://jira.hl7.org/browse/FHIR-30413">FHIR-30413</a>)</li>
    <li> Added C4BB Payer Benefit Payment Status to <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/ValueSet-C4BBAdjudicationCategoryDiscriminator.html#definition">C4BB Adjudication Category Discriminator ValueSet</a> for use in the Professional and NonClinician EOB item.adjudication and removed inoutnetwork code from <a  href="CodeSystem-C4BBAdjudicationDiscriminator.html">Adjudication Discriminator CodeSystem</a> (<a href="http://hl7.org/fhir/us/carin-bb/stu1.1/https://jira.hl7.org/browse/FHIR-30806">FHIR-30806</a>)</li>
    <li>Changes on differentiating ExplanationOfBenefit profiles (<a href="http://hl7.org/fhir/us/carin-bb/stu1.1/https://jira.hl7.org/browse/FHIR-31594">FHIR-31594</a>)
        <ul>
            <li>Added ExplanationofBenefit.subType requirements to the <a href = "StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional-definitions.html#ExplanationOfBenefit.subType">Inpatient</a> and <a href = "StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional-definitions.html#ExplanationOfBenefit.subType">Outpatient</a> Institutional ExplanationOfBenefit profiles.</li>
            <li>Added <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/ValueSet-C4BBInstitutionalClaimSubType.html">Institutional Claim Subtype ValueSet</a> and <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/CodeSystem-C4BBInstitutionalClaimSubType.html">Institutional Claim Subtype CodeSystem</a></li>
        </ul>
    </li>
    <li>Changed resources used to present patient account number and medical record number (<a href="http://hl7.org/fhir/us/carin-bb/stu1.1/https://jira.hl7.org/browse/FHIR-31534">FHIR-31534</a>)
        <ul>
            <li>Removed medrecnum and patacctnum slices from the <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-Patient.html">Patient profile Patient.Identifier</a></li>
            <li>Added medicalrecordnumber and patientaccountnumber supportingInfo slices to <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional.html">Inpatient</a>, <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional.html">Outpatient</a>, and <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">Professional Non-Clinical</a> ExplanationOfBenefit profiles</li>
            <li>Added medicalrecordnumber and patientaccountnumber to <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/CodeSystem-C4BBSupportingInfoType.html">Supporting Info Type CodeSystem</a></li>
        </ul>
    </li>
    <li>Added <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/CodeSystem-AHANUBCPointOfOriginForAdmissionOrVisitNewborn.html">NUBC Point of Origin for Newborn CodeSystem</a> and renamed NUBC Point of Origin CodeSystem to <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/CodeSystem-AHANUBCPointOfOriginForAdmissionOrVisitNonnewborn.html"> NUBC Point of Origin for Non-newborn CodeSystem</a> for Inpatient and Outpatient Institutional EOB supportingInfo <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/ValueSet-AHANUBCPointOfOriginForAdmissionOrVisit.html">Point of Origin ValueSet</a> for use when Type of Admission is newborn, <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional.html#inv">Inpatient Institutional EOB Invariant</a>, and <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional.html#inv">Outpatient Institutional EOB Invariant</a> (<a href="http://hl7.org/fhir/us/carin-bb/stu1.1/https://jira.hl7.org/browse/FHIR-30370">FHIR-30370</a> and <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/https://jira.hl7.org/browse/FHIR-31384">FHIR-31384</a>)</li>
    <li>Added Invariants requiring adjudication[adjudicationamounttype] and adjudication[adjudicationamounttype].amount when header level adjudication is present to <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional.html#inv">Inpatient</a> and <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional.html#inv">Outpatient</a> Institutional EOBs and changed <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician-definitions.html#ExplanationOfBenefit.total:adjudicationamounttype">Professional and NonClinician EOB total[adjudicationamounttype]</a> to a cardinality of 1..*( Changed item.adjudication[adjudicationamounttype].amount (<a href="http://hl7.org/fhir/us/carin-bb/stu1.1/https://jira.hl7.org/browse/FHIR-30369">FHIR-30369</a>)</li>
    <li>Changes of requirements and guidance on all profiles meta.profile (<a href="http://hl7.org/fhir/us/carin-bb/stu1.1/https://jira.hl7.org/browse/FHIR-30375">FHIR-30375</a>)
        <ul>
            <li>Defined fixed values for a slice of meta.profile for <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/artifacts.html#3">all profiles</a>.</li>
            <li>Added guidance on the use of meta.profile as notes to all profiles.</li>
        </ul>
    </li>
    <li>Updated NCPDP CodeSystem URLs (<a href="http://hl7.org/fhir/us/carin-bb/stu1.1/https://jira.hl7.org/browse/FHIR-31492">FHIR-31492</a>) including:
        <ul>
            <li><a href="http://hl7.org/fhir/us/carin-bb/stu1.1/CodeSystem-NCPDPBrandGenericIndicator.html">NCPDP Brand Generic Indicator</a></li>
            <li><a href="http://hl7.org/fhir/us/carin-bb/stu1.1/CodeSystem-NCPDPCompoundCode.html">NCPDP Compound Code</a></li>
            <li><a href="http://hl7.org/fhir/us/carin-bb/stu1.1/CodeSystem-NCPDPDispensedAsWrittenOrProductSelectionCode.html">NCPDP Dispense As Written (DAW)/Product Selection Code</a></li>
            <li><a href="http://hl7.org/fhir/us/carin-bb/stu1.1/CodeSystem-NCPDPPrescriptionOriginCode.html">NCPDP Prescription Origin Code</a></li>
            <li><a href="http://hl7.org/fhir/us/carin-bb/stu1.1/CodeSystem-NCPDPRejectCode.html">NCPDP Reject Code</a></li>
        </ul>
    </li>
    <li>Changed inoutnetwork slice names and cardinalities (<a href="http://hl7.org/fhir/us/carin-bb/stu1.1/https://jira.hl7.org/browse/FHIR-30635">FHIR-30635</a>),&nbsp;Move total [benefitpaymentstatus] slice to supportingInfo (<a href="http://hl7.org/fhir/us/carin-bb/stu1.1/https://jira.hl7.org/browse/FHIR-33082">FHIR-33082</a>)
        <ul>
            <li>Changed <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional-definitions.html#ExplanationOfBenefit.supportingInfo:benefitpaymentstatus">Inpatient Institutional</a>, <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional-definitions.html#ExplanationOfBenefit.supportingInfo:benefitpaymentstatus">Outpatient Institutional</a>, and <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Pharmacy-definitions.html#ExplanationOfBenefit.supportingInfo:benefitpaymentstatus">Pharmacy</a> EOBs total[inoutnetwork] slice name to benefitpaymentstatus</li>
            <li>Changed <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician-definitions.html#ExplanationOfBenefit.item.adjudication:benefitpaymentstatus">Professional and NonClinician EOB item.adjudication[inoutnetwork]</a> slice name to benefitpayementstatus</li>
            <li>Changed cardinality of <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional-definitions.html#ExplanationOfBenefit.supportingInfo:benefitpaymentstatus">Inpatient</a> and <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional-definitions.html#ExplanationOfBenefit.supportingInfo:benefitpaymentstatus">Outpatient</a> Institutional EOB supportingInfo[benefitpaymentstatus] from (0..1) to (1..1)</li>
            <li>Removed notes in <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html#root">Professional and NonClinician EOB</a> referencing total[inoutnetwork] slice name</li>
            <li>Updated notes for all profiles that referenced inoutnetwork slice name to benefitpaymentstatus</li>
            <li>Updated the Detailed Profile Comparison <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/4_Common_Payer_Consumer_Data_Set.html#profiles-definition">image</a> and <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/CARINforBlueButtonProfileComparison.xlsx">source file (xslx)</a> in section 5</li>
        </ul>
    </li>
    <li>Changed cardinality of several slice properties from (0..1) to (1..1) (<a href="http://hl7.org/fhir/us/carin-bb/stu1.1/https://jira.hl7.org/browse/FHIR-30807">FHIR-30807</a>)
        <ul>
            <li>Changed cardinality of item.adjudication[allowedunits].value from (0..1) to (1..1) in <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional-definitions.html#ExplanationOfBenefit.item.adjudication:allowedunits.value">Inpatient</a> and <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional-definitions.html#ExplanationOfBenefit.item.adjudication:allowedunits.value">Outpatient</a> Institutional EOBs</li>
            <li>Changed <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional-definitions.html#ExplanationOfBenefit.adjudication:denialreason.reason">Inpatient Institutional EOB adjudication[denialreason].reason</a> cardinality from (0..1) to (1.1.)</li>
            <li>Changed <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional-definitions.html#ExplanationOfBenefit.supportingInfo:pointoforigin.code">Outpatient Institutional EOB supportingInfo[pointoforigin].code</a> cardinality from (0..1) to (1..1)</li>
        </ul>
    </li>
    <li>Added 'Must Support' to Professional and NonClinician EOB <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician-definitions.html#ExplanationOfBenefit.item.productOrService">item.productOrService</a> and <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician-definitions.html#ExplanationOfBenefit.item.modifier">item.modifier</a> (<a href="http://hl7.org/fhir/us/carin-bb/stu1.1/https://jira.hl7.org/browse/FHIR-30358">FHIR-30358</a>)</li>
    <li>Fixed Explanations of Benefits Profile Definition <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/4_Common_Payer_Consumer_Data_Set.html#profiles-definition">diagram</a> and <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/CARINforBlueButtonProfileComparisonOverview.pptx">source presentation file (pptx)</a> legend and added DRG owner (<a href="http://hl7.org/fhir/us/carin-bb/stu1.1/https://jira.hl7.org/browse/FHIR-30360">FHIR-30360</a>)</li>
    <li>Changed <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional.html">Inpatient EOB</a> insurance cardinality for 1..1 to 1..* by removing constraint in profile (<a href="http://hl7.org/fhir/us/carin-bb/stu1.1/https://jira.hl7.org/browse/FHIR-31477">FHIR-31477</a>)</li>
    <li>Removed IG specified requirements of Coverage.Subscriber from the <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-Coverage.html">Coverage Profile</a> (<a href="http://hl7.org/fhir/us/carin-bb/stu1.1/https://jira.hl7.org/browse/FHIR-31535">FHIR-31535</a>)</li>
    <li>Removed incorrect casting of <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/SearchParameter-explanationofbenefit-service-date.html">ExplanationOfBenefit service-date (item.serviced) search parameter</a> (<a href="http://hl7.org/fhir/us/carin-bb/stu1.1/https://jira.hl7.org/browse/FHIR-30443">FHIR-30443)</a>)</li>
    <li>Added language regarding security and privacy to the <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/7_Authorization_Authentication_and_Registration.html#fhir-security-and-privacy-guidance">Authorization, Authentication, and Registration page</a> with a link to the <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/http://hl7.org/fhir/secpriv-module.html">HL7 FHIR Security and Privacy Module</a> (<a href="http://hl7.org/fhir/us/carin-bb/stu1.1/https://jira.hl7.org/browse/FHIR-31692">FHIR-31692</a>)</li>
    <li>Shortened the titles of Inpatient Institutional, Outpatient Institutional, and Professional and NonClinician EOB <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/artifacts.html#5">Procedure Code and Procedure Code Modifier ValueSets</a> (<a href="http://hl7.org/fhir/us/carin-bb/stu1.1/https://jira.hl7.org/browse/FHIR-31074">FHIR-31074</a>)</li>
    <li>Fixed errors in examples
        <ul>
            <li><a href="http://hl7.org/fhir/us/carin-bb/stu1.1/ExplanationOfBenefit-InpatientEOBExample1.html">Inpatient</a> and <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/ExplanationOfBenefit-OutpatientEOBExample1.html">Outpatient</a> Institutional EOB examples, removed top-level adjudication because item level adjudication was present (<a href="http://hl7.org/fhir/us/carin-bb/stu1.1/https://jira.hl7.org/browse/FHIR-29802">FHIR-29802</a>)</li>
            <li>Fixed incorrect text in <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/ExplanationOfBenefit-EOBProfessional1a.html">EOB Professional example</a> (<a href="http://hl7.org/fhir/us/carin-bb/stu1.1/https://jira.hl7.org/browse/FHIR-30372">FHIR-30372</a>)</li>
        </ul>
    </li>
    <li>Added missing <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/1_Background.html#davinci-carin">Diagram in How DaVinci’s PDex IG and the CARIN IG for Blue Button® work together</a> (<a href="http://hl7.org/fhir/us/carin-bb/stu1.1/https://jira.hl7.org/browse/FHIR-30083">FHIR-30083</a>)
    </li>
    <li>Added <a href="http://hl7.org/fhir/us/carin-bb/stu1.1/index.html#authors">additional contributors</a> (<a href="http://hl7.org/fhir/us/carin-bb/stu1.1/https://jira.hl7.org/browse/FHIR-30084">FHIR-30084</a>)</li>
    <li>Transitioned project structure for Sushi 1.0.0+ (For Implementation Guide generation)</li>
    <li>Corrected link to 3M licensing information <a>https://jira.hl7.org/browse/FHIR-31066</a></li>
    <li>Updated the Server CapabilityStatement
	 Persuasive with Mod, Add _id to Coverage Search parameters in CapabilityStatement <a>https://jira.hl7.org/browse/FHIR-30009</a></li>
    <li>Added Tighter guidance requiring WHEN provenance in the EOB profiles<a>https://jira.hl7.org/browse/FHIR-31639</a></li>
    <li>Removed the invariant referring to careTeam role "site" from the IG<a>https://jira.hl7.org/browse/FHIR-31658</a></li>
    <li>Increased binding strength for place of service codes<a>https://jira.hl7.org/browse/FHIR-31502</a></li>
    <li>Added more granular date searching with additional search parameters<a>https://jira.hl7.org/browse/FHIR-33165</a></li>
    <li>Removed Invariant disallowing not-applicable from Outpatient Institutional EoB item.productOrService<a>https://jira.hl7.org/browse/FHIR-32850</a></li>
    <li>Change item.location[x] to only locationCodeableConcept<a>https://jira.hl7.org/browse/FHIR-32067</a></li>
</ul>
<p> </p>
