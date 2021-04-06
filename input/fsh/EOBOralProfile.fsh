Profile: C4BBExplanationOfBenefitOral
Parent: C4BB-ExplanationOfBenefit
Id: C4BB-ExplanationOfBenefit-Oral
Title: "C4BB ExplanationOfBenefit Oral"
// TODO: Update description
Description: "This profile is used for Explanation of Benefits (EOBs) based on claims submitted by providers of oral services including Dental, Denture and Hygiene. 
The claims data is based on the professional claim form 1500, submission standards adopted by the Department of Health and Human Services as form CMS-1500."
// 20210216 CAS: FHIR-30575
* meta.profile[supportedProfile] = Canonical(C4BBExplanationOfBenefitOral|1.0.0)
// TODO need updated careTeam Invariants and specialties
* careTeam obeys EOB-prof-careTeam-practitioner
* careTeam obeys EOB-prof-careTeam-organization
* careTeam.qualification MS 
* careTeam.qualification from $USCoreProviderSpecialty (required)  // cardinality constraint?
* type = $HL7ClaimTypeCS#oral
// * provider only Reference(C4BBOrganization or C4BBPractitionerRole or C4BBPractitioner) -- set in base class
* insert SupportingInfoSlicing 
* supportingInfo contains 
   billingnetworkcontractingstatus 1..1 MS and
   performingnetworkcontractingstatus 1..1 MS and
   clmrecvddate 0..1 MS and
   servicefacility 0..1 MS and
   orthodontics 0..1 MS and
   prosthesis 0..1 MS
   /*
   Need to add discriminator to CodeSystem-C4BBSupportingInfoType



   toothnumber 1..1 MS and
   toothbegin 1..1 MS and
   toothend 1..1 MS and
   toothsurface 1..1 MS and
   missingtoothnumber 1..1 MS and
   orthotreatindicator 1..1 MS and
   orthoapplianceappdate 1..1 MS and
   totalorthodontiamonths 1..1 MS and
   priorprosthesisplacedate 1..1 MS
   */
* supportingInfo[billingnetworkcontractingstatus].category = C4BBSupportingInfoType#billingnetworkcontractingstatus 
* supportingInfo[billingnetworkcontractingstatus].category MS
* supportingInfo[billingnetworkcontractingstatus].code from C4BBPayerProviderContractingStatus  (required)
* supportingInfo[billingnetworkcontractingstatus].code 1..1 MS
* supportingInfo[performingnetworkcontractingstatus].category = C4BBSupportingInfoType#performingnetworkcontractingstatus
* supportingInfo[performingnetworkcontractingstatus].code from C4BBPayerProviderContractingStatus  (required)
* supportingInfo[performingnetworkcontractingstatus].category MS
* supportingInfo[performingnetworkcontractingstatus].code 1..1 MS
* supportingInfo[clmrecvddate].category = C4BBSupportingInfoType#clmrecvddate
* supportingInfo[clmrecvddate].category MS
* supportingInfo[clmrecvddate].timing[x] only date 
* supportingInfo[clmrecvddate].timing[x] 1..1 MS
* supportingInfo[servicefacility].category = C4BBSupportingInfoType#servicefacility
* supportingInfo[servicefacility].category MS
* supportingInfo[servicefacility].valueReference 1..1 MS 
* supportingInfo[servicefacility].valueReference only Reference(C4BBOrganization)



* supportingInfo[orthodontics].category = C4BBSupportingInfoType#orthodontics
* supportingInfo[orthodontics].category MS

* supportingInfo[prosthesis].category = C4BBSupportingInfoType#prosthesis
* supportingInfo[prosthesis].category MS



* careTeam.role from C4BBClaimProfessionalAndNonClinicianCareTeamRole   (required)  // was PayerProfessionalAndNonClinicianProviderRole
* careTeam.role 1..1 MS
* diagnosis 1..* MS
* diagnosis.type 1..1 MS
* diagnosis.type from C4BBClaimProfessionalAndNonClinicianDiagnosisType  (required)
* diagnosis.diagnosis[x] 1..1 MS
* diagnosis.diagnosis[x] only CodeableConcept
* diagnosis.diagnosis[x] from CDCICD910CMDiagnosisCodes (required)
* item.modifier from AMACPTCMSHCPCSModifiers (required)
// CAS 20210118: Add MS to Professional and NonClinican item.productOrService and item.modifier https://jira.hl7.org/browse/FHIR-30358
* item.modifier MS
* item.productOrService from AMACPTCMSHCPCSProcedureCodes (required)
// 20210201 CAS: FHIR-30357 - item.productOrService is required when item.revenue is provided
//* item.productOrService obeys EOB-prof-item-productorservice
// CAS 20210118: Add MS to Professional and NonClinican item.productOrService and item.modifier https://jira.hl7.org/browse/FHIR-30358
* item.productOrService MS
* item.location[x] from CMSPlaceofServiceCodes (required)
* item.location[x] only CodeableConcept
* adjudication 0..1
* insert ItemAdjudicationSlicing
* item.adjudication MS 
* item.adjudication contains
   adjudicationamounttype 1..* MS and
   denialreason 0..1 MS and
   benefitpaymentstatus 1..1 MS and
   allowedunits 0..1 MS
* item.adjudication[allowedunits] ^short = "The quantity of units, times, days, visits, services, or treatments for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider.  (149)"
* item.adjudication[allowedunits].category = C4BBAdjudicationDiscriminator#allowedunits
* item.adjudication[allowedunits].value only decimal
* item.adjudication[denialreason].category  = C4BBAdjudicationDiscriminator#denialreason 
* item.adjudication[denialreason].reason from X12ClaimAdjustmentReasonCodesCMSRemittanceAdviceRemarkCodes
* item.adjudication[denialreason].reason 1..1 MS
* item.adjudication[denialreason] ^short = "Reason codes used to interpret the Non-Covered Amount (92)"
* item.adjudication[adjudicationamounttype].category from C4BBAdjudication 
* item.adjudication[adjudicationamounttype] ^short = "Amounts"
* item.adjudication[adjudicationamounttype].amount  MS
* item.adjudication[adjudicationamounttype].amount 1..1
* item.adjudication[benefitpaymentstatus] ^short = "Indicates the in network or out of network payment status of the claim. (142)"
* item.adjudication[benefitpaymentstatus].category from C4BBPayerBenefitPaymentStatus (required)
* insert TotalSlicing
* total.category from C4BBAdjudication  (extensible)
* total contains 
   adjudicationamounttype 1..* MS and
   benefitpaymentstatus 1..* MS 
* total[adjudicationamounttype].category from C4BBAdjudication (required)
* total[benefitpaymentstatus].category from C4BBPayerBenefitPaymentStatus (required)

* supportingInfo[clmrecvddate] ^comment = "The date the claim was received by the payer (88)"
* supportingInfo[billingnetworkcontractingstatus] ^comment = "Indicates that the Billing Provider has a contract with the Plan (regardless of the network) as of the effective date of service or admission. (101)"
* supportingInfo[performingnetworkcontractingstatus] ^comment = "Indicates that the Billing Provider has a contract with the Payer as of the effective date of service or admission. (101)"
* supportingInfo[servicefacility] ^comment = "Service Facility Location information conveys the name, full address and identifier of the facility where services were rendered when that is different from the Billing/Performing Provider. Service Facility Location is not just an address nor is it a patient’s home. Examples of Service Facility Location include hospitals, nursing homes, laboratories or homeless shelter. Service Facility Location identifier is the facility’s Type 2 Organization NPI if they are a health care provider as defined under HIPAA.  
If the service facility is not assigned an NPI, this data element will not be populated.  Reference CMS 1500 element 32a (97, 170, 176)"

* supportingInfo[orthodontics].code ^comment = "Indicates if the treatment is for orthodontics (199)"
* supportingInfo[orthodontics].timingDate ^comment = "Orthodontics Appliance Application Date (200)"
* supportingInfo[orthodontics].valueQuantity ^comment = "Total Number of Months for Orthodontia (201)"

* supportingInfo[prosthesis].valueQuantity ^comment = "Prosthesis Replacement Indicator (202)"
* supportingInfo[prosthesis].timingDate ^comment = "Date of Prior Prosthesis Placement  (203)"


* item.adjudication[allowedunits] ^comment = "The quantity of units, times, days, visits, services, or treatments allowed for the service described by the HCPCS code, revenue code or procedure code, submitted by the provider. (149)"
* item.adjudication[denialreason] ^comment = "Reason codes used to interpret the Non-Covered Amount that are provided to the Provider. (92)"
* item.adjudication[adjudicationamounttype] ^comment = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* item.adjudication[benefitpaymentstatus] ^comment = "Indicates the in network or out of network payment status of the claim. (142)"
* total[adjudicationamounttype] ^comment = "Describes the various amount fields used when payers receive and adjudicate a claim. (187)"
* diagnosis ^comment = "Diagnosis codes describe an individual's disease or medical condition. (6, 7, 8, 21, 22, 23, 30)"
* diagnosis.type ^comment = "Indicates if the professional and non-clinician diagnosis is principal or secondary (21, 22, 23)"
* diagnosis.sequence ^comment =  "Diagnosis.sequence values do not necessarily indiate any order in which the diagnosis was reported or identified.  client app implementations should not assign any significance to the sequence values.  client app implementations should use the values of diagnosis.type to identify primary, secondary, etc."
* item.productOrService ^comment = "Medical procedure a patient received from a health care provider. Current coding methods include: CPT-4 and HCFA Common Procedure Coding System Level II - (HCPCSII). (40)"
* item.modifier ^comment = "Modifier(s) for the procedure represented on this line. Identifies special circumstances related to the performance of the service. (41)"
* item.quantity ^comment = "The quantity of units, times, days, visits, services, or treatments for the service described by the HCPCS code or CPT procedure code, submitted by the provider. (42)"
* item.location[x] ^comment = "Code indicating the location, such as inpatient, outpatient facility, office, or home health agency, where this service was performed. (46)"
* careTeam.provider ^comment = "The National Provider Identifier assigned to the primary, supervising, performing, purhcased service and referring care team. (95, 96, 99)"
* item.serviced[x]  ^comment = "Date services began/ended. Located on CMS 1500 (Form Locator 24A) (118)"
* total.amount ^comment = "Total amount for each category (i.e., submitted, eligible, etc.) (148)"

* insert EOBBaseProfileComments
