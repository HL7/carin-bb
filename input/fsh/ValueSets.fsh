// Contains ValueSets for Codes Defined WITHIN this IG  
ValueSet: C4BBAdjudicationCategoryDiscriminator   
Title: "C4BB Adjudication Category Discriminator Value Set"
Description: "Used as the discriminator for adjudication.category and item.adjudication.category for the CARIN IG for Blue Button®"
* codes from valueset C4BBAdjudication
// 20210127 CAS: Added to resolve the issue where this "all slices" discriminator (category) required ValueSet did not include a valueset reuuired for the required benefitpaymentstatus slice discriminator
// Removed according to FHIR-38059
//* codes from valueset C4BBPayerBenefitPaymentStatus
* codes from system C4BBAdjudicationDiscriminator
* ^copyright = "This Valueset is not copyrighted."
* ^experimental = false

ValueSet: C4BBTotalCategoryDiscriminator   
Title: "C4BB Total Category Discriminator Value Set"
Description: "Used as the discriminator for total.category for the CARIN IG for Blue Button®"
* codes from valueset C4BBAdjudication
* codes from valueset C4BBPayerBenefitPaymentStatus
* ^copyright = "This Valueset is not copyrighted."
* ^experimental = false

ValueSet: C4BBClaimInstitutionalCareTeamRole 
Title: "C4BB Claim Institutional Care Team Role Value Set"
Description: "Describes functional roles of the care team members."
* $CareTeamRoleCodeCS#primary 
* C4BBClaimCareTeamRole#attending 
* C4BBClaimCareTeamRole#referring
* C4BBClaimCareTeamRole#operating 
* C4BBClaimCareTeamRole#otheroperating 
* C4BBClaimCareTeamRole#rendering 
// * C4BBClaimCareTeamRoleCS#site 
// * C4BBClaimCareTeamRoleCS#prescribing 
* ^copyright = "This Valueset is not copyrighted."
* ^experimental = false

ValueSet: C4BBClaimProfessionalAndNonClinicianCareTeamRole   
Title: "C4BB Claim Professional And Non Clinician Care Team Role Value Set"
Description: "Describes functional roles of the care team members"
* $CareTeamRoleCodeCS#primary 
* $CareTeamRoleCodeCS#supervisor
* C4BBClaimCareTeamRole#rendering
* C4BBClaimCareTeamRole#purchasedservice 
* C4BBClaimCareTeamRole#referring 
* ^copyright = "This Valueset is not copyrighted."
* ^experimental = false

ValueSet: C4BBClaimPharmacyTeamRole 
Title: "C4BB Claim Pharmacy CareTeam Role Value Set"
Description: "Describes functional roles of the care team members"
* $CareTeamRoleCodeCS#primary 
* C4BBClaimCareTeamRole#prescribing 
* ^copyright = "This Valueset is not copyrighted."
* ^experimental = false

ValueSet: C4BBAdjudication   
Title: "C4BB Adjudication Value Set"
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
* C4BBAdjudication#paidbypatientcash "Paid by patient - cash"
* C4BBAdjudication#paidbypatientother "Paid by patient - other"
* C4BBAdjudication#paidtopatient "Paid to patient"
* C4BBAdjudication#paidtoprovider "Paid to provider" 
* C4BBAdjudication#memberliability "Member liability" 
* C4BBAdjudication#discount "Discount" 
* C4BBAdjudication#drugcost "Drug cost" 
* ^copyright = "This Valueset is not copyrighted."
* ^experimental = false


ValueSet: C4BBPayerProviderNetworkStatus
Title: "C4BB Payer Provider Network Status Value Set"
Description: "Indicates the provider network status in relation to a patient's coverage as of the effective date of service or admission."
* C4BBPayerAdjudicationStatus#innetwork	"In Network"
* C4BBPayerAdjudicationStatus#outofnetwork "Out Of Network"
* ^copyright = "This Valueset is not copyrighted."
* ^experimental = false

ValueSet: C4BBPayerBenefitPaymentStatus
Title: "C4BB Payer Benefit Payment Status Value Set"
Description: "Indicates the in network or out of network payment status of the claim."
* C4BBPayerAdjudicationStatus#innetwork	"In Network"
* C4BBPayerAdjudicationStatus#outofnetwork "Out Of Network"
* C4BBPayerAdjudicationStatus#other "Other" 
* ^copyright = "This Valueset is not copyrighted."
* ^experimental = false

ValueSet: C4BBPayerClaimPaymentStatusCode
Title: "C4BB Payer Claim Payment Status Code Value Set"
Description: "Indicates whether the claim / item was paid or denied."
* C4BBPayerAdjudicationStatus#paid 
* C4BBPayerAdjudicationStatus#denied 
* C4BBPayerAdjudicationStatus#partiallypaid 
* ^copyright = "This Valueset is not copyrighted."
* ^experimental = false

ValueSet: C4BBPayeeType
Title: "C4BB Payee Type Value Set"
Description: "Identifies the type of recipient of the adjudication amount; i.e., provider, subscriber, beneficiary or another recipient."
* C4BBPayeeType#beneficiary 
* $HL7PayeeType#subscriber 
* $HL7PayeeType#provider
* $HL7PayeeType#other "Other" 
* ^copyright = "This Valueset is not copyrighted."
* ^experimental = false

ValueSet: C4BBClaimProfessionalAndNonClinicianDiagnosisType 
Title: "C4BB Claim Professional And Non Clinician Diagnosis Type Value Set"
Description: "Indicates if the professional and non-clinician diagnosis is principal or secondary"
* $HL7DiagnosisType#principal "principal"
* C4BBClaimDiagnosisType#secondary "secondary"
* ^copyright = "This Valueset is not copyrighted."
* ^experimental = false

ValueSet: C4BBClaimInpatientInstitutionalDiagnosisType 
Title: "C4BB Claim Inpatient Institutional Diagnosis Type Value Set"
Description: "Indicates if the inpatient institutional diagnosis is admitting, principal, other or an external cause of injury."
* $HL7DiagnosisType#principal 
* C4BBClaimDiagnosisType#other  
* C4BBClaimDiagnosisType#externalcauseofinjury   
* $HL7DiagnosisType#admitting // http://terminology.hl7.org/CodeSystem/ex-diagnosistype#admitting 
* ^copyright = "This Valueset is not copyrighted."
* ^experimental = false

ValueSet: C4BBClaimOutpatientInstitutionalDiagnosisType 
Title: "C4BB Claim Outpatient Institutional Diagnosis Type Value Set"
Description: "Indicates if the outpatient institutional diagnosis is principal, other, an external cause of injury or a patient reason for visit."
* $HL7DiagnosisType#principal 
* C4BBClaimDiagnosisType#other  
* C4BBClaimDiagnosisType#externalcauseofinjury   
* C4BBClaimDiagnosisType#patientreasonforvisit 
* ^copyright = "This Valueset is not copyrighted."
* ^experimental = false

ValueSet: C4BBRelatedClaimRelationshipCodes
Title: "C4BB Related Claim Relationship Codes Value Set"
Description: "Identifies if the current claim represents a claim that has been adjusted and was given a prior claim number or if the current claim has been adjusted; i.e., replaced by or merged to another claim number."
* $HL7RelatedClaimRelationshipCS#prior 
* C4BBRelatedClaimRelationshipCodes#replacedby
* ^copyright = "This Valueset is not copyrighted."
* ^experimental = false

ValueSet: C4BBSupportingInfoType
Title: "C4BB SupportingInfo Type Value Set"
Description: "Used as the discriminator for the types of supporting information for the CARIN IG for Blue Button� Implementation Guide." 
* codes from system C4BBSupportingInfoType
* ^copyright = "This Valueset is not copyrighted."
* ^experimental = false

ValueSet: C4BBTransportationServiceCategories
Title: "C4BB Transportation Services Categories Value Set"
Description: "Transportation Services Supporting Info Category Codes" 
* C4BBSupportingInfoType#patientweight
* C4BBSupportingInfoType#ambulancetransportreason
* C4BBSupportingInfoType#transportationdistance
* C4BBSupportingInfoType#roudtrippurpose
* C4BBSupportingInfoType#stretcherpurpose
* C4BBSupportingInfoType#pickuplocation
* C4BBSupportingInfoType#dropofflocation
* ^copyright = "This Valueset is not copyrighted."
* ^experimental = false

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
Title: "C4BB Claim Identifier Type Value Set"
Description: "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber"
* C4BBIdentifierType#uc
* ^experimental = false
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBPatientIdentifierType
Title: "C4BB Patient Identifier Type Value Set"
Description: "Identifies the type of identifier payers and providers assign to patients"
* C4BBIdentifierType#um
* C4BBIdentifierType#pat
* $IdentifierType#MB
* $IdentifierType#MR  
* ^experimental = false
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBOrganizationIdentifierType
Title: "C4BB Organization Identifier Type Value Set"
Description: "Identifies the type of identifiers for organizations"
* $HL7IdentifierType#NPI
* C4BBIdentifierType#payerid
* C4BBIdentifierType#naiccode
* codes from system $IdentifierType
* ^experimental = false
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBPractitionerIdentifierType
Title: "C4BB Practitioner Identifier Type Value Set"
Description: "Identifies the type of identifiers for practitioners"
* $HL7IdentifierType#NPI
* codes from system $IdentifierType
* ^experimental = false
* ^copyright = "This Valueset is not copyrighted."
/*
CodeSystem: C4BBClaimProcedureType
Title: "C4BB Claim Procedure Type"
Description: "Indicates if the inpatient institutional procedure (ICD-PCS) is the principal procedure or another procedure"
* #principal "Principal" "The Principal Procedure is based on the relation of the procedure to the Principal Diagnosis"
* #other "Other"  "Other procedures performed during the inpatient institutional admission"
* ^copyright = "This Code System is not copyrighted."
*/
ValueSet: C4BBClaimProcedureType
Title: "C4BB Claim Procedure Type Value Set"
Description: "Indicates if the inpatient institutional procedure (ICD-PCS) is the principal procedure or another procedure"
* codes from system C4BBClaimProcedureType
* ^experimental = false
* ^copyright = "This Value Set is not copyrighted."

ValueSet: C4BBInstitutionalClaimSubType
Title: "C4BB Institutional Claim SubType Value Set"
Description: "Indicates if institutional ExplanationOfBenefit is inpatient or outpatient."
* codes from system C4BBInstitutionalClaimSubType
* ^experimental = false
* ^copyright = "This ValueSet is not copyrighted."

ValueSet: C4BBProfessionalAndNonClinicianClaimType
Title: "C4BB Professional And Non Clinician Claim Type Value Set"
Description: "This value set includes Professional and Non Clinician Claim Type codes."
* $HL7ClaimTypeCS#professional
* $HL7ClaimTypeCS#vision
* ^experimental = false
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4BBProfessionalAndNonClinicianClaimSubType
Title: "C4BB Professional And Non Clinician Claim SubType Value Set"
Description: "This value set includes Professional and Non Clinician Claim SubType codes."
* $HL7ClaimTypeCS#vision
* ^experimental = false
* ^copyright = "This Valueset is not copyrighted."


ValueSet: C4BBSurfaceCodes
Title: "US Surface Codes Set Value Set"
Description: "This value set includes FDI tooth surface codes localized for the US Realm."
* codes from system C4BBSurfaceCodes
* ^experimental = false
* ^copyright = "This ValueSet is not copyrighted."