CARIN Consumer Directed Payer Data Exchange (CARIN IG for Blue Button®) was developed under the <a href="https://www.carinalliance.com/">CARIN Alliance</a>.



<h3> Changes and Updates for Version 2.1.0 (from version 2.0.0)</h3>


The current official published version of CARIN BB for FHIR R4 
<ul>
  <li>Changed base profile of the <a href="StructureDefinition-C4BB-Patient.html">Patient</a>, <a href="StructureDefinition-C4BB-Coverage.html">Coverage</a>, <a href="StructureDefinition-C4BB-Practitioner.html">Practitioner</a>, <a href="StructureDefinition-C4BB-Organization.html">Organization</a>, and <a href="StructureDefinition-C4BB-RelatedPerson.html">RelatedPerson</a> to <a href="https://hl7.org/fhir/us/core/STU6.1/">US Core 6.1</a> and added complies with requirements to <a href="https://hl7.org/fhir/us/core/STU3.1.1/">US Core 3.1.1</a> where there was a profile in that version (<a href="https://jira.hl7.org/browse/FHIR-46374">FHIR-46374</a>) *.  Note: Most of the changes from US Core 3.1.1 to 6.1 are reductions in Must Support requirements, but there are a small number of breaking changes to note, including:
    <ul>
      <li>The <a href="StructureDefinition-C4BB-Coverage.html">Coverage</a> profile now requires the member identifier, if present, to have a type of <code>MB</code> from system <code>http://terminology.hl7.org/CodeSystem/v2-0203</code>. The previous version of this profile did not have specific requirements for the member ID, though the example had a member ID that matched US Core 6.1 requirements.</li>
      <li>The <a href="StructureDefinition-C4BB-Coverage.html">Coverage</a> profile now has an extensible binding to a ValueSet to Coverage.type, where there was no previous binding.</li>
      <li>The <a href="StructureDefinition-C4BB-Organization.html">Organization</a> and <a href="StructureDefinition-C4BB-Organization.html">Practitioner</a> profiles now have ID validation checks for NPI and CLIA numbers</li>
    </ul>
  </li>
  <li>Added "Basis" profiles for all EOB types that identify all data requirements excluding financial data. This is made available for other IGs (e.g. <a href="https://hl7.org/fhir/us/davinci-pdex">Da Vinci PDex</a>) that need communicate EOB information to parties other than the patient/member. This does not represent any change of conformance requirements for the existing EOB profiles. (<a href="https://jira.hl7.org/browse/FHIR-40999">FHIR-40999</a> and <a href="https://jira.hl7.org/browse/FHIR-40820">FHIR-40820</a>)</li>
  <li>Corrected the ICD-9 CodeSystem url (changed from http://terminology.hl7.org/CodeSystem/icd9 to http://hl7.org/fhir/sid/icd-9-cm) (<a href="https://jira.hl7.org/browse/FHIR-41791">FHIR-41791</a>)</li>
  <li>Corrected several invariants that either had the wrong context or an expression that returned false negatives if the element of interest had multiple iterations (<a href="https://jira.hl7.org/browse/FHIR-46276">FHIR-46276</a>)</li>
  <li>Added a <code>masked</code> Data Absent Reason Code to the <a href="ValueSet-CDCICD910CMDiagnosisCodes.html">Diagnosis Codes ValueSet</a> to allow for masking of sensitive diagnosis codes. (<a href="https://jira.hl7.org/browse/FHIR-40441">FHIR-40441</a>)</li>
  <li>Reduced meta.profile requirements for all profiles. meta.profile still required, but the invariant checking for the profile url of this guide is no longer an error, but a informational warning.  (<a href="https://jira.hl7.org/browse/FHIR-41498">FHIR-41498</a>)</li>
  <li>Fixed the expression for the <a href="SearchParameter-explanationofbenefit-service-start-date.html">Service Start Date SearchParameter</a> (<a href="https://jira.hl7.org/browse/FHIR-46376">FHIR-46376</a>)</li>
  <li>Added the ability for the ExplanationOfBenefit.provider to be an Organization for the <a href="StructureDefinition-C4BB-ExplanationOfBenefit-Oral.html">Oral EOB Profile</a> (<a href="https://jira.hl7.org/browse/FHIR-44662">FHIR-44662</a>)</li>
  <li>Removed the inclusion of codes in <a href="ValueSet-C4BBPayerBenefitPaymentStatus.html">Benefit Payment Status</a> from the <a href="ValueSet-C4BBTotalCategoryDiscriminator.html"></a> (<a href="https://jira.hl7.org/browse/FHIR-40245">FHIR-40245</a>)</li>
  <li>Updated guidance for the <a href= "SearchParameter-explanationofbenefit-service-date.html">Service Date Search Parameter</a> to state that the search parameter is to simplify the search in case the client does not know the specific date type to search for based on EOB type. (<a href="https://jira.hl7.org/browse/FHIR-41634">FHIR-41634</a>)</li>
  <li>Clarified search removing the need for a patient search argument in the <a href = "CapabilityStatement-c4bb.html">Capability Statement</a>. (<a href="https://jira.hl7.org/browse/FHIR-41628">FHIR-41628</a>)</li>
  <li>Improved the <a href="ExplanationOfBenefit-EOBProfessional1.html">EOB Professional 1 example</a> to include more realistic amounts and a payee. (<a href="https://jira.hl7.org/browse/FHIR-43464">FHIR-43464</a>)</li>
  <li>Updated the menu structure adding support links. (<a href="https://jira.hl7.org/browse/FHIR-46270">FHIR-46270</a>)</li>

</ul>


### Changes and Updates for Version 2.0.0 (from version 1.1.0)
The current official published version of CARIN BB for FHIR R4 


<ul>
  <li>Added <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Oral.html">Oral ExplanationOfBenefit profile</a> and vision type to <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">Professional NonClinician ExplanationOfBenefit profile</a> (<a href="https://jira.hl7.org/browse/FHIR-34009">FHIR-34009</a>, <a href="https://jira.hl7.org/browse/FHIR-27025">FHIR-27025</a>, <a href="https://jira.hl7.org/browse/FHIR-37706">FHIR-37706</a>, <a href="https://jira.hl7.org/browse/FHIR-37562">FHIR-37562</a>, and <a href="https://jira.hl7.org/browse/FHIR-35146">FHIR-35146</a>)
    <ul>
      <li>Added orthodontics and prosthesis to <a href="https://hl7.org/fhir/us/carin-bb/STU2/ValueSet-C4BBSupportingInfoType.html">Supporting Info Type ValueSet</a> used as a discriminator for the EOB Oral profile supportingInfo slice discriminator (<a href="https://jira.hl7.org/browse/FHIR-34010">FHIR-34010</a>)</li>
      <li>Added <a href="https://hl7.org/fhir/us/carin-bb/STU2/ValueSet-C4BBSurfaceCodes.html">US Surface Codes</a> for Oral ExplanationOfBenefit.item.subSite (<a href="https://jira.hl7.org/browse/FHIR-34089">FHIR-34089</a>)</li>
      <li>Added Invariants requiring all ExplanationOfBenefit.supportingInfo[additionalBodySite] instances be referred to by at least one ExplanationOfBenefit.item and require a tooth number for line items where a surface code in ExplanationOfBenefit.item.subsite exists in <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Oral.html">Oral ExplanationOfBenefit profile</a> (<a href="https://jira.hl7.org/browse/FHIR-34091">FHIR-34091</a>)</li>
    </ul>
  </li>

  <li>Changed cardinality of ExplanationOfBenefit.item from 0..* to 1..* in <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit.html">Base ExplanationOfBenefit profile</a> requiring ExplanationOfBenefit for all <a href="https://hl7.org/fhir/us/carin-bb/STU2/artifacts.html#structures-resource-profiles">all Resource ExplanationOfBenefit profiles</a> (<a href="https://jira.hl7.org/browse/FHIR-34114">FHIR-34114</a>) *</li>

  <li>Require item.location[x] to be only CodeableConcept in <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">Professional</a> and <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Oral.html">Oral</a> ExplanationOfBenefit profiles (<a href="https://jira.hl7.org/browse/FHIR-32067">FHIR-32067</a>) *</li>

  <li>Changed <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">Professional NonClinician ExplanationOfBenefit</a> item.location[x] from cardinality of 0..1 to 1..1 and added Must Support (<a href="https://jira.hl7.org/browse/FHIR-34148">FHIR-34148</a>) *</li>

  <li>Changed item.serviced[x] and billablePeriod cardinality (<a href="https://jira.hl7.org/browse/FHIR-31639">FHIR-31639</a> and <a href="https://jira.hl7.org/browse/FHIR-36760">FHIR-36760</a>) *
    <ul>
      <li>ExplanationOfBenefit.item.serviced[x] from 0..1 to 1..1 and billablePeriod from 0..1 to 1..1 for <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional.html">Outpatient Institutional ExplanationOfBenefit profile</a></li>
      <li>ExplanationOfBenefit.item.serviced[x] and ExplanationOfBenefit.billablePeriod from 0..1 to 1..1 for <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">Professional NonClinician ExplanationOfBenefit profile</a></li>
      <li>ExplanationOfBenefit.item.serviced[x] from 0..1 to 1..1 for <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Pharmacy.html">Pharmacy ExplanationOfBenefit profile</a></li>
    </ul>
  </li>

  <li>Changed the <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Pharmacy.html">Pharmacy Explanation Of Benefit profile</a> serviced[x] to only be a date (<a href="https://jira.hl7.org/browse/FHIR-38668">FHIR-38668</a>) *</li>

  <li>Added Must Support to ExplanationOfBenefit.item.serviced[x] leaf elements on the <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional.html">Outpatient Institutional</a> and <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">Professional NonClinician</a> ExplanationOfBenefit profiles (<a href="https://jira.hl7.org/browse/FHIR-38669">FHIR-38669</a>) *</li>

  <li>Moved ExplanationOfBenefit.total[benefitpaymentstatus] slice to ExplanationOfBenefit.adjudication[benefitpaymentstatus] (therefore not requiring an amount property) for <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional.html">Inpatient Institutional</a>, <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional.html">Outpatient Institutional</a>, <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Pharmacy.html">Pharmacy</a>, and <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Oral.html">Oral</a> ExplanationOfBenefit profiles, changed the pattern to match other adjudication repetitions, and update the invariants appropriately(<a href="https://jira.hl7.org/browse/FHIR-33082">FHIR-33082</a>, <a href="https://jira.hl7.org/browse/FHIR-37726">FHIR-37726</a>, <a href="https://jira.hl7.org/browse/FHIR-38063">FHIR-38063</a>, and <a href="https://jira.hl7.org/browse/FHIR-35358">FHIR-35358</a>) *</li>


  <li>Changed codes term of "performing" provider to "rendering" provider in the <a href="https://hl7.org/fhir/us/carin-bb/STU2/CodeSystem-C4BBClaimCareTeamRole.html">Claim Care Team Role</a> and <a href="https://hl7.org/fhir/us/carin-bb/STU2/CodeSystem-C4BBAdjudicationDiscriminator.html">Adjudication Discriminator</a> CodeSystems and in <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Oral.html">Oral ExplanationOfBenefit </a> and <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">Professional NonClinician ExplanationOfBenefit</a> profiles rendering provider network status (<a href="https://jira.hl7.org/browse/FHIR-37727">FHIR-37727</a>) *</li>

  <li>Changed rendering network status from ExplanationOfBenefit.supportingInfo slice to ExplanationOfBenefit.adjudication slice in <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Oral.html">Oral ExplanationOfBenefit </a> and <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">Professional NonClinician ExplanationOfBenefit</a> profiles and changed billing network status ExplanationOfBenefit.supportingInfo slice to ExplanationOfBenefit.adjudication slice in <a href="artifacts.html#structures-resource-profiles">all non-abstract ExplanationOfBenefit profiles</a> (<a href="https://jira.hl7.org/browse/FHIR-37728">FHIR-37728</a>) *</li>

  <li>Changed provider "contracting network status" to provider "network status" by updating <a href="https://hl7.org/fhir/us/carin-bb/STU2/CodeSystem-C4BBAdjudicationDiscriminator.html">Adjudication Discriminator</a>; changing the C4BBPayerProviderContractingStatus ValueSet to <a href="https://hl7.org/fhir/us/carin-bb/STU2/ValueSet-C4BBPayerProviderNetworkStatus.html">C4BBPayerProviderNetworkStatus ValueSet</a> with `innetwork` and `outofnetwork` codes; removing "contracted" and "notcontracted" codes in <a href="https://hl7.org/fhir/us/carin-bb/STU2/CodeSystem-C4BBPayerAdjudicationStatus.html">Payer Adjudication Status ValueSet</a>, and updating the `innetwork` and `outofnetwork` code definitions for applicability for the provider network status (<a href="https://jira.hl7.org/browse/FHIR-38059">FHIR-38059</a>) *</li>


  <li>Updated the definition of <a href="https://hl7.org/fhir/us/carin-bb/STU2/Conformance_Requirements.html#must-support">Must Support</a> to state "Health Plan API actors SHALL be capable of populating all data elements the payer maintains" which are marked as Must Support, and remove the requirement that "Consumer App actors SHOULD be capable of storing the information for other purposes" (<a href="https://jira.hl7.org/browse/FHIR-36675">FHIR-36675</a> and <a href="https://jira.hl7.org/browse/FHIR-35730">FHIR-35730</a>)</li>

  <li>Changed ExplanationOfBenefit.adjudication and ExplanationOfBenefit.item.adjudication slicing from closed to open for <a href="https://hl7.org/fhir/us/carin-bb/STU2/artifacts.html#structures-resource-profiles">all Resource ExplanationOfBenefit profiles</a> (<a href="https://jira.hl7.org/browse/FHIR-34241">FHIR-34241</a>)</li>

  <li>Add not-applicable code to <a href="https://hl7.org/fhir/us/carin-bb/STU2/ValueSet-AMACPTCMSHCPCSProcedureCodes.html">Professional Procedure Codes ValueSet</a> and <a href="https://hl7.org/fhir/us/carin-bb/STU2/ValueSet-ADADentalProcedureCode.html">Oral Procedure Code ValueSet</a> for <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">Professional NonClinician ExplanationOfBenefit profile</a> (with Invariant allowing only if type = vision) and <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Oral.html">Oral</a> (ExplanationOfBenefit.item.productOrService) (<a href="https://jira.hl7.org/browse/FHIR-33024">FHIR-33024</a>)</li>

  <li>Removed Invariant that not allowing not-applicable code for <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional.html">Outpatient Institutional ExplanationOfBenefit profile</a> item.productOrService (<a href="https://jira.hl7.org/browse/FHIR-32850">FHIR-32850</a>)</li>


  <li>Changed <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-Practitioner.html">Practitioner</a> and <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-Organization.html">Organization</a> profiles identifier.type in the NPI slice to use the `NPI` from CodeSystem http://terminology.hl7.org/CodeSystem/v2-0203 (<a href="https://jira.hl7.org/browse/FHIR-35712">FHIR-35712</a>) *</li>

  <li>Updated the <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit.html">Base Explanation Of Benefit profile</a> to require the identifier to contain the unique claim id (<a href="https://jira.hl7.org/browse/FHIR-38660">FHIR-38660</a>) *</li>

  <li>Added Non-emergency transport information to ExplanationOfBenefit.supportingInfo slices to the <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">Professional NonClinician ExplanationOfBenefit profile</a> along with invariant rules (<a href="https://jira.hl7.org/browse/FHIR-37615">FHIR-37615</a>)</li>

  <li>Removed meta.profile requirements on <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit.html">Abstract base ExplanationOfBenefit profile</a> (<a href="https://jira.hl7.org/browse/FHIR-34504">FHIR-34504</a>)</li>

  <li>Added refillsAuthorized slice to ExplanationOfBenefit.supportingInfo of <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Pharmacy.html">Pharmacy ExplanationOfBenefit</a> profile (<a href="https://jira.hl7.org/browse/FHIR-33487">FHIR-33487</a>)</li>

  <li>Added to rejectreason code to <a href="CodeSystem-C4BBAdjudicationDiscriminator.html">Adjudication Discriminator</a> and changed ExplanationOfBenefit.item.adjudication denialreason slice to rejectreason with a fixed category code of rejectreason in <a href="https://build.fhir.org/ig/HL7/carin-bb/StructureDefinition-C4BB-ExplanationOfBenefit-Pharmacy.html">Pharmacy Explanation Of Benefit profile</a>. (<a href="https://jira.hl7.org/browse/FHIR-38062">FHIR-38062</a>) *</li>

  <li>Changed payee.party cardinality from 1..1 to 0..1 and added invariant requiring payee.party if payee.type='other' in <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit.html">Base ExplanationOfBenefit profile</a> and added new <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-RelatedPerson.html">RelatedPerson profile</a> as a reference option (<a href="https://jira.hl7.org/browse/FHIR-31699">FHIR-31699</a> and <a href="https://jira.hl7.org/browse/FHIR-37740">FHIR-37740</a>)</li>

  <li>Added <a href="https://hl7.org/fhir/us/carin-bb/STU2/SearchParameter-explanationofbenefit-service-start-date.html">service-start-date search parameter</a> and <a href="https://hl7.org/fhir/us/carin-bb/STU2/SearchParameter-explanationofbenefit-billable-period-start.html">billable-period-start search parameter</a> (<a href="https://jira.hl7.org/browse/FHIR-33165">FHIR-33165</a> and <a href="https://jira.hl7.org/browse/FHIR-34428">FHIR-34428</a>)</li>

  <li>Added _id search parameter for all resources and change conformance expectation for Practitioner and Organization resources to SHOULD to allow for them to be supported as contained resources in <a href="https://hl7.org/fhir/us/carin-bb/STU2/CapabilityStatement-c4bb.html">Capability Statement</a> with associated guidance and related the resources' meta.lastUpdated requirement (<a href="https://jira.hl7.org/browse/FHIR-38108">FHIR-38108</a> and <a href="https://jira.hl7.org/browse/FHIR-36676">FHIR-36676</a>)</li>

  <li>Added guidance on the expectation of _include support and interpretation of _include=ExplanationOfBenefit:* to <a href="https://hl7.org/fhir/us/carin-bb/STU2/searchparameters.html">search Parameters page</a> and <a href="https://hl7.org/fhir/us/carin-bb/STU2/CapabilityStatement-c4bb.html">Capability Statement</a> including adding ExplanationOfBenefit:payee (<a href="https://jira.hl7.org/browse/FHIR-32982">FHIR-32982</a>)</li>


  <li>Added a requirement in the <a href="https://hl7.org/fhir/us/carin-bb/STU2/Conformance_Requirements.html#capabilitystatement-server-requirement">General Guidance</a> that servers SHALL include a CapabilityStatement that has a CapabilityStatement.instantiates specifying the CapabilityStatement in this specification (<a href="https://jira.hl7.org/browse/FHIR-35360">FHIR-35360</a>)</li>


  <li>Updated the <a href="https://hl7.org/fhir/us/carin-bb/STU2/CapabilityStatement-c4bb.html">CapabilityStatement</a> security section allowing unauthorized requests responses of HTTP 403 "Forbidden" or HTTP 404 "Not Found" in addition to the previously stated HTTP 401 "Unauthorized" (<a href="https://jira.hl7.org/browse/FHIR-35766">FHIR-35766</a>)</li>

  <li>Moved ExplanationOfBenefit searches documentation from read interaction to search-type interaction in <a href="https://hl7.org/fhir/us/carin-bb/STU2/CapabilityStatement-c4bb.html">Capability Statement</a> (<a href="https://jira.hl7.org/browse/FHIR-33176">FHIR-33176</a>)</li>

  <li>Removed invalid invariant from <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">Professional NonClinician ExplanationOfBenefit profile</a> that required ExplanationOfBenefit.careTeam.provider to be an Organization reference when careTeam.role was 'site' ('site' not a code in the role ValueSet) (<a href="https://jira.hl7.org/browse/FHIR-31658">FHIR-31658</a>)</li>

  <li>Corrected invalid invariant for the CareTeam qualification being from a specific CodeSystem when the type is rendering in the <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit.html">Abstract base ExplanationOfBenefit profile</a> (<a href="https://jira.hl7.org/browse/FHIR-35889">FHIR-35889</a>)</li>

  <li>Added paidbypatientcash, paidbypatientother, paidbypatienthealthaccount codes to <a href="https://hl7.org/fhir/us/carin-bb/STU2/ValueSet-C4BBAdjudication.html">Adjudication ValueSet</a> and <a href="https://hl7.org/fhir/us/carin-bb/STU2/CodeSystem-C4BBAdjudication.html">Adjudication CodeSystem</a> (<a href="https://jira.hl7.org/browse/FHIR-33996">FHIR-33996</a> and <a href="https://jira.hl7.org/browse/FHIR-33996">FHIR-37831</a>)</li>

  <li>Updated the url for the HCPCS Level II codes in <a href="https://hl7.org/fhir/us/carin-bb/STU2/ValueSet-C4BBEOBInstitutionalProcedureCodes.html">C4BBEOBInstitutionalProcedureCodes</a> (<a href="https://jira.hl7.org/browse/FHIR-37334">FHIR-37334</a>)</li>

  <li>Removed the fixed meta.profile slice requirement including the full version and replaced with invariant requirements requiring a meta.profile with the major and minor version included in <a href="https://hl7.org/fhir/us/carin-bb/STU2/artifacts.html#structures-resource-profiles">all non-abstract ExplanationOfBenefit profiles</a> (to allow instances from different patch versions to still validate) (<a href="https://jira.hl7.org/browse/FHIR-34223">FHIR-34223</a>)</li>

  <li>Updated from US Core 3.1.0 to 3.1.1. (<a href="https://jira.hl7.org/browse/FHIR-33177">FHIR-33177</a> and <a href="https://jira.hl7.org/browse/FHIR-35708">FHIR-35708</a>)</li>

  <li>Modified security guidance in <a href="https://hl7.org/fhir/us/carin-bb/STU2/Security_And_Privacy_Considerations.html">Security and Privacy Considerations</a> page (<a href="https://jira.hl7.org/browse/FHIR-31693">FHIR-31693</a>, <a href="https://jira.hl7.org/browse/FHIR-35729">FHIR-35729</a> and <a href="https://jira.hl7.org/browse/FHIR-35722">FHIR-35722</a>)</li>

  <li>Changed display of code other from default value of "Provider to "Other" in <a href="https://hl7.org/fhir/us/carin-bb/STU2/ValueSet-C4BBPayeeType.html">Payee Type ValueSet</a> (<a href="https://jira.hl7.org/browse/FHIR-34020">FHIR-34020</a>)</li>

  <li>Added guidance for the use of the 11-digit NDC code for <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Pharmacy.html">Pharmacy ExplanationOfBenefit</a> profile item.productOrService and item.detail.productOrService (<a href="https://jira.hl7.org/browse/FHIR-32660">FHIR-32660</a>)</li>

  <li>Corrected XPath expression for the <a href="https://hl7.org/fhir/us/carin-bb/STU2/SearchParameter-explanationofbenefit-service-date.html">service-date SearchParameter</a> (<a href="https://jira.hl7.org/browse/FHIR-32843">FHIR-32843</a>)</li>
  
  <li>Corrected invariant for <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional.html">Inpatient Institutional</a> and <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional.html">Outpatient Institutional</a> ExplanationOfBenefit profiles to allow other adjudication slices that do not have a category.code from C4BBAdjudication ValueSet (adjudicationamounttype slice) (<a href="https://jira.hl7.org/browse/FHIR-32978">FHIR-32978</a>)</li>

  <li>Removed second extra repetition of meta.profile on all <a href="https://hl7.org/fhir/us/carin-bb/STU2/artifacts.html#7">examples</a> (<a href="https://jira.hl7.org/browse/FHIR-32428">FHIR-32428</a>)</li>

  <li>Added clearer guidance on ExplanationOfBenefit.supportingInfo[servicefacility] and ExplanationOfBenefit.item.location[x] to <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">Professional NonClinician ExplanationOfBenefit profile</a>; ExplanationOfBenefit.item.location[x] and ExplanationOfBenefit.supportingInfo[typeofbill] to <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional.html">Inpatient Institutional</a> and <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional.html">Outpatient Institutional</a> ExplanationOfBenefit profiles (<a href="https://jira.hl7.org/browse/FHIR-34087">FHIR-34087</a>)</li>

  <li>Removed references to PractitionerRole and Location from <a href="https://hl7.org/fhir/us/carin-bb/STU2/Background.html#carin-ig-for-blue-button-relation-to-other-igs">Background Relation to other IGs</a> section (<a href="https://jira.hl7.org/browse/FHIR-33060">FHIR-33060</a>)</li>

  <li>Added clearer description of ExplanationOfBenefit.related for <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional.html">Base ExplanationOfBenefit</a> profile (<a href="https://jira.hl7.org/browse/FHIR-31411">FHIR-31411</a>)</li>

  <li>Removed CodeSystems that were duplicative of those identified in terminology.hl7.org (THO). These removals are non-substantive as they do not change the CodeSystem url used in resource instance communication (<a href="https://jira.hl7.org/browse/FHIR-38285">FHIR-38285</a>)</li>

  <li>Updated element short descriptions to be more meaningful for all  <a href="https://hl7.org/fhir/us/carin-bb/STU2/artifacts.html#structures-resource-profiles">all Resource profiles</a> (<a href="https://jira.hl7.org/browse/FHIR-34091">FHIR-34091</a>)</li>

  <li>Add guidance to the <a href="https://hl7.org/fhir/us/carin-bb/STU2/General_Guidance.html#considerations-for-improving-interoperability">General Guidance</a> section providing more information on considerations payers and consumer apps should make for understanding improving rendering of the Explanation Of Benefit data. A <a href="https://hl7.org/fhir/us/carin-bb/STU2/General_Guidance.html#example-printed-eob-mapping">example explanation of benefit document</a> with mapping to CPCDS data elements and profile paths is provided to assist consumer app developers in understanding the data elements and suggesting how payers might improve their API documentation for connecting system developers (<a href="https://jira.hl7.org/browse/FHIR-31069">FHIR-31069</a>)</li>

  <li>Updated <a href="https://hl7.org/fhir/us/carin-bb/STU2/Common_Payer_Consumer_Data_Set.html#common-payer-consumer-data-set-cpcds">diagrams and CPCDS resources</a> to match the changes on the latest version of this specification and added comparison of Explanation of Benefit dates (<a href="https://jira.hl7.org/browse/FHIR-35212">FHIR-35212</a>, <a href="https://jira.hl7.org/browse/FHIR-34513">FHIR-34513</a>, and  <a href="https://jira.hl7.org/browse/FHIR-38661">FHIR-38661</a>)</li>

  <li>Remove Must Support from Patient.address.district in the <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-Patient.html">Patient profile</a> (<a href="https://jira.hl7.org/browse/FHIR-35710">FHIR-35710</a>)</li>

  <li>Added a note for implementers to all locally defined CodeSystems that may switch the to central terminology.hl7.org (THO) that the code system is subject to change in a future version (<a href="https://jira.hl7.org/browse/FHIR-37830">FHIR-37830</a>)</li>

  <li>Added guidance regarding the definition of the payer id identifier to the <a href="https://hl7.org/fhir/us/carin-bb/STU2/CodeSystem-C4BBIdentifierType.html">Identifier Type CodeSystem</a> and the <a href="https://hl7.org/fhir/us/carin-bb/STU2/StructureDefinition-C4BB-Organization-definitions.html">Organization profile</a> identifier payerid slice (<a href="https://jira.hl7.org/browse/FHIR-36771">FHIR-36771</a> and <a href="https://jira.hl7.org/browse/FHIR-36770">FHIR-36770</a>)</li>

  <li>Made navigation and title updates <a href="https://jira.hl7.org/browse/FHIR-38692">FHIR-38692</a>)</li>

  <li>Removed broken link reference to "API Resource Collection in Health (ARCH)" from the <a href="https://hl7.org/fhir/us/carin-bb/STU2/Conformance_Requirements.html">General Guidance</a> page (<a href="https://jira.hl7.org/browse/FHIR-35956">FHIR-35956</a>)</li>

</ul>


### Changes and Updates for Version 1.1.0
STU Update of STU 1

<ul>
    <li>Added Data Absent Reason "not-applicable" code to <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/ValueSet-C4BBEOBInstitutionalProcedureCodes.html#definition">Institutional Procedure Codes ValueSet</a> for use with Inpatient Institutional EOB item.productOrService and an <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional-definitions.html#ExplanationOfBenefit.item.productOrService">Invariant disallowing the use of this code in Outpatient Institutional EOB</a> (<a href="https://jira.hl7.org/browse/FHIR-30357">FHIR-30357</a>)</li>
    <li>Changed <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional-definitions.html#ExplanationOfBenefit.supportingInfo:drg.code">Inpatient Institutional EOB supportingInfo DRG code terminology binding</a> strength from required to extensible to allow for state Medicaid assigned DRGs (<a href="https://jira.hl7.org/browse/FHIR-30380">FHIR-30380</a>)</li>
    <li>Added HIPPS codes to <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/ValueSet-C4BBEOBInstitutionalProcedureCodes.html">Institutional EOB Procedure Codes ValueSet</a> (<a href="https://jira.hl7.org/browse/FHIR-30413">FHIR-30413</a>)</li>
    <li> Added C4BB Payer Benefit Payment Status to <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/ValueSet-C4BBAdjudicationCategoryDiscriminator.html#definition">C4BB Adjudication Category Discriminator ValueSet</a> for use in the Professional and NonClinician EOB item.adjudication and removed inoutnetwork code from <a  href="CodeSystem-C4BBAdjudicationDiscriminator.html">Adjudication Discriminator CodeSystem</a> (<a href="https://jira.hl7.org/browse/FHIR-30806">FHIR-30806</a>)</li>
    <li>Changes on differentiating ExplanationOfBenefit profiles (<a href="https://jira.hl7.org/browse/FHIR-31594">FHIR-31594</a>) *
        <ul>
            <li>Added ExplanationofBenefit.subType requirements to the <a href = "StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional-definitions.html#ExplanationOfBenefit.subType">Inpatient</a> and <a href = "StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional-definitions.html#ExplanationOfBenefit.subType">Outpatient</a> Institutional ExplanationOfBenefit profiles.</li>
            <li>Added <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/ValueSet-C4BBInstitutionalClaimSubType.html">Institutional Claim Subtype ValueSet</a> and <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/CodeSystem-C4BBInstitutionalClaimSubType.html">Institutional Claim Subtype CodeSystem</a></li>
        </ul>
    </li>
    <li>Changed resources used to present patient account number and medical record number (<a href="https://jira.hl7.org/browse/FHIR-31534">FHIR-31534</a>) *
        <ul>
            <li>Removed medrecnum and patacctnum slices from the <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-Patient.html">Patient profile Patient.Identifier</a></li>
            <li>Added medicalrecordnumber and patientaccountnumber supportingInfo slices to <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional.html">Inpatient</a>, <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional.html">Outpatient</a>, and <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html">Professional Non-Clinical</a> ExplanationOfBenefit profiles</li>
            <li>Added medicalrecordnumber and patientaccountnumber to <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/CodeSystem-C4BBSupportingInfoType.html">Supporting Info Type CodeSystem</a></li>
        </ul>
    </li>
    <li>Added <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/CodeSystem-AHANUBCPointOfOriginForAdmissionOrVisitNewborn.html">NUBC Point of Origin for Newborn CodeSystem</a> and renamed NUBC Point of Origin CodeSystem to <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/CodeSystem-AHANUBCPointOfOriginForAdmissionOrVisitNonnewborn.html"> NUBC Point of Origin for Non-newborn CodeSystem</a> for Inpatient and Outpatient Institutional EOB supportingInfo <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/ValueSet-AHANUBCPointOfOriginForAdmissionOrVisit.html">Point of Origin ValueSet</a> for use when Type of Admission is newborn, <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional.html#inv">Inpatient Institutional EOB Invariant</a>, and <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional.html#inv">Outpatient Institutional EOB Invariant</a> (<a href="https://jira.hl7.org/browse/FHIR-30370">FHIR-30370</a> and <a href="https://jira.hl7.org/browse/FHIR-31384">FHIR-31384</a>) *</li>
    <li>Added Invariants requiring adjudication[adjudicationamounttype] and adjudication[adjudicationamounttype].amount when header level adjudication is present to <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional.html#inv">Inpatient</a> and <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional.html#inv">Outpatient</a> Institutional EOBs and changed <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician-definitions.html#ExplanationOfBenefit.total:adjudicationamounttype">Professional and NonClinician EOB total[adjudicationamounttype]</a> to a cardinality of 1..*( Changed item.adjudication[adjudicationamounttype].amount (<a href="https://jira.hl7.org/browse/FHIR-30369">FHIR-30369</a>) *</li>
    <li>Changes of requirements and guidance on all profiles meta.profile (<a href="https://jira.hl7.org/browse/FHIR-30375">FHIR-30375</a>) *
        <ul>
            <li>Defined fixed values for a slice of meta.profile for <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/artifacts.html#3">all profiles</a>.</li>
            <li>Added guidance on the use of meta.profile as notes to all profiles.</li>
        </ul>
    </li>
    <li>Updated NCPDP CodeSystem URLs (<a href="https://jira.hl7.org/browse/FHIR-31492">FHIR-31492</a>) * including:
        <ul>
            <li><a href="https://hl7.org/fhir/us/carin-bb/stu1.1/CodeSystem-NCPDPBrandGenericIndicator.html">NCPDP Brand Generic Indicator</a></li>
            <li><a href="https://hl7.org/fhir/us/carin-bb/stu1.1/CodeSystem-NCPDPCompoundCode.html">NCPDP Compound Code</a></li>
            <li><a href="https://hl7.org/fhir/us/carin-bb/stu1.1/CodeSystem-NCPDPDispensedAsWrittenOrProductSelectionCode.html">NCPDP Dispense As Written (DAW)/Product Selection Code</a></li>
            <li><a href="https://hl7.org/fhir/us/carin-bb/stu1.1/CodeSystem-NCPDPPrescriptionOriginCode.html">NCPDP Prescription Origin Code</a></li>
            <li><a href="https://hl7.org/fhir/us/carin-bb/stu1.1/CodeSystem-NCPDPRejectCode.html">NCPDP Reject Code</a></li>
        </ul>
    </li>
    <li>Changed inoutnetwork slice names and cardinalities (<a href="https://jira.hl7.org/browse/FHIR-30635">FHIR-30635</a>), and Move total [benefitpaymentstatus] slice to supportingInfo (<a href="https://jira.hl7.org/browse/FHIR-33082">FHIR-33082</a>) *
        <ul>
            <li>Changed <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional-definitions.html#ExplanationOfBenefit.supportingInfo:benefitpaymentstatus">Inpatient Institutional</a>, <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional-definitions.html#ExplanationOfBenefit.supportingInfo:benefitpaymentstatus">Outpatient Institutional</a>, and <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Pharmacy-definitions.html#ExplanationOfBenefit.supportingInfo:benefitpaymentstatus">Pharmacy</a> EOBs total[inoutnetwork] slice name to benefitpaymentstatus</li>
            <li>Changed <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician-definitions.html#ExplanationOfBenefit.item.adjudication:benefitpaymentstatus">Professional and NonClinician EOB item.adjudication[inoutnetwork]</a> slice name to benefitpayementstatus</li>
            <li>Changed cardinality of <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional-definitions.html#ExplanationOfBenefit.supportingInfo:benefitpaymentstatus">Inpatient</a> and <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional-definitions.html#ExplanationOfBenefit.supportingInfo:benefitpaymentstatus">Outpatient</a> Institutional EOB supportingInfo[benefitpaymentstatus] from (0..1) to (1..1)</li>
            <li>Removed notes in <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician.html#root">Professional and NonClinician EOB</a> referencing total[inoutnetwork] slice name</li>
            <li>Updated notes for all profiles that referenced inoutnetwork slice name to benefitpaymentstatus</li>
            <li>Updated the Detailed Profile Comparison <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/4_Common_Payer_Consumer_Data_Set.html#profiles-definition">image</a> and <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/CARINforBlueButtonProfileComparison.xlsx">source file (xslx)</a> in section 5</li>
        </ul>
    </li>
    <li>Changed cardinality of several slice properties from (0..1) to (1..1) (<a href="https://jira.hl7.org/browse/FHIR-30807">FHIR-30807</a>) *
        <ul>
            <li>Changed cardinality of item.adjudication[allowedunits].value from (0..1) to (1..1) in <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional-definitions.html#ExplanationOfBenefit.item.adjudication:allowedunits.value">Inpatient</a> and <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional-definitions.html#ExplanationOfBenefit.item.adjudication:allowedunits.value">Outpatient</a> Institutional EOBs</li>
            <li>Changed <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional-definitions.html#ExplanationOfBenefit.adjudication:denialreason.reason">Inpatient Institutional EOB adjudication[denialreason].reason</a> cardinality from (0..1) to (1.1.)</li>
            <li>Changed <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Outpatient-Institutional-definitions.html#ExplanationOfBenefit.supportingInfo:pointoforigin.code">Outpatient Institutional EOB supportingInfo[pointoforigin].code</a> cardinality from (0..1) to (1..1)</li>
        </ul>
    </li>
    <li>Added 'Must Support' to Professional and NonClinician EOB <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician-definitions.html#ExplanationOfBenefit.item.productOrService">item.productOrService</a> and <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Professional-NonClinician-definitions.html#ExplanationOfBenefit.item.modifier">item.modifier</a> (<a href="https://jira.hl7.org/browse/FHIR-30358">FHIR-30358</a>)</li>
    <li>Fixed Explanations of Benefits Profile Definition <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/4_Common_Payer_Consumer_Data_Set.html#profiles-definition">diagram</a> and <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/CARINforBlueButtonProfileComparisonOverview.pptx">source presentation file (pptx)</a> legend and added DRG owner (<a href="https://jira.hl7.org/browse/FHIR-30360">FHIR-30360</a>)</li>
    <li>Changed <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-ExplanationOfBenefit-Inpatient-Institutional.html">Inpatient EOB</a> insurance cardinality for 1..1 to 1..* by removing constraint in profile (<a href="https://jira.hl7.org/browse/FHIR-31477">FHIR-31477</a>)</li>
    <li>Removed IG specified requirements of Coverage.Subscriber from the <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/StructureDefinition-C4BB-Coverage.html">Coverage Profile</a> (<a href="https://jira.hl7.org/browse/FHIR-31535">FHIR-31535</a>)</li>
    <li>Removed incorrect casting of <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/SearchParameter-explanationofbenefit-service-date.html">ExplanationOfBenefit service-date (item.serviced) search parameter</a> (<a href="https://jira.hl7.org/browse/FHIR-30443">FHIR-30443)</a>)</li>
    <li>Added language regarding security and privacy to the <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/7_Authorization_Authentication_and_Registration.html#fhir-security-and-privacy-guidance">Authorization, Authentication, and Registration page</a> with a link to the <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/http://hl7.org/fhir/secpriv-module.html">HL7 FHIR Security and Privacy Module</a> (<a href="https://jira.hl7.org/browse/FHIR-31692">FHIR-31692</a>)</li>
    <li>Shortened the titles of Inpatient Institutional, Outpatient Institutional, and Professional and NonClinician EOB <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/artifacts.html#5">Procedure Code and Procedure Code Modifier ValueSets</a> (<a href="https://jira.hl7.org/browse/FHIR-31074">FHIR-31074</a>)</li>
    <li>Fixed errors in examples
        <ul>
            <li><a href="https://hl7.org/fhir/us/carin-bb/stu1.1/ExplanationOfBenefit-InpatientEOBExample1.html">Inpatient</a> and <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/ExplanationOfBenefit-OutpatientEOBExample1.html">Outpatient</a> Institutional EOB examples, removed top-level adjudication because item level adjudication was present (<a href="https://jira.hl7.org/browse/FHIR-29802">FHIR-29802</a>)</li>
            <li>Fixed incorrect text in <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/ExplanationOfBenefit-EOBProfessional1a.html">EOB Professional example</a> (<a href="https://jira.hl7.org/browse/FHIR-30372">FHIR-30372</a>)</li>
        </ul>
    </li>
    <li>Added missing <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/1_Background.html#davinci-carin">Diagram in How DaVinci’s PDex IG and the CARIN IG for Blue Button® work together</a> (<a href="https://jira.hl7.org/browse/FHIR-30083">FHIR-30083</a>)
    </li>
    <li>Added <a href="https://hl7.org/fhir/us/carin-bb/stu1.1/index.html#authors">additional contributors</a> (<a href="https://jira.hl7.org/browse/FHIR-30084">FHIR-30084</a>)</li>
    <li>Transitioned project structure for Sushi 1.0.0+ (For Implementation Guide generation)</li>
    <li>Corrected link to 3M licensing information <a>https://jira.hl7.org/browse/FHIR-31066</a></li>
    <li>Updated the Server CapabilityStatement
	 Persuasive with Mod, Add _id to Coverage Search parameters in CapabilityStatement <a>https://jira.hl7.org/browse/FHIR-30009</a></li>
    <li>Added Tighter guidance requiring WHEN provenance in the EOB profiles<a>https://jira.hl7.org/browse/FHIR-31639</a></li>
    <li>Removed the invariant referring to careTeam role "site" from the IG<a>https://jira.hl7.org/browse/FHIR-31658</a></li>
    <li>Increased binding strength for place of service codes<a>https://jira.hl7.org/browse/FHIR-31502</a></li>
    <li>Added more granular date searching with additional search parameters<a>https://jira.hl7.org/browse/FHIR-33165</a></li>
    <li>Removed Invariant disallowing not-applicable from Outpatient Institutional EoB item.productOrService<a>https://jira.hl7.org/browse/FHIR-32850</a></li>
    <li>Change item.location[x] to only locationCodeableConcept <a>https://jira.hl7.org/browse/FHIR-32067</a></li>
</ul>
<p> </p>
Note: Items marked with an "*" are non-compatible with earlier versions - Existing data may not be valid against the new specification.
<p> </p>
