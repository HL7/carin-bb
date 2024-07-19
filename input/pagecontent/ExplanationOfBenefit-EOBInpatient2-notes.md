```
Instance: EOBInpatient2
InstanceOf: ExplanationOfBenefit
Title: "EOB Inpatient Example 2"
Description: "EOB Inpatient Example 2"
Usage: #example
* meta.lastUpdated = "2020-04-28T15:39:36-04:00"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Inpatient-Institutional|2.1.0-snapshot"
* identifier.type = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBIdentifierType#uc "Unique Claim ID"
  * text = "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber"
* identifier.system = "https://www.upmchealthplan.com/fhir/EOBIdentifier"
* identifier.value = "InpatientEOBExample1"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
  * text = "Institutional"
* subType = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBInstitutionalClaimSubType#inpatient
  * text = "Inpatient"
* use = #claim
* patient = Reference(Patient1)
* billablePeriod.start = "2017-05-23"
* billablePeriod.end = "2017-05-23"
* created = "2017-06-01T00:00:00-04:00"
* insurer = Reference(Payer2) "UPMC Health Plan"
* provider = Reference(ProviderOrganization3)
* payee.type = http://terminology.hl7.org/CodeSystem/payeetype#provider "Provider"
  * text = "Any benefit payable will be paid to the provider (Assignment of Benefit)."
* payee.party = Reference(ProviderOrganization4)
* outcome = #complete
* careTeam[0].sequence = 1
* careTeam[=].provider = Reference(Practitioner2)
* careTeam[=].role = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBClaimCareTeamRole#attending "Attending"
  * text = "The attending physician"
* careTeam[+].sequence = 2
* careTeam[=].provider = Reference(Practitioner2)
* careTeam[=].role = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBClaimCareTeamRole#referring "Referring"
  * text = "The referring physician"
* supportingInfo[0].sequence = 2
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#admissionperiod
* supportingInfo[=].timingPeriod.start = "2017-05-23"
* supportingInfo[+].sequence = 1
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#clmrecvddate
* supportingInfo[=].timingDate = "2017-06-01"
* diagnosis[0].sequence = 1
* diagnosis[=].diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#I21.4
* diagnosis[=].type = http://terminology.hl7.org/CodeSystem/ex-diagnosistype#principal "Principal Diagnosis"
  * text = "The single medical diagnosis that is most relevant to the patient's chief complaint or need for treatment."
* diagnosis[+].sequence = 2
* diagnosis[=].diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#I25.118
* diagnosis[=].type = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBClaimDiagnosisType#other "Other"
  * text = "Required when other conditions coexist or develop subsequently during the treatment"
* diagnosis[+].sequence = 3
* diagnosis[=].diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#E78.5
* diagnosis[=].type = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBClaimDiagnosisType#other "Other"
  * text = "Required when other conditions coexist or develop subsequently during the treatment"
* diagnosis[+].sequence = 4
* diagnosis[=].diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#M19.90
* diagnosis[=].type = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBClaimDiagnosisType#other "Other"
  * text = "Required when other conditions coexist or develop subsequently during the treatment"
* procedure[0].sequence = 1
* procedure[=].type = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBClaimProcedureType#principal "Principal"
  * text = "The Principal Procedure is based on the relation of the procedure to the Principal Diagnosis"
* procedure[=].date = "2017-05-23"
* procedure[=].procedureCodeableConcept = http://www.cms.gov/Medicare/Coding/ICD10#4A023N7
* procedure[+].sequence = 2
* procedure[=].type = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBClaimProcedureType#other "Other"
  * text = "Other procedures performed during the inpatient institutional admission"
* procedure[=].date = "2017-05-23"
* procedure[=].procedureCodeableConcept = http://www.cms.gov/Medicare/Coding/ICD10#B211YZZ
* procedure[+].sequence = 3
* procedure[=].type = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBClaimProcedureType#other "Other"
  * text = "Other procedures performed during the inpatient institutional admission"
* procedure[=].date = "2017-05-23"
* procedure[=].procedureCodeableConcept = http://www.cms.gov/Medicare/Coding/ICD10#B215YZZ
* insurance.focal = true
* insurance.coverage = Reference(Coverage2)
* item[0].sequence = 1
* item[=].revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0301
* item[=].productOrService = http://www.ama-assn.org/go/cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
  * text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 2
* item[=].revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0260
* item[=].productOrService = http://www.ama-assn.org/go/cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
  * text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 3
* item[=].revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0305
* item[=].productOrService = http://www.ama-assn.org/go/cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
  * text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 4
* item[=].revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0324
* item[=].productOrService = http://www.ama-assn.org/go/cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
  * text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 5
* item[=].revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0259
* item[=].productOrService = http://www.ama-assn.org/go/cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
  * text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 6
* item[=].revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0250
* item[=].productOrService = http://www.ama-assn.org/go/cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
  * text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 7
* item[=].revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0710
* item[=].productOrService = http://www.ama-assn.org/go/cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
  * text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 8
* item[=].revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0210
* item[=].productOrService = http://www.ama-assn.org/go/cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
  * text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 9
* item[=].revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0272
* item[=].productOrService = http://www.ama-assn.org/go/cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
  * text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 10
* item[=].revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0370
* item[=].productOrService = http://www.ama-assn.org/go/cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
  * text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 11
* item[=].revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0730
* item[=].productOrService = http://www.ama-assn.org/go/cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
  * text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 12
* item[=].revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0450
* item[=].productOrService = http://www.ama-assn.org/go/cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
  * text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 13
* item[=].revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0481
* item[=].productOrService = http://www.ama-assn.org/go/cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
  * text = "HOSPITAL - INPATIENT HOSPITAL"
* adjudication[0].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudicationDiscriminator#benefitpaymentstatus
* adjudication[=].reason = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBPayerAdjudicationStatus#outofnetwork
* adjudication[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudicationDiscriminator#billingnetworkstatus
* adjudication[=].reason = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBPayerAdjudicationStatus#innetwork "In Network"
  * text = "Indicates the provider was in network for the service"
* adjudication[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudication#noncovered "Noncovered"
  * text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
* adjudication[=].amount.value = 0
* adjudication[=].amount.currency = #USD
* total[0].category = http://terminology.hl7.org/CodeSystem/adjudication#submitted "Submitted Amount"
* total[=].category.text = "The total submitted amount for the claim or group or line item."
* total[=].amount.value = 7147.2
* total[=].amount.currency = #USD
* total[+].category = http://terminology.hl7.org/CodeSystem/adjudication#eligible "Eligible Amount"
  * text = "Amount of the change which is considered for adjudication."
* total[=].amount.value = 1542.01
* total[=].amount.currency = #USD
* total[+].category = http://terminology.hl7.org/CodeSystem/adjudication#deductible "Deductible"
  * text = "Amount deducted from the eligible amount prior to adjudication."
* total[=].amount.value = 0
* total[=].amount.currency = #USD
* total[+].category = http://terminology.hl7.org/CodeSystem/adjudication#copay "CoPay"
  * text = "Patient Co-Payment"
* total[=].amount.value = 120
* total[=].amount.currency = #USD
* total[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudication#noncovered "Noncovered"
  * text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
* total[=].amount.value = 0
* total[=].amount.currency = #USD
* total[+].category = http://terminology.hl7.org/CodeSystem/adjudication#benefit "Benefit Amount"
  * text = "Amount payable under the coverage"
* total[=].amount.value = 1393.57
* total[=].amount.currency = #USD
* total[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudication#memberliability "Member liability"
  * text = "The amount of the member's liability."
* total[=].amount.value = 0
* total[=].amount.currency = #USD
```