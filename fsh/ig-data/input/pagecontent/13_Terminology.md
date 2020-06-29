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
<li><a href="http://www.nucc.org/">NUCC</a>:  National Uniform Claim Committee (NUCC) is presently maintaining the Taxonomy code set. The codes are free and publically available for download and use. If the use however is “For commercial use, including sales or licensing, a license must be obtained”. It would be appropriate for an app developer to file the license form just like they would for any other code set; however, there is no fee.  
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
       <td>
        <b>Licensing</b>
      </td>
    </tr>
  </thead>
  <tbody> 
<tr>
        <td><a href="ValueSet-AdjudicationDenialReasonVS.html">Adjudication Denial Reason</a></td>
        <td>Adjudication Denial Reason X12CARCCMSRARC.</td>
        <td></td>
    </tr>
<tr>
        <td><a href="ValueSet-AdjudicationValueCodesVS.html">Adjudication Value Codes</a></td>
        <td>Adjudication Value Codes.</td>
        <td></td>
    </tr>
<tr>
        <td><a href="ValueSet-AdjustmentAmountCategoryVS.html">Adjustment Amount Category</a></td>
        <td>Adjustment Amount Category.</td>
        <td></td>
    </tr>
<tr>
        <td><a href="ValueSet-BenefitPaymentStatusCategoryVS.html">Benefit Payment Status Category.</a></td>
        <td>Benefit Payment Status Category</td>
        <td></td>
    </tr>
<tr>
        <td><a href="ValueSet-BenefitPaymentStatusVS.html">Benefit Payment Status</a></td>
        <td>Benefit Payment Status</td>
        <td></td>
    </tr>
<tr>
        <td><a href="ValueSet-CPTHCPCSModifierCodeVS.html">CPT and HCPCS Modifier Codes</a></td>
        <td>CPT and HCPCS Modifier Codes.</td>
        <td>Requires License.</td>
    </tr>
<tr>
        <td><a href="ValueSet-CPTHCPCSProcedureCodeVS.html">CPT and HCPCS Procedure Codes</a></td>
        <td>CPT and HCPCS Procedure Codes.</td>
        <td>Requires License.</td>
    </tr>
<tr>
        <td><a href="ValueSet-ClaimAdjudicationCategoryVS.html">Claim Adjustment Category</a></td>
        <td>Claim Adjustment Category.</td>
        <td></td>
    </tr>
<tr>
        <td><a href="ValueSet-ClaimInformationCategoryVS.html">Claim Information Category</a></td>
        <td>Claim Information Category.</td>
        <td></td>
    </tr>
<tr>
        <td><a href="ValueSet-ClaimPayeeTypeCodeVS.html">Claim Payee Type</a></td>
        <td>Claim Payee Type.</td>
        <td></td>
    </tr>
<tr>
        <td><a href="ValueSet-ClaimPaymentStatusCodeVS.html">Claim Payment Status Codes</a></td>
        <td>Claim Payment Status Codes.</td>
        <td></td>
    </tr>
<tr>
        <td><a href="ValueSet-ClaimTypeVS.html">Claim Type</a></td>
        <td>Claim Type.</td>
        <td></td>
    </tr>
<tr>
        <td><a href="ValueSet-DiagnosisTypeFacilityVS.html">Diagnosis Type - Facility</a></td>
        <td>Diagnosis Type - Facility</td>
        <td></td>
    </tr>
<tr>
        <td><a href="ValueSet-DiagnosisTypeProfessionalNonClinicianVS.html">Diagnosis Type - Non-Clinician</a></td>
        <td>Diagnosis Type - Non-Clinician.</td>
        <td>.</td>
    </tr>
<tr>
        <td><a href="ValueSet-FDANationalDrugCodeVS.html">FDA National Drug Code (NDC)</a></td>
        <td>FDA National Drug Code (NDC)</td>
        <td></td>
    </tr>
    <tr>
        <td><a href="ValueSet-FDANDCNCPDPCompoundCodeVS.html">FDA NDC and NCPDP Compound Codes</a></td>
        <td>FDA NDC and NCPDP Compound Codes.</td>
        <td>NCPDP Compound Code Requires License.</td>
    </tr>
<tr>
        <td><a href="ValueSet-ICD10CMVS.html">ICD-10-CM</a></td>
        <td>ICD-10-CM</td>
        <td>Requires License.</td>
    </tr>
<tr>
        <td><a href="ValueSet-ICD10PCSVS.html">ICD-10-PCS</a></td>
        <td>ICD-10-PC</td>
        <td>Requires License.</td>
    </tr>
<tr>
        <td><a href="ValueSet-IdentifierTypeVS.html">Identifier Type</a></td>
        <td>Identifier Type.</td>
        <td></td>
    </tr>
<tr>
        <td><a href="ValueSet-MSDRGVS.html">MS-DRG</a></td>
        <td>MS-DRG</td>
        <td></td>
    </tr>
<tr>
        <td><a href="ValueSet-NCPDPBrandGenericCodeVS.html">NCPDP Brand Generic Code</a></td>
        <td>NCPDP Brand Generic Code</td>
        <td>Requires License.</td>
    </tr>
<tr>
        <td><a href="ValueSet-NCPDPDispensedAsWrittenVS.html">NCPDP Dispensed as Written</a></td>
        <td>NCPDP Dispensed as Written</td>
        <td>Requires License</td>
    </tr>
<tr>
        <td><a href="ValueSet-NCPDPPrescriptionOriginCodeVS.html">NCPDP Prescription Origin</a></td>
        <td>NCPDP Prescription Origin.</td>
        <td>Requires License</td>
    </tr>
    <tr>
        <td><a href="ValueSet-NCPDPRejectCodeVS.html">NCPDP Reject Code</a></td>
        <td>NCPDP Reject Code</td>
        <td>Requires License</td>
    </tr>
<tr>
        <td><a href="ValueSet-NUBCPatientDischargeStatusVS.html">NUBC Patient Discharge Status</a></td>
        <td>NUBC Patient Discharge Status</td>
        <td>Requires License</td>
    </tr>
<tr>
        <td><a href="ValueSet-NUBCPointOfOriginVS.html">NUBC Point Of Origin</a></td>
        <td>NUBC Point Of Origin</td>
        <td>Requires License</td>
    </tr>
<tr>
        <td><a href="ValueSet-NUBCPresentOnAdmissionVS.html">NUBC Present On Admission</a></td>
        <td>NUBC Present On Admission</td>
        <td>Requires License</td>
    </tr>
<tr>
        <td><a href="ValueSet-NUBCPriorityOfAdmissionnVS.html">NUBC Priority of Admission</a></td>
        <td>NUBC Priority of Admission.</td>
        <td>Requires License</td>
    </tr>
<tr>
        <td><a href="ValueSet-NUBCRevenueCodeVS.html">NUBC Revenue Code</a></td>
        <td>NUBC Revenue Code.</td>
        <td>Requires License</td>
    </tr>
<tr>
        <td><a href="ValueSet-NUBCTypeOfBillVS.html">NUBC Type of Bill</a></td>
        <td>NUBC Type of Bill</td>
        <td>Requires License</td>
     </tr>
<tr>
        <td><a href="ValueSet-PayerAdjudicationAmountCategoryVS.html">Payer Adjudication Category</a></td>
        <td>Payer Adjudication Category.</td>
        <td>.</td>
    </tr>
<tr>
        <td><a href="ValueSet-PayerProviderRoleVS.html">Payer Provider Role </a></td>
        <td>Payer  Provider Role</td>
        <td></td>
    </tr>
    <tr>
        <td><a href="ValueSet-PayerInpatientFacilityProviderRoleVS.html">Payer Inpatient Facility Provider Role </a></td>
        <td>Payer Inpatient Facility Provider Role</td>
        <td></td>
    </tr>
<tr>
        <td><a href="ValueSet-PayerOutpatientFacilityProviderRoleVS.html">Payer Outpatient Facility Provider Role</a></td>
        <td>Payer Outpatient Facility Provider Role.</td>
        <td></td>
    </tr>
<tr>
        <td><a href="ValueSet-PayerPharmacyProviderRoleVS.html">Payer Pharmacy Provider Role</a></td>
        <td>Payer Pharmacy Provider Role</td>
        <td></td>
    </tr>
<tr>
        <td><a href="ValueSet-PayerProfessionalAndNonClinicianProviderRoleVS.html">Payer Professional Non-Clinician Provider Role</a></td>
        <td>Payer Professional Non-Clinician Provider Role</td>
        <td></td>
    </tr>
<tr>
        <td><a href="ValueSet-PresentOnAdmissionDiagnosisTypeVS.html">Present On Admission Diagnosis Type</a></td>
        <td>Present On Admission Diagnosis Type.</td>
        <td></td>
    </tr>
<tr>
        <td><a href="ValueSet-ProviderNetworkStatusVS.html">Provider Network Status</a></td>
        <td>Provider Network Status.</td>
        <td></td>
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
        <td><a href="CodeSystem-ClaimAdjudicationCategoryCS.html">Claim Adjudication Category Codes</a></td>
        <td>Claim Adjudication Category Codes.</td>
      </tr>
      <tr>
        <td><a href="CodeSystem-PayerAdjudicationCategoryCS.html">Payer Adjudication Categories</a></td>
        <td>Payer Adudication Categories.</td>
      </tr>
      <tr>
        <td><a href="CodeSystem-ClaimInformationCategoryCS">Claim Information Category</a></td>
        <td>Claim Information Category</td>
      </tr>
      <tr>
        <td><a href="CodeSystem-PayerDiagnosisTypeCS.html">Payer Diagnosis Types (additional)</a></td>
        <td>Payer Diagnosis Types</td>
      </tr>
      <tr>
        <td><a href="CodeSystem-ClaimTypeCS.html">Claim Types</a></td>
        <td>Claim Types</td>
      </tr>
      <tr>
        <td><a href="CodeSystem-PayerProviderRoleCS.html">Provider Roles</a></td>
        <td>Provider Roles</td>
      </tr>
  </tbody>
</table>

<h3>Externally Published CodeSystems. </h3>


</div>
