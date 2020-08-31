// Contains ValueSets for Codes Defined WITHIN this IG



ValueSet: C4BBClaimInstitutionalCareTeamRole 
Title: "C4BB Claim Institutional Care Team Role "
Description: "Describes functional roles of the care team members."
* $CareTeamRoleCodeCS#primary 
* $CareTeamRoleCodeCS#supervisor 
* C4BBClaimCareTeamRoleCS#attending 
* C4BBClaimCareTeamRoleCS#referring
* C4BBClaimCareTeamRoleCS#operating 
// * C4BBClaimCareTeamRoleCS#site 
// * C4BBClaimCareTeamRoleCS#prescribing 
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBClaimProfessionalAndNonClinicianCareTeamRole   
Title: "C4BB Claim Professional And Non Clinician Care Team Role "
Description: "Describes functional roles of the care team members"
* $CareTeamRoleCodeCS#primary "Primary provider." 
* C4BBClaimCareTeamRoleCS#performing 
* C4BBClaimCareTeamRoleCS#referring 
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBClaimPharmacyTeamRole 
Title: "CARINBB Pharmacy CareTeam Roles"
Description: "Indicates the role of the provider providing the care."
* $CareTeamRoleCodeCS#primary 
* C4BBClaimCareTeamRoleCS#prescribing 
* C4BBClaimCareTeamRoleCS#performing 
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBAdjudication   
Title: "Adjudication CARINBB Value Codes"
Description: "As per Jira FHIR-26992... HL7 Requested to fix HL7 Adjudication codesystem"
* $HL7AdjudicationCS#submitted 
* $HL7AdjudicationCS#copay 
* $HL7AdjudicationCS#eligible
* $HL7AdjudicationCS#deductible  
* $HL7AdjudicationCS#benefit 
* C4BBAdjudicationCS#coinsurance "Coinsurance" 
* C4BBAdjudicationCS#noncovered "Noncovered" 
* C4BBAdjudicationCS#priorpayerpaid "Prior payer paid" 
* C4BBAdjudicationCS#paidbypatient "Paid by patient" 
* C4BBAdjudicationCS#paidtopatient "Paid to patient"
* C4BBAdjudicationCS#paidtoprovider "Paid to provider" 
* C4BBAdjudicationCS#memberliability "Member liability" 
* C4BBAdjudicationCS#discount "Discount" 
* C4BBAdjudicationCS#drugcost "Drug cost" 
* ^copyright = "This Valueset is not copyrighted."


ValueSet: C4BBPayerProviderContractingStatus
Title: "Provider Provider Contracting Status"
Description: "Indicates that the Provider has a contract with the Plan (regardless of the network) as of the effective date of service or admission."
* C4BBAdjudicationCS#contracted "contracted"
* C4BBAdjudicationCS#non-contracted "non-contracted"
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBPayerBenefitPaymentStatus
Title: "Benefit Payment Status"
Description: "Indicates the in network or out of network payment status of the claim."
* C4BBAdjudicationCS#innetwork "in-network"
* C4BBAdjudicationCS#outofnetwork "out-of-network"
* C4BBAdjudicationCS#other "other"
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBPayerClaimPaymentStatusCode
Title: "Claim Payment Status Code"
Description: "Indicates whether the claim / item was paid or denied."
* C4BBAdjudicationCS#paid "paid"
* C4BBAdjudicationCS#denied "denied"
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBClaimProfessionalAndNonClinicianDiagnosisType 
Title: "Diagnosis Type -- Professional and Non-Clinician"
Description: "Payer Professional and Non-Clinician Diagnosis Type"
* C4BBClaimDiagnosisType#principal "principal"
* C4BBClaimDiagnosisType#secondary "secondary"
* C4BBClaimDiagnosisType#first-listed "first-listed"
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBClaimInpatientInstitutionalDiagnosisType 
Title: "Diagnosis Type -- Inpatient Facility"
Description: "Payer Inpatient Facility Diagnosis Type"
* C4BBClaimDiagnosisType#principal 
* C4BBClaimDiagnosisType#secondary  
* C4BBClaimDiagnosisType#external-cause-of-injury 
* C4BBClaimDiagnosisType#first-listed  
* C4BBClaimDiagnosisType#admitting 
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBClaimOutpatientInstitutionalDiagnosisType 
Title: "Diagnosis Type -- Outpatient Facility"
Description: "Payer Outpatient Facility Diagnosis Type"
* codes from system C4BBClaimDiagnosisType

ValueSet: ClaimInformationCategory
Title: "Claim Information Category"
Description: "Claim Information Category - Used as the discriminator for supportingInfo" 
* codes from system ClaimInformationCategoryCS 
* ^copyright = "This Valueset is not copyrighted."

ValueSet: PatientIdentifierType
Title: "Patient Identifier Type"
Description: "Patient Identifier Type"
* IdentifierTypeCS#um
* IdentifierTypeCS#mb
* $IdentifierTypeCS#MR
* IdentifierTypeCS#pt
* ^copyright = "This Valueset is not copyrighted."

// ValueSet: PayerDiagnosisPresentOnAdmissionDiagnosisType    // https://jira.hl7.org/browse/FHIR-27012
// Title: "Payer Diagnosis Present On Admission Diagnosis Type"
// Description: "Payer Diagnosis Present On Admission Diagnosis Type"
// * C4BBClaimDiagnosisType#principal 
// * C4BBClaimDiagnosisType#secondary  
// * C4BBClaimDiagnosisType#external-cause-of-injury 
// * ^copyright = "This Valueset is not copyrighted."


// ValueSet: ClaimAdjudicationCategory
// Title: "Claim Adjudication Category"
// Description: "Values for EOB.item.adjudication.category"
// * codes from valueset C4BBAdjudication
// * codes from valueset C4BBPayerBenefitPaymentStatus
// * ClaimAdjudicationCategoryCS#denialreason 
// * ClaimAdjudicationCategoryCS#allowedunits 
// * ^copyright = "This Valueset is not copyrighted."

// ValueSet: AdjudicationValueCodes
// Title: "Benefit Payment Status Category"
// Description: "Benefit Payment Status Category"
// * ClaimAdjudicationCategoryCS#submittedamount	"submitted amount"	
// * ClaimAdjudicationCategoryCS#allowedamount	"allowed amount"
// * ClaimAdjudicationCategoryCS#deductibleamount	"deductible amount"	
// * ^copyright = "This Valueset is not copyrighted."

// ValueSet: NUCCHealthcareProviderTaxonomy
// Title: "NUCC Healthcare Provider Taxonomy"
// Description:  "NUCC Healthcare Provider Taxonomy"
// * codes from system $NUCCProviderTaxonomy

// ValueSet: PayerAdjudicationAmountCategory
// Title: "Payer Adjudication Amount Category"
// Description: "This describes the various amount fields used when payers receive and adjudicate a claim."
// * ClaimAdjudicationCategoryCS#submittedamount
// * ClaimAdjudicationCategoryCS#allowedamount
// * ClaimAdjudicationCategoryCS#deductibleamount 
// * ClaimAdjudicationCategoryCS#coinsuranceamount 
// * ClaimAdjudicationCategoryCS#copayamount
// * ClaimAdjudicationCategoryCS#noncoveredamount
// * ClaimAdjudicationCategoryCS#cobamount
// * ClaimAdjudicationCategoryCS#paymentamount
// * ClaimAdjudicationCategoryCS#patientpayamount
// * ^copyright = "This Valueset is not copyrighted."