// Contains ValueSets for Codes Defined WITHIN this IG



ValueSet: C4BBClaimInstitutionalCareTeamRole 
Title: "C4BB Claim Institutional Care Team Role"
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
Title: "C4BB Pharmacy CareTeam Roles"
Description: "Indicates the role of the provider providing the care."
* $CareTeamRoleCodeCS#primary 
* C4BBClaimCareTeamRoleCS#prescribing 
* C4BBClaimCareTeamRoleCS#performing 
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBAdjudication   
Title: "C4BB Adjudication"
Description: "Describes the various amount fields used when payers receive and adjudicate a claim.  It includes the values 
defined in http://terminology.hl7.org/CodeSystem/adjudication, as well as those defined in the C4BB Adjudication CodeSystem."
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
Title: "C4BB Payer Benefit Payment Status"
Description: "Indicates the in network or out of network payment status of the claim."
* C4BBAdjudicationCS#innetwork "in-network"
* C4BBAdjudicationCS#outofnetwork "out-of-network"
* C4BBAdjudicationCS#other "other"
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBPayerClaimPaymentStatusCode
Title: "C4BB Payer Claim Payment Status Code"
Description: "Indicates whether the claim / item was paid or denied."
* C4BBAdjudicationCS#paid "paid"
* C4BBAdjudicationCS#denied "denied"
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBClaimProfessionalAndNonClinicianDiagnosisType 
Title: "C4BB Claim Professional And Non Clinician Diagnosis Type"
Description: "Indicates if the professional and non-clinician diagnosis is principal or secondary"
* C4BBClaimDiagnosisType#principal "principal"
* C4BBClaimDiagnosisType#secondary "secondary"
* C4BBClaimDiagnosisType#first-listed "first-listed"
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBClaimInpatientInstitutionalDiagnosisType 
Title: "C4BB Claim Inpatient Institutional Diagnosis Type"
Description: "Indicates if the inpatient institutional diagnosis is admitting, principal, secondary or an external cause of injury."
* C4BBClaimDiagnosisType#principal 
* C4BBClaimDiagnosisType#secondary  
* C4BBClaimDiagnosisType#external-cause-of-injury 
* C4BBClaimDiagnosisType#first-listed  
* C4BBClaimDiagnosisType#admitting 
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBClaimOutpatientInstitutionalDiagnosisType 
Title: "C4BB Claim Outpatient Institutional Diagnosis Type"
Description: "Indicates if the outpatient institutional diagnosis is admitting, principal, secondary an external cause of injury or a patient reason for visit"
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
