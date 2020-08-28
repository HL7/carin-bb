// Contains ValueSets for Codes Defined WITHIN this IG

ValueSet: ClaimInformationCategory
Title: "Claim Information Category"
Description: "Claim Information Category - Used as the discriminator for supportingInfo" 
* codes from system ClaimInformationCategoryCS 


ValueSet: CARINBBInstitutionalClaimCareTeamRoleCodes
Title: "CARINBB Institutional Claim Care Team Roles"
Description: "Indicates the role of the provider providing the care."
* $CareTeamRoleCodeCS#supervisor "Supervising Provider"
* $CareTeamRoleCodeCS#primary "Primary provider." 
* CareTeamRoleCS#attending "Attending Provider"
* CareTeamRoleCS#performing "Performing Provider"
* CareTeamRoleCS#referring "Referring Provider"
* CareTeamRoleCS#site "Site Provider"
* CareTeamRoleCS#prescribing "Prescribing Provider"

ValueSet: CARINBBProfessionalAndNonclinicanClaimCareTeamRoleCodes  
Title: "CARINBB Professional and Non-Clinician CareTeam Roles"
Description: "Indicates the role of the provider providing the care."
* $CareTeamRoleCodeCS#primary "Primary provider." 
* CareTeamRoleCS#performing "Performing Provider"
* CareTeamRoleCS#referring "Referring Provider"

ValueSet: CARINBBPharmacyClaimCareTeamRoleCodes
Title: "CARINBB Pharmacy CareTeam Roles"
Description: "Indicates the role of the provider providing the care."
* CareTeamRoleCS#pcp "Primary Care Provider"
* CareTeamRoleCS#prescribing "Prescribing Provider"
* CareTeamRoleCS#performing "Performing Provider"

ValueSet: AdjudicationCarinBBValueCodes   
Title: "Adjudication CARINBB Value Codes"
Description: "As per Jira FHIR-26992... HL7 Requested to fix HL7 Adjudication codesystem"
* $HL7AdjudicationCS#submitted 
* $HL7AdjudicationCS#copay 
* $HL7AdjudicationCS#eligible
* $HL7AdjudicationCS#deductible  
* $HL7AdjudicationCS#benefit 
* PayerAdjudicationCategoryCS#coinsurance "Coinsurance" 
* PayerAdjudicationCategoryCS#noncovered "Noncovered" 
* PayerAdjudicationCategoryCS#priorpayerpaid "Prior payer paid" 
* PayerAdjudicationCategoryCS#paidbypatient "Paid by patient" 
* PayerAdjudicationCategoryCS#paidtopatient "Paid to patient"
* PayerAdjudicationCategoryCS#paidtoprovider "Paid to provider" 
* PayerAdjudicationCategoryCS#memberliability "Member liability" 
* PayerAdjudicationCategoryCS#discount "Discount" 
* PayerAdjudicationCategoryCS#drugcost "Drug cost" 


ValueSet: PayerAdjudicationAmountCategory
Title: "Payer Adjudication Amount Category"
Description: "This describes the various amount fields used when payers receive and adjudicate a claim."
* ClaimAdjudicationCategoryCS#submittedamount
* ClaimAdjudicationCategoryCS#allowedamount
* ClaimAdjudicationCategoryCS#deductibleamount 
* ClaimAdjudicationCategoryCS#coinsuranceamount 
* ClaimAdjudicationCategoryCS#copayamount
* ClaimAdjudicationCategoryCS#noncoveredamount
* ClaimAdjudicationCategoryCS#cobamount
* ClaimAdjudicationCategoryCS#paymentamount
* ClaimAdjudicationCategoryCS#patientpayamount


ValueSet: PayerProviderContractingStatus
Title: "Provider Provider Contracting Status"
Description: "Indicates that the Provider has a contract with the Plan (regardless of the network) as of the effective date of service or admission."
* PayerAdjudicationCategoryCS#contracted "contracted"
* PayerAdjudicationCategoryCS#non-contracted "non-contracted"

ValueSet: BenefitPaymentStatus
Title: "Benefit Payment Status"
Description: "Indicates the in network or out of network payment status of the claim."
* PayerAdjudicationCategoryCS#innetwork "in-network"
* PayerAdjudicationCategoryCS#outofnetwork "out-of-network"
* PayerAdjudicationCategoryCS#other "other"

ValueSet: ClaimPaymentStatusCode
Title: "Claim Payment Status Code"
Description: "Indicates whether the claim / item was paid or denied."
* PayerAdjudicationCategoryCS#paid "paid"
* PayerAdjudicationCategoryCS#denied "denied"

ValueSet: PayerProfessionalandnoncliniciandiagnosistype
Title: "Diagnosis Type -- Professional and Non-Clinician"
Description: "Payer Professional and Non-Clinician Diagnosis Type"
* PayerDiagnosisTypeCS#principal "principal"
* PayerDiagnosisTypeCS#secondary "secondary"
* PayerDiagnosisTypeCS#first-listed "first-listed"


ValueSet: PayerInpatientinstitutionaldiagnosistype
Title: "Diagnosis Type -- Inpatient Facility"
Description: "Payer Inpatient Facility Diagnosis Type"
* PayerDiagnosisTypeCS#principal 
* PayerDiagnosisTypeCS#secondary  
* PayerDiagnosisTypeCS#external-cause-of-injury 
* PayerDiagnosisTypeCS#first-listed  
* PayerDiagnosisTypeCS#admitting 

ValueSet: PayerOutpatientinstitutionaldiagnosistype
Title: "Diagnosis Type -- Outpatient Facility"
Description: "Payer Outpatient Facility Diagnosis Type"
* codes from system PayerDiagnosisTypeCS

ValueSet: PayerDiagnosisPresentOnAdmissionDiagnosisType    // https://jira.hl7.org/browse/FHIR-27012
Title: "Payer Diagnosis Present On Admission Diagnosis Type"
Description: "Payer Diagnosis Present On Admission Diagnosis Type"
* PayerDiagnosisTypeCS#principal 
* PayerDiagnosisTypeCS#secondary  
* PayerDiagnosisTypeCS#external-cause-of-injury 




ValueSet: PatientIdentifierType
Title: "Patient Identifier Type"
Description: "Patient Identifier Type"
* IdentifierTypeCS#um
* IdentifierTypeCS#mb
* $IdentifierTypeCS#MR
* IdentifierTypeCS#pt




ValueSet: ClaimAdjudicationCategory
Title: "Claim Adjudication Category"
Description: "Values for EOB.item.adjudication.category"
* codes from valueset AdjudicationCarinBBValueCodes
* codes from valueset BenefitPaymentStatus
* ClaimAdjudicationCategoryCS#denialreason 
* ClaimAdjudicationCategoryCS#allowedunits 

ValueSet: AdjudicationValueCodes
Title: "Benefit Payment Status Category"
Description: "Benefit Payment Status Category"
* ClaimAdjudicationCategoryCS#submittedamount	"submitted amount"	
* ClaimAdjudicationCategoryCS#allowedamount	"allowed amount"
* ClaimAdjudicationCategoryCS#deductibleamount	"deductible amount"	


// ValueSet: NUCCHealthcareProviderTaxonomy
// Title: "NUCC Healthcare Provider Taxonomy"
// Description:  "NUCC Healthcare Provider Taxonomy"
// * codes from system $NUCCProviderTaxonomy