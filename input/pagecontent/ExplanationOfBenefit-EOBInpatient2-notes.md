```
Instance: EOBInpatient2
InstanceOf: http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Inpatient-Institutional|2.1.0-snapshot1
Title: "EOB Inpatient Example 2"
Description: "EOB Inpatient Example 2"
Usage: #example
* meta.lastUpdated = "2020-04-28T15:39:36-04:00"
* identifier
  * type = C4BBIdentifierType#uc "Unique Claim ID"
    * text = "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber"
  * system = "https://www.upmchealthplan.com/fhir/EOBIdentifier"
  * value = "InpatientEOBExample1"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
  * text = "Institutional"
* subType = C4BBInstitutionalClaimSubType#inpatient
  * text = "Inpatient"
* use = #claim
* patient = Reference(Patient1)
* billablePeriod
  * start = "2017-05-23"
  * end = "2017-05-23"
* created = "2017-06-01T00:00:00-04:00"
* insurer = Reference(Payer2) "UPMC Health Plan"
* provider = Reference(ProviderOrganization3)
* payee
  * type = http://terminology.hl7.org/CodeSystem/payeetype#provider "Provider"
    * text = "Any benefit payable will be paid to the provider (Assignment of Benefit)."
  * party = Reference(ProviderOrganization4)
* outcome = #complete
* careTeam[0]
  * sequence = 1
  * provider = Reference(Practitioner2)
  * role = C4BBClaimCareTeamRole#attending "Attending"
    * text = "The attending physician"
* careTeam[+]
  * sequence = 2
  * provider = Reference(Practitioner2)
  * role = C4BBClaimCareTeamRole#referring "Referring"
    * text = "The referring physician"
* supportingInfo[0]
  * sequence = 2
  * category = C4BBSupportingInfoType#admissionperiod
  * timingPeriod.start = "2017-05-23"
* supportingInfo[+]
  * sequence = 1
  * category = C4BBSupportingInfoType#clmrecvddate
  * timingDate = "2017-06-01"
* diagnosis[0]
  * sequence = 1
  * diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#I21.4
  * type = http://terminology.hl7.org/CodeSystem/ex-diagnosistype#principal "Principal Diagnosis"
    * text = "The single medical diagnosis that is most relevant to the patient's chief complaint or need for treatment."
* diagnosis[+]
  * sequence = 2
  * diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#I25.118
  * type = C4BBClaimDiagnosisType#other "Other"
    * text = "Required when other conditions coexist or develop subsequently during the treatment"
* diagnosis[+]
  * sequence = 3
  * diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#E78.5
  * type = C4BBClaimDiagnosisType#other "Other"
    * text = "Required when other conditions coexist or develop subsequently during the treatment"
* diagnosis[+]
  * sequence = 4
  * diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#M19.90
  * type = C4BBClaimDiagnosisType#other "Other"
    * text = "Required when other conditions coexist or develop subsequently during the treatment"
* procedure[0]
  * sequence = 1
  * type = C4BBClaimProcedureType#principal "Principal"
    * text = "The Principal Procedure is based on the relation of the procedure to the Principal Diagnosis"
  * date = "2017-05-23"
  * procedureCodeableConcept = http://www.cms.gov/Medicare/Coding/ICD10#4A023N7
* procedure[+]
  * sequence = 2
  * type = C4BBClaimProcedureType#other "Other"
    * text = "Other procedures performed during the inpatient institutional admission"
  * date = "2017-05-23"
  * procedureCodeableConcept = http://www.cms.gov/Medicare/Coding/ICD10#B211YZZ
* procedure[+]
  * sequence = 3
  * type = C4BBClaimProcedureType#other "Other"
    * text = "Other procedures performed during the inpatient institutional admission"
  * date = "2017-05-23"
  * procedureCodeableConcept = http://www.cms.gov/Medicare/Coding/ICD10#B215YZZ
* insurance
  * focal = true
  * coverage = Reference(Coverage2)
* item[0]
  * sequence = 1
  * revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0301
  * productOrService = http://www.ama-assn.org/go/cpt#99231
  * servicedPeriod.start = "2017-05-23"
  * locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
    * text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+]
  * sequence = 2
  * revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0260
  * productOrService = http://www.ama-assn.org/go/cpt#99231
  * servicedPeriod.start = "2017-05-23"
  * locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
    * text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+]
  * sequence = 3
  * revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0305
  * productOrService = http://www.ama-assn.org/go/cpt#99231
  * servicedPeriod.start = "2017-05-23"
  * locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
    * text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+]
  * sequence = 4
  * revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0324
  * productOrService = http://www.ama-assn.org/go/cpt#99231
  * servicedPeriod.start = "2017-05-23"
  * locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
    * text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+]
  * sequence = 5
  * revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0259
  * productOrService = http://www.ama-assn.org/go/cpt#99231
  * servicedPeriod.start = "2017-05-23"
  * locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
    * text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+]
  * sequence = 6
  * revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0250
  * productOrService = http://www.ama-assn.org/go/cpt#99231
  * servicedPeriod.start = "2017-05-23"
  * locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
    * text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+]
  * sequence = 7
  * revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0710
  * productOrService = http://www.ama-assn.org/go/cpt#99231
  * servicedPeriod.start = "2017-05-23"
  * locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
    * text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+]
  * sequence = 8
  * revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0210
  * productOrService = http://www.ama-assn.org/go/cpt#99231
  * servicedPeriod.start = "2017-05-23"
  * locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
    * text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+]
  * sequence = 9
  * revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0272
  * productOrService = http://www.ama-assn.org/go/cpt#99231
  * servicedPeriod.start = "2017-05-23"
  * locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
    * text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+]
  * sequence = 10
  * revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0370
  * productOrService = http://www.ama-assn.org/go/cpt#99231
  * servicedPeriod.start = "2017-05-23"
  * locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
    * text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+]
  * sequence = 11
  * revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0730
  * productOrService = http://www.ama-assn.org/go/cpt#99231
  * servicedPeriod.start = "2017-05-23"
  * locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
    * text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+]
  * sequence = 12
  * revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0450
  * productOrService = http://www.ama-assn.org/go/cpt#99231
  * servicedPeriod.start = "2017-05-23"
  * locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
    * text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+]
  * sequence = 13
  * revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0481
  * productOrService = http://www.ama-assn.org/go/cpt#99231
  * servicedPeriod.start = "2017-05-23"
  * locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
    * text = "HOSPITAL - INPATIENT HOSPITAL"
* adjudication[0]
  * category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
  * reason = C4BBPayerAdjudicationStatus#outofnetwork
* adjudication[+]
  * category = C4BBAdjudicationDiscriminator#billingnetworkstatus
  * reason = C4BBPayerAdjudicationStatus#innetwork "In Network"
    * text = "Indicates the provider was in network for the service"
* adjudication[+]
  * category = C4BBAdjudication#noncovered "Noncovered"
    * text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
  * amount
    * value = 0
    * currency = #USD
* total[0]
  * category = http://terminology.hl7.org/CodeSystem/adjudication#submitted "Submitted Amount"
    * text = "The total submitted amount for the claim or group or line item."
  * amount
    * value = 7147.2
    * currency = #USD
* total[+]
  * category = http://terminology.hl7.org/CodeSystem/adjudication#eligible "Eligible Amount"
    * text = "Amount of the change which is considered for adjudication."
  * amount
    * value = 1542.01
    * currency = #USD
* total[+]
  * category = http://terminology.hl7.org/CodeSystem/adjudication#deductible "Deductible"
    * text = "Amount deducted from the eligible amount prior to adjudication."
  * amount
    * value = 0
    * currency = #USD
* total[+]
  * category = http://terminology.hl7.org/CodeSystem/adjudication#copay "CoPay"
    * text = "Patient Co-Payment"
  * amount
    * value = 120
    * currency = #USD
* total[+]
  * category = C4BBAdjudication#noncovered "Noncovered"
    * text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
  * amount
    * value = 0
    * currency = #USD
* total[+]
  * category = http://terminology.hl7.org/CodeSystem/adjudication#benefit "Benefit Amount"
    * text = "Amount payable under the coverage"
  * amount
    * value = 1393.57
    * currency = #USD
* total[+]
  * category = C4BBAdjudication#memberliability "Member liability"
    * text = "The amount of the member's liability."
  * amount
    * value = 0
    * currency = #USD
```