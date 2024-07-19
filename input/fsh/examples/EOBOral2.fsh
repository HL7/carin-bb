Instance: EOBOral2
InstanceOf: C4BBExplanationOfBenefitOral
Description: "EOB Oral Example 2"
Usage: #example
* meta.profile[+] = Canonical(C4BBExplanationOfBenefitOral|2.1.0-snapshot)
* meta.lastUpdated = "2021-10-28T10:23:00-05:00"
* language = #en-US
* status = #active
* identifier[uniqueclaimid].type = $C4BBIdentifierTypeCS#uc
* identifier[uniqueclaimid].value = "210300012"
* identifier[uniqueclaimid].system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* type = $HL7ClaimTypeCS#oral
* type.text = "Oral"
* use = #claim
* created = "2021-10-28T10:23:00-05:00"
* insurer = Reference(DentalPayer1)
* insurer.display = "XXX Health Plan"
* patient = Reference(Patient2)
* billablePeriod.start = "2021-10-01"
* billablePeriod.end = "2021-10-31"
* provider = Reference(PractitionerDentalProvider1)
* provider.display = "XXX Dental Plan"
* outcome = #complete
* insurance[+].focal = true
* insurance[=].coverage[0] = Reference(CoverageDental1)
* adjudication[billingnetworkstatus].category = C4BBAdjudicationDiscriminator#billingnetworkstatus
* adjudication[billingnetworkstatus].reason = C4BBPayerAdjudicationStatus#innetwork
* adjudication[renderingnetworkstatus].category = C4BBAdjudicationDiscriminator#renderingnetworkstatus
* adjudication[renderingnetworkstatus].reason = C4BBPayerAdjudicationStatus#innetwork
* adjudication[benefitpaymentstatus].category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
* adjudication[benefitpaymentstatus].reason = C4BBPayerAdjudicationStatus#innetwork

* total[adjudicationamounttype][+].category = $HL7AdjudicationCS#submitted
* total[adjudicationamounttype][=].category.text = "Submitted Amount"
* total[adjudicationamounttype][=].amount.value = 150.00
* total[adjudicationamounttype][=].amount.currency = #USD
* total[adjudicationamounttype][+].category = $HL7AdjudicationCS#benefit
* total[adjudicationamounttype][=].category.text = "Benefit Amount"
* total[adjudicationamounttype][=].amount.value = 110.00
* total[adjudicationamounttype][=].amount.currency = #USD
* total[adjudicationamounttype][+].category = C4BBAdjudication#discount
* total[adjudicationamounttype][=].category.text = "Discount Amount"
* total[adjudicationamounttype][=].amount.value = 40.00
* total[adjudicationamounttype][=].amount.currency = #USD
* total[adjudicationamounttype][+].category = C4BBAdjudication#paidtoprovider
* total[adjudicationamounttype][=].category.text = "Amount Paid to Provider"
* total[adjudicationamounttype][=].amount.value = 100.00
* total[adjudicationamounttype][=].amount.currency = #USD

* item[0].sequence = 1

* item[0].informationSequence[+] = 6
* item[0].informationSequence[+] = 7
* item[0].informationSequence[+] = 9
* item[0].informationSequence[+] = 10
* item[0].informationSequence[+] = 11

* item[0].productOrService = $ADADentalProcedureCode#D0220 "Intraoral - periapical first radiographic image"


* item[0].bodySite = $ADAAreaOralCavitySystem#10 "Upper right quadrant"
* item[0].subSite[+] = C4BBSurfaceCodes#O
* item[0].subSite[+] = C4BBSurfaceCodes#I
* item[0].servicedDate = "2021-10-28"

* item[0].locationCodeableConcept = $CMSPlaceofServiceCodes#11 "Office"
* item[0].adjudication[adjudicationamounttype][+].category = $HL7AdjudicationCS#submitted
* item[0].adjudication[adjudicationamounttype][=].amount.value = 150.00
* item[0].adjudication[adjudicationamounttype][=].amount.currency = #USD

* item[0].adjudication[benefitpaymentstatus][0].category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
* item[0].adjudication[benefitpaymentstatus][0].reason = C4BBPayerAdjudicationStatus#innetwork


* supportingInfo[clmrecvddate].category = C4BBSupportingInfoType#clmrecvddate
* supportingInfo[clmrecvddate].timingDate = 2021-03-18
* supportingInfo[clmrecvddate].sequence = 3
* supportingInfo[servicefacility].category = C4BBSupportingInfoType#servicefacility
* supportingInfo[servicefacility].sequence = 4
* supportingInfo[servicefacility].valueReference = Reference(ProviderOrganization1)


* supportingInfo[patientaccountnumber].category  = C4BBSupportingInfoType#patientaccountnumber
* supportingInfo[patientaccountnumber].valueString = "PATIENTACCTNO3"
* supportingInfo[patientaccountnumber].sequence = 6

* supportingInfo[patientaccountnumber].category  = C4BBSupportingInfoType#patientaccountnumber
* supportingInfo[patientaccountnumber].valueString = "PATIENTACCTNO3"
* supportingInfo[patientaccountnumber].sequence = 7

* supportingInfo[patientaccountnumber].category  = C4BBSupportingInfoType#patientaccountnumber
* supportingInfo[patientaccountnumber].valueString = "PATIENTACCTNO3"
* supportingInfo[patientaccountnumber].sequence = 8

* supportingInfo[additionalbodysite][+].category = C4BBSupportingInfoType#additionalbodysite
* supportingInfo[additionalbodysite][=].code = $ADAUniversalToothDesignationSystem#1
* supportingInfo[additionalbodysite][=].sequence = 9


* supportingInfo[additionalbodysite][+].category = C4BBSupportingInfoType#additionalbodysite
* supportingInfo[additionalbodysite][=].code = $ADAUniversalToothDesignationSystem#2
* supportingInfo[additionalbodysite][=].sequence = 10
