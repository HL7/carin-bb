```
Instance: EOBInpatient1
InstanceOf: ExplanationOfBenefit
Title: "EOB Inpatient Example1"
Description: "EOB Inpatient Example 1"
Usage: #example
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Inpatient-Institutional|2.0.0"
* language = #en-US
* identifier.type = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBIdentifierType#uc
* identifier.system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* identifier.value = "AW123412341234123412341234123412"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
  * text = "Institutional"
* subType = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBInstitutionalClaimSubType#inpatient
  * text = "Inpatient"
* use = #claim
* patient = Reference(Patient2)
* billablePeriod.start = "2019-01-01"
* billablePeriod.end = "2019-10-31"
* created = "2019-11-02T00:00:00+00:00"
* insurer = Reference(Payer1) "XXX Health Plan"
* provider = Reference(ProviderOrganization1) "XXX Health Plan"
* outcome = #partial
* supportingInfo[0].sequence = 2
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#admissionperiod
* supportingInfo[=].timingPeriod.start = "2011-05-23"
* supportingInfo[=].timingPeriod.end = "2011-05-25"
* supportingInfo[+].sequence = 3
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#clmrecvddate
* supportingInfo[=].timingDate = "2011-05-30"
* supportingInfo[+].sequence = 4
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#typeofbill
* supportingInfo[=].code = https://www.nubc.org/CodeSystem/TypeOfBill#Dummy
* supportingInfo[+].sequence = 5
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#pointoforigin
* supportingInfo[=].code = https://www.nubc.org/CodeSystem/PointOfOrigin#Dummy
* supportingInfo[+].sequence = 6
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#admtype
* supportingInfo[=].code = https://www.nubc.org/CodeSystem/PriorityTypeOfAdmitOrVisit#Dummy
* supportingInfo[+].sequence = 7
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#discharge-status
* supportingInfo[=].code = https://www.nubc.org/CodeSystem/PatDischargeStatus#11
* supportingInfo[+].sequence = 8
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#medicalrecordnumber
* supportingInfo[=].valueString = "1234-234-1243-12345678901m"
* supportingInfo[+].sequence = 9
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#patientaccountnumber
* supportingInfo[=].valueString = "1234-234-1243-12345678901a"
* diagnosis.sequence = 1
* diagnosis.diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#S06.0X1A
* diagnosis.type = http://terminology.hl7.org/CodeSystem/ex-diagnosistype#principal
* insurance.focal = true
* insurance.coverage = Reference(Coverage1)
* item.sequence = 1
* item.revenue = https://www.nubc.org/CodeSystem/RevenueCodes#Dummy
* item.productOrService = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-applicable "Not Applicable"
* item.servicedDate = "2019-11-02"
* adjudication[0].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudicationDiscriminator#benefitpaymentstatus
* adjudication[=].reason = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBPayerAdjudicationStatus#innetwork
* adjudication[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudicationDiscriminator#billingnetworkstatus
* adjudication[=].reason = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBPayerAdjudicationStatus#innetwork
* adjudication[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudication#paidtoprovider
  * text = "Payment Amount"
* adjudication[=].amount.value = 620
* adjudication[=].amount.currency = #USD
* adjudication[+].category = http://terminology.hl7.org/CodeSystem/adjudication#submitted
  * text = "Submitted Amount"
* adjudication[=].amount.value = 2650
* adjudication[=].amount.currency = #USD
* adjudication[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudication#paidbypatient
  * text = "Patient Pay Amount"
* adjudication[=].amount.value = 0
* adjudication[=].amount.currency = #USD
* total[0].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudication#paidtoprovider
* total[=].category.text = "Payment Amount"
* total[=].amount.value = 620
* total[=].amount.currency = #USD
* total[+].category = http://terminology.hl7.org/CodeSystem/adjudication#submitted
  * text = "Submitted Amount"
* total[=].amount.value = 2650
* total[=].amount.currency = #USD
* total[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudication#paidbypatient
  * text = "Patient Pay Amount"
* total[=].amount.value = 0
* total[=].amount.currency = #USD
```