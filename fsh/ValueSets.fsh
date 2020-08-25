

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

ValueSet: X12CARCCMSRARC
Title: "Adjudication Denial Reason from X12 CARC and CMS RARC (* NO CodeSystem*)"
Description: "Reason codes used to interpret the adjudication denial reason.  X12 CARC + CMS RARC"

ValueSet: CMSDRG 
Title: "CMS-DRG"
Description: "CMS-DRG"
* codes from system $CMSDRGCS

ValueSet: NUBCPresentOnAdmission
Title: "NUBC Present On Admission"
Description: "NUBC Present On Admission"
* codes from system $PresentOnAdmissionV2CS

ValueSet: NUBCPatientDischargeStatus
Title: "NUBC Patient Discharge Status"
Description: "NUBC Patient Discharge Status"
* codes from system NUBCPatientDischargeCS

ValueSet: NUBCPriorityOfAdmissionn
Title: "NUBC Priority of Admission"
Description: "NUBC Priority of Admission"
* codes from system NUBCPriorityOfAdmissionOrVisitCS

ValueSet: NUBCRevenueCode
Title: "NUBC Revenue Codes."
Description: "NUBC Revenue codes are used to convey specific accomodation, ancillary service or unique billing calculations or arrangements. They are listed within the UB-04 Data Specifications Manual and maintained by the National Uniform Billing Committee (NUBC)"
* codes from system NUBCRevenueCodeCS

ValueSet: NUBCTypeOfBill
Title: "NUBC Type of Bill"
Description: "NUBC Type of Bill codes. They are listed within the UB-04 Data Specifications Manual and maintained by the National Uniform Billing Committee (NUBC)."
* codes from system NUBCTypeOfBillCS 

ValueSet: NUBCPointOfOriginForAdmissionOrVisit
Title: "NUBC Point Of Origin For Admission Or Visit"
Description: "NUBC Point of Origin for Admission or Visit. They are listed within the UB-04 Data Specifications Manual and maintained by the National Uniform Billing Committee (NUBC)."
* codes from system NUBCPointOfOriginForAdmissionOrVisitCS


ValueSet: PatientIdentifierType
Title: "Patient Identifier Type"
Description: "Patient Identifier Type"
* IdentifierTypeCS#um
* IdentifierTypeCS#mb
* $IdentifierTypeCS#MR
* IdentifierTypeCS#pt

//alueSet: OrganizationIdentifierType
//Title: "Organization Identifier Type"
//Description: "Organization  Identifier Type"
//* codes from system $OrganizationIdentifierTypeCS

ValueSet: NCPDPDispensedAsWritten
Title: "NCPDP Dispensed As Written (DAW)"
Description: "NCPDP field # 408-D8 (Dispensed As Written (DAW) / Product Selection Code) "
* codes from system NCPDPDispensedAsWrittenCS

ValueSet: NCPDPBrandGenericCode
Title: "NCPDP Brand Generic Code"
Description: "National Council for Prescription Drug Programs, (NCPDP) field # 686, BrandGenericCode."
* codes from system NCPDPBrandGenericCodeCS 

ValueSet: NCPDPPrescriptionOriginCode
Title: "NCPDP Prescription Origin Code"
Description: "National Council for Prescription Drug Programs, (NCPDP)  field # 419-DJ (Prescription Origin Code)."
* codes from system NCPDPPrescriptionOriginCodeCS

ValueSet: NCPDPRejectCode
Title: "NCPDP Reject Code"
Description: "This value set contains the error codes to be used by real-time pharmacy benefit check servers when encountering a data or business condition that prevents processing from completing. 
Values are defined in the NCPDP-maintained Reject Code (511-FB) code set."
* codes from system NCPDPRejectCodeCS 

ValueSet: FDANDCNCPDPCompoundCode
Title: "FDA NDC NCPDP Compound Code"
Description: "NCPDP field # 407-D7 (National Drug Code (NDC)) or NCPDP field # 406-D6 (Compound Code)"
* codes from system $FDANationalDrugCodeCS
* codes from system NCPDPCompoundCodeCS

ValueSet: FDANationalDrugCode
Title: "FDA National Drug Code (NDC)"
Description: "FDA National Drug Code (NDC)"
* codes from system $FDANationalDrugCodeCS

ValueSet: ICD10CM
Title: "ICD-10-CM Diagnosis Codes"
Description: "ICD-10-CM Diagnosis Codes."
* codes from system $ICD10CM

ValueSet: ICD10PCS
Title: "ICD-10-PCS"
Description: "ICD-10-PCS"
* codes from system $ICD10PCS 

ValueSet: AMACPTCMSHCPCSProcedureCodes
Description: "AMA CPT and CMS HCPCS Procedure Codes"
Title: "AMA CPT and CMS HCPCS Procedure Codes"
* codes from valueset $CPTALLVS
* codes from system $HCPCSProcedureCodesCS


ValueSet:  AMACPTCMSHCPCSProcedureModifiers
Description: "AMA CPT and CMS HCPCS Modifier Codes"
Title: "AMA CPT and CMS HCPCS Modifier Codes"
* codes from system $AMACPTMODIFIERS 
* codes from system $HCPCSMODIFIERS 


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

ValueSet: CMSPlaceOfService
Title: "CMS Place of Service"
Description: "CMS Place of Service"
* codes from system $CMSPlaceOfServiceCS 

ValueSet: NUCCHealthcareProviderTaxonomy
Title: "NUCC Healthcare Provider Taxonomy"
Description:  "NUCC Healthcare Provider Taxonomy"
* codes from system $NUCCProviderTaxonomy