```
Instance: EOBOutpatient1
InstanceOf: ExplanationOfBenefit
Title: "EOB Outpatient Institutional - Example 1"
Description: "EOB Outpatient Institutional - Example 1"
Usage: #example
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Outpatient-Institutional|1.2.0"
* language = #en-US
* identifier.type = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBIdentifierType#uc
* identifier.system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* identifier.value = "AW123412341234123412341234123412"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
  * text = "Institutional"
* subType = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBInstitutionalClaimSubType#outpatient
  * text = "Outpatient"
* use = #claim
* patient = Reference(Patient2)
* billablePeriod.start = "2019-01-01"
* billablePeriod.end = "2019-10-31"
* created = "2019-11-02T00:00:00+00:00"
* insurer = Reference(Payer1) "Organization Payer 1"
* provider = Reference(ProviderOrganization1) "Orange Medical Group"
* outcome = #partial
* careTeam.sequence = 1
* careTeam.provider = Reference(ProviderOrganization1)
* careTeam.role = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBClaimCareTeamRole#rendering "Rendering provider"
* careTeam.qualification = http://nucc.org/provider-taxonomy#364SX0200X "Oncology Clinical Nurse Specialist"
* supportingInfo[0].sequence = 2
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#clmrecvddate
* supportingInfo[=].timingDate = "2019-11-30"
* supportingInfo[+].sequence = 3
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#typeofbill
* supportingInfo[=].code = https://www.nubc.org/CodeSystem/TypeOfBill#Dummy
* supportingInfo[+].sequence = 4
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#pointoforigin
* supportingInfo[=].code = https://www.nubc.org/CodeSystem/PointOfOrigin#Dummy
* supportingInfo[+].sequence = 5
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#admtype
* supportingInfo[=].code = https://www.nubc.org/CodeSystem/PriorityTypeOfAdmitOrVisit#Dummy
* supportingInfo[+].sequence = 6
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#discharge-status
* supportingInfo[=].code = https://www.nubc.org/CodeSystem/PatDischargeStatus#Dummy
* supportingInfo[+].sequence = 7
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#medicalrecordnumber
* supportingInfo[=].valueString = "1234-234-1243-12345678901m"
* supportingInfo[+].sequence = 8
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#patientaccountnumber
* supportingInfo[=].valueString = "1234-234-1243-12345678901a"
* diagnosis.sequence = 1
* diagnosis.diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#S06.0X1A
* diagnosis.type = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBClaimDiagnosisType#patientreasonforvisit
* insurance.focal = true
* insurance.coverage = Reference(Coverage1)
* item.sequence = 1
* item.revenue = https://www.nubc.org/CodeSystem/RevenueCodes#Dummy
* item.productOrService = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-applicable "Not Applicable"
* item.servicedDate = "2019-11-02"
* adjudication[0].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudicationDiscriminator#benefitpaymentstatus
* adjudication[=].reason = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBPayerAdjudicationStatus#innetwork
* adjudication[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudicationDiscriminator#billingnetworkcontractingstatus
* adjudication[=].reason = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBPayerAdjudicationStatus#contracted
* adjudication[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudication#paidtoprovider
  * text = "Payment Amount"
* adjudication[=].amount.value = 620
* adjudication[=].amount.currency = #USD
* adjudication[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudication#paidbypatient
  * text = "Patient Pay Amount"
* adjudication[=].amount.value = 0
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