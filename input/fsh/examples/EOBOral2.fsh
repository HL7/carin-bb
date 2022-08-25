Instance: EOBOral2
InstanceOf: C4BBExplanationOfBenefitOral
Description: "EOB Oral Example 2"
Usage: #example
* id = "EOBOral2"
//* id = "1234-234-1243-12345678901-20190101-20191031"
//* meta.profile = Canonical(C4BBExplanationOfBenefitOral)
* meta.lastUpdated = "2021-10-28T10:23:00-05:00"
* language = #en-US
* status = #active

* identifier.type = $C4BBIdentifierTypeCS#uc
* identifier.value = "210300012"
* identifier.system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* type = $HL7ClaimTypeCS#oral
* type.text = "Oral"
* use = #claim
* created = "2021-10-28T10:23:00-05:00"
* insurer = Reference(OrganizationDentalPayer1)
* insurer.display = "XXX Health Plan"
* patient = Reference(Patient1)
* billablePeriod.start = "2021-10-01"
* billablePeriod.end = "2021-10-31"
* provider = Reference(PractitionerDentalProvider1)
* provider.display = "XXX Dental Plan"
* outcome = #complete
* insurance[+].focal = true
* insurance[=].coverage[0] = Reference(CoverageDental1)
* adjudication[billingnetworkcontractingstatus].category = C4BBAdjudicationDiscriminator#billingnetworkcontractingstatus
* adjudication[billingnetworkcontractingstatus].reason = C4BBPayerAdjudicationStatus#contracted
* adjudication[renderingnetworkcontractingstatus].category = C4BBAdjudicationDiscriminator#renderingnetworkcontractingstatus
* adjudication[renderingnetworkcontractingstatus].reason = C4BBPayerAdjudicationStatus#contracted

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

* item[0].productOrService = ADADentalProcedureCode#D0220 "Intraoral - periapical first radiographic image"


* item[0].bodySite = ADAAreaOfOralCavitySystem#10 "Upper right quadrant"
* item[0].subSite[+] = C4BBSurfaceCodes#O
* item[0].subSite[+] = C4BBSurfaceCodes#I
* item[0].servicedDate = "2021-10-28"

* item[0].locationCodeableConcept = $CMSPlaceofServiceCodes#11 "Office"
* item[0].adjudication[adjudicationamounttype][+].category = $HL7AdjudicationCS#submitted
* item[0].adjudication[adjudicationamounttype][=].amount.value = 150.00
* item[0].adjudication[adjudicationamounttype][=].amount.currency = #USD

* item[0].adjudication[benefitpaymentstatus][0].category = C4BBPayerAdjudicationStatus#innetwork


* supportingInfo[clmrecvddate].category = C4BBSupportingInfoType#clmrecvddate
* supportingInfo[clmrecvddate].timingDate = 2021-03-18
* supportingInfo[clmrecvddate].sequence = 3
* supportingInfo[servicefacility].category = C4BBSupportingInfoType#servicefacility
* supportingInfo[servicefacility].sequence = 4
* supportingInfo[servicefacility].valueReference = Reference(OrganizationProvider1)


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
* supportingInfo[additionalbodysite][=].code = ADAUniversalNumberingSystem#1
* supportingInfo[additionalbodysite][=].sequence = 9


* supportingInfo[additionalbodysite][+].category = C4BBSupportingInfoType#additionalbodysite
* supportingInfo[additionalbodysite][=].code = ADAUniversalNumberingSystem#2
* supportingInfo[additionalbodysite][=].sequence = 10

* supportingInfo[benefitpaymentstatus].category = C4BBSupportingInfoType#benefitpaymentstatus
* supportingInfo[benefitpaymentstatus].code = C4BBPayerAdjudicationStatus#innetwork
* supportingInfo[benefitpaymentstatus].sequence = 11