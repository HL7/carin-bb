```
Instance: EOBOral2
InstanceOf: ExplanationOfBenefit
Title: "EOB Oral Example 2"
Description: "EOB Oral Example 2"
Usage: #example
* meta.lastUpdated = "2021-10-28T10:23:00-05:00"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Oral|2.1.0-snapshot1"
* language = #en-US
* identifier.type = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBIdentifierType#uc
* identifier.system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* identifier.value = "210300012"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#oral
  * text = "Oral"
* use = #claim
* patient = Reference(Patient2)
* billablePeriod.start = "2021-10-01"
* billablePeriod.end = "2021-10-31"
* created = "2021-10-28T10:23:00-05:00"
* insurer = Reference(DentalPayer1) "XXX Health Plan"
* provider = Reference(PractitionerDentalProvider1) "XXX Dental Plan"
* outcome = #complete
* supportingInfo[0].sequence = 3
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#clmrecvddate
* supportingInfo[=].timingDate = "2021-03-18"
* supportingInfo[+].sequence = 4
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#servicefacility
* supportingInfo[=].valueReference = Reference(ProviderOrganization1)
* supportingInfo[+].sequence = 8
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#patientaccountnumber
* supportingInfo[=].valueString = "PATIENTACCTNO3"
* supportingInfo[+].sequence = 9
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#additionalbodysite
* supportingInfo[=].code = http://terminology.hl7.org/CodeSystem/ADAUniversalToothDesignationSystem#1
* supportingInfo[+].sequence = 10
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#additionalbodysite
* supportingInfo[=].code = http://terminology.hl7.org/CodeSystem/ADAUniversalToothDesignationSystem#2
* insurance.focal = true
* insurance.coverage = Reference(CoverageDental1)
* item.sequence = 1
* item.informationSequence[0] = 6
* item.informationSequence[+] = 7
* item.informationSequence[+] = 9
* item.informationSequence[+] = 10
* item.informationSequence[+] = 11
* item.productOrService = http://ada.org/cdt#D0220 "Intraoral - periapical first radiographic image"
* item.servicedDate = "2021-10-28"
* item.locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#11 "Office"
* item.bodySite = http://terminology.hl7.org/CodeSystem/ADAAreaOralCavitySystem#10 "Upper right quadrant"
* item.subSite[0] = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSurfaceCodes#O
* item.subSite[+] = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSurfaceCodes#I
* item.adjudication[0].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudicationDiscriminator#benefitpaymentstatus
* item.adjudication[=].reason = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBPayerAdjudicationStatus#innetwork
* item.adjudication[+].category = http://terminology.hl7.org/CodeSystem/adjudication#submitted
* item.adjudication[=].amount.value = 150
* item.adjudication[=].amount.currency = #USD
* adjudication[0].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudicationDiscriminator#renderingnetworkstatus
* adjudication[=].reason = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBPayerAdjudicationStatus#innetwork
* adjudication[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudicationDiscriminator#benefitpaymentstatus
* adjudication[=].reason = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBPayerAdjudicationStatus#innetwork
* adjudication[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudicationDiscriminator#billingnetworkstatus
* adjudication[=].reason = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBPayerAdjudicationStatus#innetwork
* total[0].category = http://terminology.hl7.org/CodeSystem/adjudication#submitted
* total[=].category.text = "Submitted Amount"
* total[=].amount.value = 150
* total[=].amount.currency = #USD
* total[+].category = http://terminology.hl7.org/CodeSystem/adjudication#benefit
  * text = "Benefit Amount"
* total[=].amount.value = 110
* total[=].amount.currency = #USD
* total[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudication#discount
  * text = "Discount Amount"
* total[=].amount.value = 40
* total[=].amount.currency = #USD
* total[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudication#paidtoprovider
  * text = "Amount Paid to Provider"
* total[=].amount.value = 100
* total[=].amount.currency = #USD
```