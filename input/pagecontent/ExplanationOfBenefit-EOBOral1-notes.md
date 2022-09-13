```
Instance: EOBOral1
InstanceOf: ExplanationOfBenefit
Title: "EOB Oral Example 1"
Description: "EOB Oral Example 1"
Usage: #example
* meta.lastUpdated = "2021-03-18T10:23:00-05:00"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Oral|1.2.0"
* language = #en-US
* identifier.type = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBIdentifierType#uc
* identifier.system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* identifier.value = "210300002"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#oral
  * text = "Oral"
* use = #claim
* patient = Reference(Patient2)
* billablePeriod.start = "2021-03-01"
* billablePeriod.end = "2021-03-31"
* created = "2021-03-18T10:23:00-05:00"
* insurer = Reference(DentalPayer1) "XXX Health Plan"
* provider = Reference(PractitionerDentalProvider1) "XXX Dental Plan"
* outcome = #complete
* supportingInfo[0].sequence = 3
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#clmrecvddate
* supportingInfo[=].timingDate = "2021-03-18"
* supportingInfo[+].sequence = 4
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#servicefacility
* supportingInfo[=].valueReference = Reference(ProviderOrganization1)
* supportingInfo[+].sequence = 5
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#patientaccountnumber
* supportingInfo[=].valueString = "PATIENTACCTNO3"
* diagnosis.sequence = 1
* diagnosis.diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#Z01.21 "Encounter for dental examination and cleaning with abnormal findings"
* diagnosis.type = http://terminology.hl7.org/CodeSystem/ex-diagnosistype#principal
* insurance.focal = true
* insurance.coverage = Reference(CoverageDental1)
* item[0].sequence = 1
* item[=].productOrService = http://ada.org/cdt#D1110 "Prophylaxis - Adult"
* item[=].servicedDate = "2021-03-18"
* item[=].locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#11 "Office"
* item[=].adjudication[0].category = http://terminology.hl7.org/CodeSystem/adjudication#submitted
* item[=].adjudication[=].amount.value = 190
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBPayerAdjudicationStatus#innetwork
* item[+].sequence = 2
* item[=].productOrService = http://ada.org/cdt#D0120 "Periodic oral evaluation"
* item[=].servicedDate = "2021-03-18"
* item[=].locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#11 "Office"
* item[=].adjudication[0].category = http://terminology.hl7.org/CodeSystem/adjudication#submitted
* item[=].adjudication[=].amount.value = 220
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBPayerAdjudicationStatus#innetwork
* adjudication[0].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudicationDiscriminator#renderingnetworkcontractingstatus
* adjudication[=].reason = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBPayerAdjudicationStatus#contracted
* adjudication[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudicationDiscriminator#benefitpaymentstatus
* adjudication[=].reason = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBPayerAdjudicationStatus#innetwork
* adjudication[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudicationDiscriminator#billingnetworkcontractingstatus
* adjudication[=].reason = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBPayerAdjudicationStatus#contracted
* total[0].category = http://terminology.hl7.org/CodeSystem/adjudication#submitted
* total[=].category.text = "Submitted Amount"
* total[=].amount.value = 410
* total[=].amount.currency = #USD
* total[+].category = http://terminology.hl7.org/CodeSystem/adjudication#benefit
  * text = "Benefit Amount"
* total[=].amount.value = 350
* total[=].amount.currency = #USD
* total[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudication#discount
  * text = "Discount Amount"
* total[=].amount.value = 60
* total[=].amount.currency = #USD
* total[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudication#paidtoprovider
  * text = "Amount Paid to Provider"
* total[=].amount.value = 350
* total[=].amount.currency = #USD
```