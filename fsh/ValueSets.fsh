// Contains ValueSets for Codes Defined WITHIN this IG  

ValueSet: C4BBClaimInstitutionalCareTeamRole 
Title: "C4BB Claim Institutional Care Team Role "
Description: "Describes functional roles of the care team members."
* $CareTeamRoleCodeCS#primary 
* C4BBClaimCareTeamRole#attending 
* C4BBClaimCareTeamRole#referring
* C4BBClaimCareTeamRole#operating 
* C4BBClaimCareTeamRole#otheroperating 
* C4BBClaimCareTeamRole#performing 
// * C4BBClaimCareTeamRoleCS#site 
// * C4BBClaimCareTeamRoleCS#prescribing 
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBClaimProfessionalAndNonClinicianCareTeamRole   
Title: "C4BB Claim Professional And Non Clinician Care Team Role "
Description: "Describes functional roles of the care team members"
* $CareTeamRoleCodeCS#primary 
* $CareTeamRoleCodeCS#supervisor
* C4BBClaimCareTeamRole#performing
* C4BBClaimCareTeamRole#purchasedservice 
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
* C4BBPayerAdjudicationStatus#noncontracted "Non-Contracted" 
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
* C4BBPayerAdjudicationStatus#paid 
* C4BBPayerAdjudicationStatus#denied 
* C4BBPayerAdjudicationStatus#partiallypaid 
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBPayeeType
Title: "C4BB Payee Type"
Description: "Identifies the type of recipient of the adjudication amount; i.e., provider, subscriber, beneficiary or another recipient."
* C4BBPayeeType#beneficiary 
* $HL7PayeeType#subscriber 
* $HL7PayeeType#provider
* $HL7PayeeType#other 
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBClaimProfessionalAndNonClinicianDiagnosisType 
Title: "C4BB Claim Professional And Non Clinician Diagnosis Type"
Description: "Indicates if the professional and non-clinician diagnosis is principal or secondary"
* $HL7DiagnosisType#principal "principal"
* C4BBClaimDiagnosisType#secondary "secondary"
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBClaimInpatientInstitutionalDiagnosisType 
Title: "C4BB Claim Inpatient Institutional Diagnosis Type"
Description: "Indicates if the inpatient institutional diagnosis is admitting, principal, other or an external cause of injury."
* $HL7DiagnosisType#principal 
* C4BBClaimDiagnosisType#other  
* C4BBClaimDiagnosisType#externalcauseofinjury   
* $HL7DiagnosisType#admitting // http://terminology.hl7.org/CodeSystem/ex-diagnosistype#admitting 
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBClaimOutpatientInstitutionalDiagnosisType 
Title: "C4BB Claim Outpatient Institutional Diagnosis Type"
Description: "Indicates if the outpatient institutional diagnosis is principal, other, an external cause of injury or a patient reason for visit."
* $HL7DiagnosisType#principal 
* C4BBClaimDiagnosisType#other  
* C4BBClaimDiagnosisType#externalcauseofinjury   
* C4BBClaimDiagnosisType#patientreasonforvisit 
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBRelatedClaimRelationshipCodes
Title: "C4BB Related Claim Relationship Codes"
Description: "Identifies if the current claim represents a claim that has been adjusted and was given a prior claim number or if the current claim has been adjusted; i.e., replaced by or merged to another claim number."
* http://terminology.hl7.org/CodeSystem/ex-relatedclaimrelationship#prior 
* C4BBPayeeType#provider
* C4BBPayeeType#other 
* C4BBRelatedClaimRelationshipCodes#replacedby 
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBSupportingInfoType
Title: "C4BB SupportingInfo Type"
Description: "Used as the discriminator for the types of supporting information for the CARIN IG for Blue Button� Implementation Guide." 
* codes from system C4BBSupportingInfoType 
* ^copyright = "This Valueset is not copyrighted."

// ************* @Saul - replaced with C4BB **************
//ValueSet: PatientIdentifierType
//Title: "Patient Identifier Type"
//Description: "Patient Identifier Type"
//* C4BBIdentifierType#um
//* C4BBIdentifierType#mb
//* $IdentifierType#MR
//* C4BBIdentifierType#pt
//* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBClaimIdentifierType
Title: "C4BB Claim Identifier Type"
Description: "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber"
* C4BBIdentifierType#uc
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBPatientIdentifierType
Title: "C4BB Patient Identifier Type"
Description: "Identifies the type of identifier payers and providers assign to patients"
* C4BBIdentifierType#um
* C4BBIdentifierType#pat
* $IdentifierType#MB
* $IdentifierType#MR  
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBOrganizationIdentifierType
Title: "C4BB Organization Identifier Type"
Description: "Identifies the type of identifiers for organizations"
* C4BBIdentifierType#npi
* C4BBIdentifierType#payerid
* C4BBIdentifierType#naiccode
* codes from system $IdentifierType
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBClaimProcedureType 
Title: "C4BB Claim Procedure Type"
Description: "Indicates if the professional and non-clinician diagnosis is principal or secondary"
* $HL7DiagnosisType#principal "principal"
* C4BBClaimProcedureType#secondary  
* ^copyright = "This Valueset is not copyrighted."