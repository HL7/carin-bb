//USCore
Alias:   $USCoreLocation = http://hl7.org/fhir/us/core/StructureDefinition/us-core-location
Alias:   $USCorePatient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Alias:   $USCorePractitioner = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Alias:   $USCorePractitionerRole = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole
Alias:   $USCoreOrganization = http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization
Alias:   $USCoreProviderRole = http://hl7.org/fhir/us/core/ValueSet/us-core-provider-role
Alias:   $USCoreProviderSpecialty = http://hl7.org/fhir/us/core/ValueSet/us-core-provider-specialty

Alias:   $RelatedClaimRelationship = http://hl7.org/fhir/ValueSet/related-claim-relationship
Alias:   $SubscriberRelationiship = http://hl7.org/fhir/ValueSet/subscriber-relationship
Alias:   $HL7AdjudicationCS = 	http://terminology.hl7.org/CodeSystem/adjudication
Alias:   $HL7ClaimType = http://hl7.org/fhir/ValueSet/claim-type
Alias:   $HL7ClaimTypeCS = http://terminology.hl7.org/CodeSystem/claim-type   
Alias:   $CoverageClassCS = http://terminology.hl7.org/CodeSystem/coverage-class
Alias:   $OrganizationIdentifierTypeCS   =  http://terminology.hl7.org/CodeSystem/v2-0203
Alias:   $ClaimPayeeTypeCode = http://hl7.org/fhir/ValueSet/payeetype
                               
Alias:   $CareTeamRoleCodeCS = http://terminology.hl7.org/CodeSystem/claimcareteamrole
Alias:   $PresentOnAdmissionV2CS = urn:oid:2.16.840.1.113883.6.301.11
Alias:   $HCPCSProcedureCodesCS = urn:oid:2.16.840.1.113883.6.285
Alias:   $AMACPTMODIFIERS = http://www.ama-assn.org/go/cpt-modifiers
Alias:   $HCPCSMODIFIERS = http://www.cms.gov/hcpcs-level-II-modifiers
Alias: $AdjudicationTypeExt = http://hl7.org/fhir/us/carin-bb/StructureDefinition/AdjudicationType

// CodeSystem Aliases due to bugs in Sushi 0.12.7 and 0.13.2 ..hopefully resolved and deleted at some point
//Alias: $IdentifierTypeCS = http://hl7.org/fhir/us/carin-bb/CodeSystem/IdentifierTypeCS
//Alias: $ClaimInformationCategoryCS = http://hl7.org/fhir/us/carin-bb/CodeSystem/ClaimInformationCategoryCS
//Alias: $ClaimAdjudicationCategoryCS = http://hl7.org/fhir/us/carin-bb/CodeSystem/ClaimAdjudicationCategoryCS

// Code Systems
Alias:   $LNC = http://loinc.org
Alias:   $SCT = http://snomed.info/sct
Alias:   $UCUM = http://unitsofmeasure.org
Alias:   $ICD10CM = http://hl7.org/fhir/sid/icd-10-cm 
Alias:   $RXN = http://www.nlm.nih.gov/research/umls/rxnorm
Alias:   $CPT = http://www.ama-assn.org/go/cpt
Alias:   $CPTALLVS = http://hl7.org/fhir/ValueSet/cpt-all
Alias:   $ICD10PCS = http://www.nlm.nih.gov/research/umls/icd10pcs
Alias:   $FDANationalDrugCodeCS = http://hl7.org/fhir/sid/ndc
Alias:   $NUCCProviderTaxonomy = http://nucc.org/provider-taxonomy


Alias:  $NUBCPointOfOriginForAdmissionOrVisitCS = https://www.nubc.org/point-of-origin-for-admission-or-visit
Alias: $NUBCPatientDischargeCS   = https://www.nubc.org/patient-discharge
Alias: $NUBCPriorityOfAdmissionOrVisitCS = https://www.nubc.org/priority-type-of-admission-or-visit
Alias: $NUBCPointOfOriginForAdmissionOrVisit = http://hl7.org/fhir/ValueSet/nubc-admission-source
Alias: $NUBCRevenueCode = http://hl7.org/fhir/ValueSet/nubc-service-line-revenue
Alias: $NUBCTypeOfBill = http://hl7.org/fhir/ValueSet/nubc-type-of-bill

// Profiles
Alias:  $InpatientEOBProfile = http://hl7.org/fhir/us/carin-bb/StructureDefinition/CARIN-BB-ExplanationOfBenefit-Inpatient-Facility
Alias:  $OutpatientEOBProfile = http://hl7.org/fhir/us/carin-bb/StructureDefinition/CARIN-BB-ExplanationOfBenefit-Outpatient-Facility
Alias:  $ProfessionalEOBProfile = http://hl7.org/fhir/us/carin-bb/StructureDefinition/CARIN-BB-ExplanationOfBenefit-Professional-NonClinician
Alias:  $PharmacyEOBProfile = http://hl7.org/fhir/us/carin-bb/StructureDefinition/CARIN-BB-ExplanationOfBenefit-Pharmacy
