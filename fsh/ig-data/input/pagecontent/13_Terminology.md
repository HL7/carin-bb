<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://hl7.org/fhir ../../input-cache/schemas-r5/fhir-single.xsd">

<h3>Code Systems Requiring Licenses </h3>
<h4>Access to Licensed Code Systems</h4>
This HL7 specification contains and references intellectual property owned by third parties ("Third Party IP"). Implementers and testers of this specification SHALL abide by the license requirements for each terminology content artifact utilized within a functioning implementation. Terminology licenses SHALL be obtained from the Third Party IP owner for each code system and/or other specified artifact used. It is the sole responsibility of each organization deploying or testing this specification to ensure their implementations comply with licensing requirements of each Third Party IP.

<h4>Licensed Industry Standard Code Systems</h4>
This IG includes value set bindings to code systems that reference industry standard codes which require implementers to purchase a license before the coded concepts can be used.  The following information summarizes the set of licensed Code Systems required by this IG and provides links to the information about where to go to obtain a license.
<ul>
<li><a href="http://www.ama-assn.org/go/cpt">AMA CPT</a>: The CPT procedure and modifier codes are owned by the American Medical Association.</li>
<li> <a href="http://www.x12.org/codes/claim-adjustment-reason-codes/">X12</a>:  CARC (Claim Adjustment Reason Codes are owned by X12.</a>.</li>
<li><a href="https://www.nubc.org">NUBC</a>: The NUBC secretariat is the American Hospital Association..</li>
<li><a href="http://www.nucc.org/">NUCC</a>:  National Uniform Claim Committee (NUCC) is presently maintaining the Taxonomy code set. The codes are free and publically available for download and use. If the use however is “For commercial use, including sales or licensing, a license must be obtained”. It would be appropriate for an app developer to file the license form just like they would for any other code set; however, there is no fee.  </li>
<li><a href="https://www.ncpdp.org">NCPDP</a>: Retail Pharmacy data standards are defined by the NCPDP. .</li>
</ul>
<h3>Code Systems Not Requiring Licenses </h3>
This IG includes value set bindings to code systems that are industry standard codes available for use without licenses. The following information summarizes the set of Code Systems required by this IG that are available for use:
<ul>
<li><a href="https://www.icd10data.com/ICD10CM/Codes">ICD-CM Diagnosis Codes (ICD-10-CM)</a>: International Statistical Classification of Diseases and Related Health Problems (ICD). This IG will use version 10. The ICD-10-CM code set is maintained by the National Center for Health Statistics (NCHS) of the Centers for Disease Control and Prevention (CDC) for use in the United States. It is based on ICD-10, which was developed by the World Health Organization (WHO) and is used internationally a medical classification. </li>
<li><a href ="https://www.icd10data.com/ICD10PCS/Codes">ICD-Procedure Codes (ICD-PCS)</a>: The ICD-10-PCS code set is owned by CMS..</li>
<li><a href="https://www.cms.gov/Medicare/Medicare-Fee-for-Service-Payment/AcuteInpatientPPS/MS-DRG-Classifications-and-Software.html">DRGs</a>.:All versions of the DRG (MS-DRG, AP-DRG, etc.) are owned by CMS. MS-DRGs are used for the Medicare population. </li>
<li> <a href="https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets/Alpha-Numeric-HCPCS-Items/2020-HCPCS-Record-Layout">HCPCS  Level II Procedure and Modifier Codes</a>: Primarily include non-physician products, supplies, and procedures not included in CPT.  They are owned by CMS and are available for use.</li>
<li> <a href="http://hl7.org/fhir/sid/ndc.html">NDC (National Drug Codes)</a>: The US Federal Drug Administration (FDA) Data Standards Council assigns the first 5 digits of the 11 digit code..</li>
<li> <a href="http://www.wpc-edi.com/reference/codelists/healthcare/remittance-advice-remark-codes">RARCCodes</a>: The RARC codes are owned by CMS..</li>
</ul>
<h3>Value Sets defined as part of this Implementation Guide.  </h3>
<table border="1" class="valuesets local">
  <thead>
    <tr>
      <td>
        <b>Name</b>
      </td>
      <td>
        <b>Definition</b>
      </td>
    </tr>
  </thead>
  <tbody> 
<tr>
<td><a href="ValueSet-CPTHCPCSModifierCode.html">AMA CPT and CMS HCPCS Modifier Codes</a></td>
<td>AMA CPT and CMS HCPCS Modifier Codes</td>
</tr>
<tr>
<td><a href="ValueSet-CPTHCPCSProcedureCode.html">AMA CPT and CMS HCPCS Procedure Codes</a></td>
<td>AMA CPT and CMS HCPCS Procedure Codes</td>
</tr>
<tr>
<td><a href="ValueSet-AdjudicationDenialReason.html">Adjudication Denial Reason</a></td>
<td>Reason codes used to interpret the adjudication denial reason.  X12 CARC + CMS RARC</td>
</tr>
<tr>
<td><a href="ValueSet-AdjudicationSlideCodes.html">Adjudication Slice Codes</a></td>
<td>Codes used to discriminate slices of adjudication and item.adjudication</td>
</tr>
<tr>
<td><a href="ValueSet-BenefitPaymentStatus.html">Benefit Payment Status</a></td>
<td>Indicates the in network or out of network payment status of the claim.</td>
</tr>
<tr>
<td><a href="ValueSet-AdjudicationValueCodes.html">Benefit Payment Status Category</a></td>
<td>Benefit Payment Status Category</td>
</tr>
<tr>
<td><a href="ValueSet-CMSPlaceOfService.html">CMS Place of Service</a></td>
<td>https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set.html .  The link takes one to the Place of Service list as an html document; it is not a file to which an IG can be bound.   The code set is owned by CMS and is available for use.</td>
</tr>
<tr>
<td><a href="ValueSet-CMSDRG.html">CMS-DRG</a></td>
<td>CMS-DRG</td>
</tr>
<tr>
<td><a href="ValueSet-ClaimAdjudicationCategory.html">Claim Adjudication Category</a></td>
<td>Values for EOB.item.adjudication.category, as per Igor</td>
</tr>
<tr>
<td><a href="ValueSet-ClaimInformationCategory.html">Claim Information Category</a></td>
<td>Claim Information Category - Used as the discriminator for supportingInfo</td>
</tr>
<tr>
<td><a href="ValueSet-ClaimPaymentStatusCode.html">Claim Payment Status Code</a></td>
<td>Indicates whether the claim / item was paid or denied.</td>
</tr>
<tr>
<td><a href="ValueSet-PayerInpatientfacilitydiagnosistype.html">Diagnosis Type -- Inpatient Facility</a></td>
<td>Payer Inpatient Facility Diagnosis Type</td>
</tr>
<tr>
<td><a href="ValueSet-PayerOutpatientfacilitydiagnosistype.html">Diagnosis Type -- Outpatient Facility</a></td>
<td>Payer Outpatient Facility Diagnosis Type</td>
</tr>
<tr>
<td><a href="ValueSet-PayerProfessionalandnoncliniciandiagnosistype.html">Diagnosis Type -- Professional and Non-Clinician</a></td>
<td>Payer Professional and Non-Clinician Diagnosis Type</td>
</tr>
<tr>
<td><a href="ValueSet-FDANDCNCPDPCompoundCode.html">FDA NDC NCPDP Compound Code</a></td>
<td>NCPDP field # 407-D7 (National Drug Code (NDC)) or NCPDP field # 406-D6 (Compound Code)</td>
</tr>
<tr>
<td><a href="ValueSet-FDANationalDrugCode.html">FDA National Drug Code (NDC)</a></td>
<td>FDA National Drug Code (NDC)</td>
</tr>
<tr>
<td><a href="ValueSet-ICD10CM.html">ICD-10-CM Diagnosis Codes</a></td>
<td>ICD-10-CM Diagnosis Codes.  ***We need ALL Codes, inactive and inactive.   Current binding is to active codes only***</td>
</tr>
<tr>
<td><a href="ValueSet-ICD10PCS.html">ICD-10-PCS</a></td>
<td>ICD-10-PCS</td>
</tr>
<tr>
<td><a href="ValueSet-NCPDPBrandGenericCode.html">NCPDP Brand Generic Code</a></td>
<td>http://www.ncpdp.org/brand-generic-code</td>
</tr>
<tr>
<td><a href="ValueSet-NCPDPDispensedAsWritten.html">NCPDP Dispensed As Written (DAW)</a></td>
<td>http://www.ncpdp.org/dispensed-as-written-or-product-selection-code</td>
</tr>
<tr>
<td><a href="ValueSet-NCPDPPrescriptionOriginCode.html">NCPDP Prescription Origin Code</a></td>
<td>http://www.ncpdp.org/prescription-origin-code</td>
</tr>
<tr>
<td><a href="ValueSet-NCPDPRejectCode.html">NCPDP Reject Code</a></td>
<td>http://www.ncpdp.org/reject-code</td>
</tr>
<tr>
<td><a href="ValueSet-NUBCPatientDischargeStatus.html">NUBC Patient Discharge Status</a></td>
<td>NUBC Patient Discharge Status</td>
</tr>
<tr>
<td><a href="ValueSet-NUBCPresentOnAdmission.html">NUBC Present On Admission</a></td>
<td>NUBC Present On Admission</td>
</tr>
<tr>
<td><a href="ValueSet-NUBCPriorityOfAdmissionn.html">NUBC Priority of Admission</a></td>
<td>NUBC Priority of Admission</td>
</tr>
<tr>
<td><a href="ValueSet-PatientIdentifierType.html">Patient Identifier Type</a></td>
<td>Patient Identifier Type</td>
</tr>
<tr>
<td><a href="ValueSet-CARINBBInstitutionalClaimCareTeamRoleCodes.html">Payer - Inpatient Facility Provider Role</a></td>
<td>Indicates the role of the provider providing the care.</td>
</tr>
<tr>
<td><a href="ValueSet-CARINBBPharmacyClaimCareTeamRoleCodes.html">Payer - Pharmacy Provider Role</a></td>
<td>Indicates the role of the provider providing the care.</td>
</tr>
<tr>
<td><a href="ValueSet-CARINBBProfessionalAndNonclinicanClaimCareTeamRoleCodes.html">Payer - Professional and Non-Clinician Provider Role</a></td>
<td>Indicates the role of the provider providing the care.</td>
</tr>
<tr>
<td><a href="ValueSet-PayerAdjudicationAmountCategory.html">Payer Adjudication Amount Category</a></td>
<td>This describes the various amount fields used when payers receive and adjudicate a claim.</td>
</tr>
<tr>
<td><a href="ValueSet-AdjudicationCarinBBValueCodes.html">Payer Adjudication Value Codes</a></td>
<td>As per Jira FHIR-26992... HL7 Requested to fix HL7 Adjudication codesystem</td>
</tr>
<tr>
<td><a href="ValueSet-PayerProviderContractingStatus.html">Provider Network Status</a></td>
<td>Indicates that the Provider has a contract with the Plan (regardless of the network) as of the effective date of service or admission.</td>
</tr>
  </tbody>
</table>

<h3>Code Systems defined as part of this Implementation Guide.  </h3>
<table border="1" class="codesytems local">
  <thead>
    <tr>
      <td>
        <b>Name</b>
      </td>
      <td>
        <b>Definition</b>
      </td>
    </tr>
  </thead>
  <tbody> 
<tr>
<td><a href="CodeSystem-AdjudicationSliceCodesCS.html">Adjudication Slice Codes</a></td>
<td>Codes used to discriminate slices of adjudication and item.adjudication</td>
</tr>
<tr>
<td><a href="CodeSystem-ClaimAdjudicationCategoryCS.html">Claim Adjudication Category</a></td>
<td>Values for EOB.item.adjudication.category and total.category</td>
</tr>
<tr>
<td><a href="CodeSystem-ClaimInformationCategoryCS.html">Claim Information Category</a></td>
<td>Claim Information Category - Used as the discriminator for supportingInfo</td>
</tr>
<tr>
<td><a href="CodeSystem-IdentifierTypeCS.html">Identifier Type</a></td>
<td>Identifier Type</td>
</tr>
<tr>
<td><a href="CodeSystem-PayerAdjudicationCategoryCS.html">Payer Adjudication Category</a></td>
<td>Payer Adjudication Category</td>
</tr>
<tr>
<td><a href="CodeSystem-PayerDiagnosisTypeCS.html">Payer Diagnosis Type</a></td>
<td>Payer Diagnosis Type</td>
</tr>
<tr>
<td><a href="CodeSystem-CareTeamRoleCS.html">Payer Provider Role</a></td>
<td>Payer Provider Role</td>
</tr>
</tbody>
</table>

<h3>Externally Published CodeSystems. </h3>


</div>
