```
Instance: EOBPharmacy1
InstanceOf: ExplanationOfBenefit
Title: "EOB Pharmacy Example1"
Description: "EOB Pharmacy Example1"
Usage: #example
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Pharmacy|2.1.0-snapshot1"
* language = #en-US
* identifier.type = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBIdentifierType#uc
* identifier.system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* identifier.value = "AW123412341234123412341234123412"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#pharmacy
  * text = "Pharmacy"
* use = #claim
* patient = Reference(Patient2)
* billablePeriod.start = "2019-10-30"
* billablePeriod.end = "2019-10-31"
* created = "2019-07-02T00:00:00+00:00"
* insurer = Reference(Payer1) "XXX Health Plan"
* provider = Reference(ProviderOrganization1) "XXX Health Plan"
* outcome = #partial
* supportingInfo[0].sequence = 8
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#dayssupply
* supportingInfo[=].valueQuantity.value = 30
* supportingInfo[+].sequence = 6
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#dawcode
* supportingInfo[=].code = http://terminology.hl7.org/CodeSystem/NCPDPDispensedAsWrittenOrProductSelectionCode#7
* supportingInfo[+].sequence = 4
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#refillnum
* supportingInfo[=].valueQuantity.value = 0
* supportingInfo[+].sequence = 5
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#refillsauthorized
* supportingInfo[=].valueQuantity.value = 0
* supportingInfo[+].sequence = 2
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#brandgenericindicator
* supportingInfo[=].code = http://terminology.hl7.org/CodeSystem/NCPDPBrandGenericIndicator#2
* supportingInfo[+].sequence = 3
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#rxorigincode
* supportingInfo[=].code = http://terminology.hl7.org/CodeSystem/NCPDPPrescriptionOriginCode#1
* supportingInfo[+].sequence = 7
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#clmrecvddate
* supportingInfo[=].timingDate = "2019-10-31"
* supportingInfo[+].sequence = 9
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#compoundcode
* supportingInfo[=].code = http://terminology.hl7.org/CodeSystem/NCPDPCompoundCode#Dummy
* insurance.focal = true
* insurance.coverage = Reference(Coverage1)
* item.sequence = 1
* item.productOrService = http://hl7.org/fhir/sid/ndc#0777-3105-02 "Prozac, 100 CAPSULE in 1 BOTTLE (0777-3105-02) (package)"
* item.servicedDate = "2019-07-02"
* item.adjudication[0].category = http://terminology.hl7.org/CodeSystem/adjudication#submitted
* item.adjudication[=].amount.value = 1000
* item.adjudication[=].amount.currency = #USD
* item.adjudication[+].category = http://terminology.hl7.org/CodeSystem/adjudication#benefit
* item.adjudication[=].amount.value = 20
* item.adjudication[=].amount.currency = #USD
* item.adjudication[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudication#discount
* item.adjudication[=].amount.value = 900
* item.adjudication[=].amount.currency = #USD
* item.adjudication[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudication#memberliability
* item.adjudication[=].amount.value = 80
* item.adjudication[=].amount.currency = #USD
* item.adjudication[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudication#paidtoprovider
* item.adjudication[=].amount.value = 20
* item.adjudication[=].amount.currency = #USD
* adjudication[0].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudicationDiscriminator#benefitpaymentstatus
* adjudication[=].reason = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBPayerAdjudicationStatus#innetwork
* adjudication[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudicationDiscriminator#billingnetworkstatus
* adjudication[=].reason = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBPayerAdjudicationStatus#innetwork
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