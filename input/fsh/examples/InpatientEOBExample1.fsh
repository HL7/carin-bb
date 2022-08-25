Instance: InpatientEOBExample1
InstanceOf: C4BBExplanationOfBenefitInpatientInstitutional
Title: "EOB Inpatient Institutional - Example 1"
Description: "EOB Inpatient Institutional - Example 1"
Usage: #example
* meta.lastUpdated = "2020-04-28T15:39:36-04:00"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Inpatient-Institutional|1.2.0"
* identifier.type = $C4BBIdentifierType#uc "Unique Claim ID"
* identifier.type.text = "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber"
* identifier.system = "https://www.upmchealthplan.com/fhir/EOBIdentifier"
* identifier.value = "InpatientEOBExample1"
* status = #active
* type = $claim-type#institutional
* type.text = "Institutional"
* subType = $C4BBInstitutionalClaimSubType#inpatient
* subType.text = "Inpatient"
* use = #claim
* patient = Reference(ExamplePatient1)
* billablePeriod.start = "2017-05-23"
* billablePeriod.end = "2017-05-23"
* created = "2017-06-01T00:00:00-04:00"
* insurer = Reference(PayerOrganizationExample1) "UPMC Health Plan"
* provider = Reference(ProviderOrganization3)
* payee.type = $payeetype#provider "Provider"
* payee.type.text = "Any benefit payable will be paid to the provider (Assignment of Benefit)."
* payee.party = Reference(ProviderOrganization4)
* outcome = #complete
* careTeam[0].sequence = 1
* careTeam[=].provider = Reference(Practitioner2)
* careTeam[=].role = $C4BBClaimCareTeamRole#attending "Attending"
* careTeam[=].role.text = "The attending physician"
* careTeam[+].sequence = 2
* careTeam[=].provider = Reference(Practitioner2)
* careTeam[=].role = $C4BBClaimCareTeamRole#referring "Referring"
* careTeam[=].role.text = "The referring physician"
* supportingInfo[0].sequence = 1
* supportingInfo[=].category = $C4BBSupportingInfoType#clmrecvddate "Claim Received Date"
* supportingInfo[=].category.text = "Date the claim was received by the payer."
* supportingInfo[=].timingDate = "2017-06-01"
* supportingInfo[+].sequence = 2
* supportingInfo[=].category = $C4BBSupportingInfoType#admissionperiod "Admission Period"
* supportingInfo[=].category.text = "Dates corresponding with the admission and discharge of the beneficiary to a facility"
* supportingInfo[=].timingPeriod.start = "2017-05-23"
* supportingInfo[+].sequence = 3
* supportingInfo[=].category = $C4BBSupportingInfoType#benefitpaymentstatus
* supportingInfo[=].code = $C4BBPayerAdjudicationStatus#innetwork
* diagnosis[0].sequence = 1
* diagnosis[=].diagnosisCodeableConcept = $icd-10-cm#I21.4
* diagnosis[=].type = $ex-diagnosistype#principal "Principal Diagnosis"
* diagnosis[=].type.text = "The single medical diagnosis that is most relevant to the patient's chief complaint or need for treatment."
* diagnosis[+].sequence = 2
* diagnosis[=].diagnosisCodeableConcept = $icd-10-cm#I25.118
* diagnosis[=].type = $C4BBClaimDiagnosisType#other "Other"
* diagnosis[=].type.text = "Required when other conditions coexist or develop subsequently during the treatment"
* diagnosis[+].sequence = 3
* diagnosis[=].diagnosisCodeableConcept = $icd-10-cm#E78.5
* diagnosis[=].type = $C4BBClaimDiagnosisType#other "Other"
* diagnosis[=].type.text = "Required when other conditions coexist or develop subsequently during the treatment"
* diagnosis[+].sequence = 4
* diagnosis[=].diagnosisCodeableConcept = $icd-10-cm#M19.90
* diagnosis[=].type = $C4BBClaimDiagnosisType#other "Other"
* diagnosis[=].type.text = "Required when other conditions coexist or develop subsequently during the treatment"
* procedure[0].sequence = 1
* procedure[=].type = $C4BBClaimProcedureType#principal "Principal"
* procedure[=].type.text = "The Principal Procedure is based on the relation of the procedure to the Principal Diagnosis"
* procedure[=].date = "2017-05-23"
* procedure[=].procedureCodeableConcept = $ICD10#4A023N7
* procedure[+].sequence = 2
* procedure[=].type = $C4BBClaimProcedureType#other "Other"
* procedure[=].type.text = "Other procedures performed during the inpatient institutional admission"
* procedure[=].date = "2017-05-23"
* procedure[=].procedureCodeableConcept = $ICD10#B211YZZ
* procedure[+].sequence = 3
* procedure[=].type = $C4BBClaimProcedureType#other "Other"
* procedure[=].type.text = "Other procedures performed during the inpatient institutional admission"
* procedure[=].date = "2017-05-23"
* procedure[=].procedureCodeableConcept = $ICD10#B215YZZ
* insurance.focal = true
* insurance.coverage = Reference(CoverageEx2)
* item[0].sequence = 1
* item[=].revenue = $RevenueCodes#0301
* item[=].productOrService = $cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 2
* item[=].revenue = $RevenueCodes#0260
* item[=].productOrService = $cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 3
* item[=].revenue = $RevenueCodes#0305
* item[=].productOrService = $cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 4
* item[=].revenue = $RevenueCodes#0324
* item[=].productOrService = $cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 5
* item[=].revenue = $RevenueCodes#0259
* item[=].productOrService = $cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 6
* item[=].revenue = $RevenueCodes#0250
* item[=].productOrService = $cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 7
* item[=].revenue = $RevenueCodes#0710
* item[=].productOrService = $cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 8
* item[=].revenue = $RevenueCodes#0210
* item[=].productOrService = $cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 9
* item[=].revenue = $RevenueCodes#0272
* item[=].productOrService = $cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 10
* item[=].revenue = $RevenueCodes#0370
* item[=].productOrService = $cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 11
* item[=].revenue = $RevenueCodes#0730
* item[=].productOrService = $cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 12
* item[=].revenue = $RevenueCodes#0450
* item[=].productOrService = $cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 13
* item[=].revenue = $RevenueCodes#0481
* item[=].productOrService = $cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* adjudication[0].category = $C4BBAdjudicationDiscriminator#billingnetworkcontractingstatus "Billing Network Contracting Status"
* adjudication[=].category.text = "Indicates that the Billing Provider has a contract with the Payer as of the effective date of service or admission."
* adjudication[=].reason = $C4BBPayerAdjudicationStatus#contracted "Contracted"
* adjudication[=].reason.text = "Indicates the provider was contracted for the service"
* adjudication[+].category = $C4BBAdjudication#noncovered "Noncovered"
* adjudication[=].category.text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
* adjudication[=].amount.value = 0
* adjudication[=].amount.currency = #USD
* total[0].category = $adjudication#submitted "Submitted Amount"
* total[=].category.text = "The total submitted amount for the claim or group or line item."
* total[=].amount.value = 7147.2
* total[=].amount.currency = #USD
* total[+].category = $adjudication#eligible "Eligible Amount"
* total[=].category.text = "Amount of the change which is considered for adjudication."
* total[=].amount.value = 1542.01
* total[=].amount.currency = #USD
* total[+].category = $adjudication#deductible "Deductible"
* total[=].category.text = "Amount deducted from the eligible amount prior to adjudication."
* total[=].amount.value = 0
* total[=].amount.currency = #USD
* total[+].category = $adjudication#copay "CoPay"
* total[=].category.text = "Patient Co-Payment"
* total[=].amount.value = 120
* total[=].amount.currency = #USD
* total[+].category = $C4BBAdjudication#noncovered "Noncovered"
* total[=].category.text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
* total[=].amount.value = 0
* total[=].amount.currency = #USD
* total[+].category = $adjudication#benefit "Benefit Amount"
* total[=].category.text = "Amount payable under the coverage"
* total[=].amount.value = 1393.57
* total[=].amount.currency = #USD
* total[+].category = $C4BBAdjudication#memberliability "Member liability"
* total[=].category.text = "The amount of the member's liability."
* total[=].amount.value = 0
* total[=].amount.currency = #USD