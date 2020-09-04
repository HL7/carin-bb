// Contains ValueSets for Codes Defined WITHIN this IG  


ValueSet: C4BBClaimInstitutionalCareTeamRole 
Title: "C4BB Claim Institutional Care Team Role "
Description: "Describes functional roles of the care team members."
* $CareTeamRoleCodeCS#primary 
* $CareTeamRoleCodeCS#supervisor 
* C4BBClaimCareTeamRole#attending 
* C4BBClaimCareTeamRole#referring
* C4BBClaimCareTeamRole#operating 
// * C4BBClaimCareTeamRoleCS#site 
// * C4BBClaimCareTeamRoleCS#prescribing 
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBClaimProfessionalAndNonClinicianCareTeamRole   
Title: "C4BB Claim Professional And Non Clinician Care Team Role "
Description: "Describes functional roles of the care team members"
* $CareTeamRoleCodeCS#primary "Primary provider." 
* C4BBClaimCareTeamRole#performing 
* C4BBClaimCareTeamRole#referring 
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBClaimPharmacyTeamRole 
Title: "C4BB Claim Pharmacy CareTeam Roles"
Description: "Describes functional roles of the care team members"
* $CareTeamRoleCodeCS#primary 
* C4BBClaimCareTeamRole#prescribing 
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
* C4BBAdjudication#coinsurance "Coinsurance" 
* C4BBAdjudication#noncovered "Noncovered" 
* C4BBAdjudication#priorpayerpaid "Prior payer paid" 
* C4BBAdjudication#paidbypatient "Paid by patient" 
* C4BBAdjudication#paidtopatient "Paid to patient"
* C4BBAdjudication#paidtoprovider "Paid to provider" 
* C4BBAdjudication#memberliability "Member liability" 
* C4BBAdjudication#discount "Discount" 
* C4BBAdjudication#drugcost "Drug cost" 
* ^copyright = "This Valueset is not copyrighted."


ValueSet: C4BBPayerProviderContractingStatus
Title: "C4BB Payer Provider Contracting Status"
Description: "Indicates that the Provider has a contract with the Payer as of the effective date of service or admission."
* C4BBPayerAdjudicationStatus#contracted "Contracted" 
* C4BBPayerAdjudicationStatus#nnoncontracted "Non-Contracted" 
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBPayerBenefitPaymentStatus
Title: "C4BB Payer Benefit Payment Status"
Description: "Indicates the in network or out of network payment status of the claim."
* C4BBPayerAdjudicationStatus#innetwork	"In Network"
* C4BBPayerAdjudicationStatus#outofnetwork "Out Of Network"
* C4BBPayerAdjudicationStatus#other "Other" 
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBPayerClaimPaymentStatusCode
Title: "C4BB Payer Claim Payment Status Code"
Description: "Indicates whether the claim / item was paid or denied."
* C4BBAdjudication#paid "paid"
* C4BBAdjudication#denied "denied"
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
* codes from system ClaimInformationCategory 
* ^copyright = "This Valueset is not copyrighted."

ValueSet: PatientIdentifierType
Title: "Patient Identifier Type"
Description: "Patient Identifier Type"
* IdentifierTypeCS#um
* IdentifierTypeCS#mb
* $IdentifierTypeCS#MR
* IdentifierTypeCS#pt
* ^copyright = "This Valueset is not copyrighted."
