Instance: EOBOral2
InstanceOf: ExplanationOfBenefit
Title: "EOBOral2"
Description: "EOB Oral Example 2"
Usage: #example
* meta.lastUpdated = "2021-10-28T10:23:00-05:00"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Oral|1.2.0"
* language = #en-US
* identifier.type = $C4BBIdentifierType#uc
* identifier.system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* identifier.value = "210300012"
* status = #active
* type = $claim-type#oral
* type.text = "Oral"
* use = #claim
* patient = Reference(Patient1)
* billablePeriod.start = "2021-10-01"
* billablePeriod.end = "2021-10-31"
* created = "2021-10-28T10:23:00-05:00"
* insurer = Reference(OrganizationDentalPayer1) "XXX Health Plan"
* provider = Reference(PractitionerDentalProvider1) "XXX Dental Plan"
* outcome = #complete
* supportingInfo[0].sequence = 11
* supportingInfo[=].category = $C4BBSupportingInfoType#benefitpaymentstatus
* supportingInfo[=].code = $C4BBPayerAdjudicationStatus#innetwork
* supportingInfo[+].sequence = 3
* supportingInfo[=].category = $C4BBSupportingInfoType#clmrecvddate
* supportingInfo[=].timingDate = "2021-03-18"
* supportingInfo[+].sequence = 4
* supportingInfo[=].category = $C4BBSupportingInfoType#servicefacility
* supportingInfo[=].valueReference = Reference(OrganizationProvider1)
* supportingInfo[+].sequence = 8
* supportingInfo[=].category = $C4BBSupportingInfoType#patientaccountnumber
* supportingInfo[=].valueString = "PATIENTACCTNO3"
* supportingInfo[+].sequence = 9
* supportingInfo[=].category = $C4BBSupportingInfoType#additionalbodysite
* supportingInfo[=].code = $ADAUniversalToothDesignationSystem#1
* supportingInfo[+].sequence = 10
* supportingInfo[=].category = $C4BBSupportingInfoType#additionalbodysite
* supportingInfo[=].code = $ADAUniversalToothDesignationSystem#2
* insurance.focal = true
* insurance.coverage = Reference(CoverageDental1)
* item.sequence = 1
* item.informationSequence[0] = 6
* item.informationSequence[+] = 7
* item.informationSequence[+] = 9
* item.informationSequence[+] = 10
* item.informationSequence[+] = 11
* item.productOrService = $cdt#D0220 "Intraoral - periapical first radiographic image"
* item.servicedDate = "2021-10-28"
* item.locationCodeableConcept = $Place_of_Service_Code_Set#11 "Office"
* item.bodySite = $ADAAreaOralCavitySystem#10 "Upper right quadrant"
* item.subSite[0] = $C4BBSurfaceCodes#O
* item.subSite[+] = $C4BBSurfaceCodes#I
* item.adjudication[0].category = $adjudication#submitted
* item.adjudication[=].amount.value = 150
* item.adjudication[=].amount.currency = #USD
* item.adjudication[+].category = $C4BBPayerAdjudicationStatus#innetwork
* adjudication[0].category = $C4BBAdjudicationDiscriminator#renderingnetworkcontractingstatus
* adjudication[=].reason = $C4BBPayerAdjudicationStatus#contracted
* adjudication[+].category = $C4BBAdjudicationDiscriminator#billingnetworkcontractingstatus
* adjudication[=].reason = $C4BBPayerAdjudicationStatus#contracted
* total[0].category = $adjudication#submitted
* total[=].category.text = "Submitted Amount"
* total[=].amount.value = 150
* total[=].amount.currency = #USD
* total[+].category = $adjudication#benefit
* total[=].category.text = "Benefit Amount"
* total[=].amount.value = 110
* total[=].amount.currency = #USD
* total[+].category = $C4BBAdjudication#discount
* total[=].category.text = "Discount Amount"
* total[=].amount.value = 40
* total[=].amount.currency = #USD
* total[+].category = $C4BBAdjudication#paidtoprovider
* total[=].category.text = "Amount Paid to Provider"
* total[=].amount.value = 100
* total[=].amount.currency = #USD