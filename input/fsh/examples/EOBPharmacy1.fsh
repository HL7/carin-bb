Instance: EOBPharmacy1
InstanceOf: C4BBExplanationOfBenefitPharmacy
Title: "EOBPharmacy1"
Description: "EOB PHarmacy Example1"
Usage: #example
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Pharmacy|1.2.0"
* language = #en-US
* identifier.type = $C4BBIdentifierType#uc
* identifier.system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* identifier.value = "AW123412341234123412341234123412"
* status = #active
* type = $claim-type#pharmacy
* type.text = "Pharmacy"
* use = #claim
* patient = Reference(Patient1)
* billablePeriod.start = "2019-10-30"
* billablePeriod.end = "2019-10-31"
* created = "2019-07-02T00:00:00+00:00"
* insurer = Reference(Payer1) "XXX Health Plan"
* provider = Reference(OrganizationProvider1) "XXX Health Plan"
* outcome = #partial
* supportingInfo[0].sequence = 8
* supportingInfo[=].category = $C4BBSupportingInfoType#dayssupply
* supportingInfo[=].valueQuantity.value = 30
* supportingInfo[+].sequence = 6
* supportingInfo[=].category = $C4BBSupportingInfoType#dawcode
* supportingInfo[=].code = $NCPDPDispensedAsWrittenOrProductSelectionCode#7
* supportingInfo[+].sequence = 4
* supportingInfo[=].category = $C4BBSupportingInfoType#refillnum
* supportingInfo[=].valueQuantity.value = 0
* supportingInfo[+].sequence = 5
* supportingInfo[=].category = $C4BBSupportingInfoType#refillsauthorized
* supportingInfo[=].valueQuantity.value = 0
* supportingInfo[+].sequence = 10
* supportingInfo[=].category = $C4BBSupportingInfoType#benefitpaymentstatus
* supportingInfo[=].code = $C4BBPayerAdjudicationStatus#innetwork
* supportingInfo[+].sequence = 2
* supportingInfo[=].category = $C4BBSupportingInfoType#brandgenericindicator
* supportingInfo[=].code = $NCPDPBrandGenericIndicator#2
* supportingInfo[+].sequence = 3
* supportingInfo[=].category = $C4BBSupportingInfoType#rxorigincode
* supportingInfo[=].code = $NCPDPPrescriptionOriginCode#1
* supportingInfo[+].sequence = 7
* supportingInfo[=].category = $C4BBSupportingInfoType#clmrecvddate
* supportingInfo[=].timingDate = "2019-10-31"
* supportingInfo[+].sequence = 9
* supportingInfo[=].category = $C4BBSupportingInfoType#compoundcode
* supportingInfo[=].code = $NCPDPCompoundCode#Dummy
* insurance.focal = true
* insurance.coverage = Reference(Coverage1)
* item.sequence = 1
* item.productOrService = $ndc#0777-3105-02 "Prozac, 100 CAPSULE in 1 BOTTLE (0777-3105-02) (package)"
* item.servicedDate = "2019-07-02"
* item.adjudication[0].category = $adjudication#submitted
* item.adjudication[=].amount.value = 1000
* item.adjudication[=].amount.currency = #USD
* item.adjudication[+].category = $adjudication#benefit
* item.adjudication[=].amount.value = 20
* item.adjudication[=].amount.currency = #USD
* item.adjudication[+].category = $C4BBAdjudication#discount
* item.adjudication[=].amount.value = 900
* item.adjudication[=].amount.currency = #USD
* item.adjudication[+].category = $C4BBAdjudication#memberliability
* item.adjudication[=].amount.value = 80
* item.adjudication[=].amount.currency = #USD
* item.adjudication[+].category = $C4BBAdjudication#paidtoprovider
* item.adjudication[=].amount.value = 20
* item.adjudication[=].amount.currency = #USD
* adjudication.category = $C4BBAdjudicationDiscriminator#billingnetworkcontractingstatus
* adjudication.reason = $C4BBPayerAdjudicationStatus#contracted
* total[0].category = $C4BBAdjudication#paidtoprovider
* total[=].category.text = "Payment Amount"
* total[=].amount.value = 620
* total[=].amount.currency = #USD
* total[+].category = $adjudication#submitted
* total[=].category.text = "Submitted Amount"
* total[=].amount.value = 2650
* total[=].amount.currency = #USD
* total[+].category = $C4BBAdjudication#paidbypatient
* total[=].category.text = "Patient Pay Amount"
* total[=].amount.value = 0
* total[=].amount.currency = #USD