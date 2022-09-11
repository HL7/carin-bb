Instance: EOBOral1
InstanceOf: C4BBExplanationOfBenefitOral
Description: "EOB Oral Example 1"
Usage: #example
//* id = "1234-234-1243-12345678901-20190101-20191031"
* meta.profile[+] = Canonical(C4BBExplanationOfBenefitOral|2.0.0)
* meta.lastUpdated = "2021-03-18T10:23:00-05:00"
* language = #en-US
* status = #active
* identifier.type = $C4BBIdentifierTypeCS#uc
* identifier.value = "210300002"
* identifier.system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* type = $HL7ClaimTypeCS#oral
* type.text = "Oral"
* use = #claim
* created = "2021-03-18T10:23:00-05:00"
* insurer = Reference(DentalPayer1)
* insurer.display = "XXX Health Plan"
* patient = Reference(Patient2)
* billablePeriod.start = "2021-03-01"
* billablePeriod.end = "2021-03-31"
* provider = Reference(PractitionerDentalProvider1)
* provider.display = "XXX Dental Plan"
* outcome = #complete
* diagnosis[0].diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#Z01.21 "Encounter for dental examination and cleaning with abnormal findings"
* diagnosis[0].type = $HL7DiagnosisType#principal
* diagnosis[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage[0] = Reference(CoverageDental1)

* adjudication[billingnetworkstatus].category = C4BBAdjudicationDiscriminator#billingnetworkstatus
* adjudication[billingnetworkstatus].reason = C4BBPayerAdjudicationStatus#innetwork
* adjudication[renderingnetworkstatus].category = C4BBAdjudicationDiscriminator#renderingnetworkstatus
* adjudication[renderingnetworkstatus].reason = C4BBPayerAdjudicationStatus#innetwork
* adjudication[benefitpaymentstatus].category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
* adjudication[benefitpaymentstatus].reason = C4BBPayerAdjudicationStatus#innetwork

* total[adjudicationamounttype][0].category = $HL7AdjudicationCS#submitted
* total[adjudicationamounttype][0].category.text = "Submitted Amount"
* total[adjudicationamounttype][0].amount.value = 410.00
* total[adjudicationamounttype][0].amount.currency = #USD
* total[adjudicationamounttype][1].category = $HL7AdjudicationCS#benefit
* total[adjudicationamounttype][1].category.text = "Benefit Amount"
* total[adjudicationamounttype][1].amount.value = 350.00
* total[adjudicationamounttype][1].amount.currency = #USD
* total[adjudicationamounttype][2].category = C4BBAdjudication#discount
* total[adjudicationamounttype][2].category.text = "Discount Amount"
* total[adjudicationamounttype][2].amount.value = 60.00
* total[adjudicationamounttype][2].amount.currency = #USD
* total[adjudicationamounttype][3].category = C4BBAdjudication#paidtoprovider
* total[adjudicationamounttype][3].category.text = "Amount Paid to Provider"
* total[adjudicationamounttype][3].amount.value = 350.00
* total[adjudicationamounttype][3].amount.currency = #USD

* item[0].productOrService = ADADentalProcedureCode#D1110 "Prophylaxis - Adult"


* item[0].sequence = 1
* item[0].servicedDate = "2021-03-18"

* item[0].locationCodeableConcept = $CMSPlaceofServiceCodes#11 "Office"
* item[0].adjudication[adjudicationamounttype][0].category = $HL7AdjudicationCS#submitted
* item[0].adjudication[adjudicationamounttype][0].amount.value = 190.00
* item[0].adjudication[adjudicationamounttype][0].amount.currency = #USD

* item[0].adjudication[benefitpaymentstatus][0].category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
* item[0].adjudication[benefitpaymentstatus][0].reason = C4BBPayerAdjudicationStatus#innetwork
* item[1].productOrService = ADADentalProcedureCode#D0120 "Periodic oral evaluation"
* item[1].sequence = 2
* item[1].servicedDate = "2021-03-18"
* item[1].locationCodeableConcept = $CMSPlaceofServiceCodes#11 "Office"
* item[1].adjudication[adjudicationamounttype][0].category = $HL7AdjudicationCS#submitted
* item[1].adjudication[adjudicationamounttype][0].amount.value = 220.00
* item[1].adjudication[adjudicationamounttype][0].amount.currency = #USD
* item[1].adjudication[benefitpaymentstatus][0].category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
* item[1].adjudication[benefitpaymentstatus][0].reason = C4BBPayerAdjudicationStatus#innetwork

* supportingInfo[clmrecvddate].category = C4BBSupportingInfoType#clmrecvddate
* supportingInfo[clmrecvddate].timingDate = 2021-03-18
* supportingInfo[clmrecvddate].sequence = 3
* supportingInfo[servicefacility].category = C4BBSupportingInfoType#servicefacility
* supportingInfo[servicefacility].sequence = 4
* supportingInfo[servicefacility].valueReference = Reference(ProviderOrganization1)


* supportingInfo[patientaccountnumber].category  = C4BBSupportingInfoType#patientaccountnumber
* supportingInfo[patientaccountnumber].valueString = "PATIENTACCTNO3"
* supportingInfo[patientaccountnumber].sequence = 5
