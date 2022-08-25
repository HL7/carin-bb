Instance: EOBOral1a
InstanceOf: ExplanationOfBenefit
Title: "EOBOral1a"
Description: "EOB Oral Example1"
Usage: #example
* meta.lastUpdated = "2021-03-18T10:23:00-05:00"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Oral|1.2.0"
* language = #en-US
* identifier.type = $C4BBIdentifierType#uc
* identifier.system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* identifier.value = "210300002"
* status = #active
* type = $claim-type#oral
* type.text = "Oral"
* use = #claim
* patient = Reference(Patient1)
* billablePeriod.start = "2021-03-01"
* billablePeriod.end = "2021-03-31"
* created = "2021-03-18T10:23:00-05:00"
* insurer = Reference(OrganizationDentalPayer1) "XXX Health Plan"
* provider = Reference(PractitionerDentalProvider1) "XXX Dental Plan"
* outcome = #complete
* supportingInfo[0].sequence = 6
* supportingInfo[=].category = $C4BBSupportingInfoType#benefitpaymentstatus
* supportingInfo[=].code = $C4BBPayerAdjudicationStatus#innetwork
* supportingInfo[+].sequence = 3
* supportingInfo[=].category = $C4BBSupportingInfoType#clmrecvddate
* supportingInfo[=].timingDate = "2021-03-18"
* supportingInfo[+].sequence = 4
* supportingInfo[=].category = $C4BBSupportingInfoType#servicefacility
* supportingInfo[=].valueReference = Reference(OrganizationProvider1)
* supportingInfo[+].sequence = 5
* supportingInfo[=].category = $C4BBSupportingInfoType#patientaccountnumber
* supportingInfo[=].valueString = "PATIENTACCTNO3"
* diagnosis.sequence = 1
* diagnosis.diagnosisCodeableConcept = $icd-10-cm#Z01.21 "Encounter for dental examination and cleaning with abnormal findings"
* diagnosis.type = $ex-diagnosistype#principal
* insurance.focal = true
* insurance.coverage = Reference(CoverageDental1)
* item[0].sequence = 1
* item[=].productOrService = $cdt#D1110 "Prophylaxis - Adult"
* item[=].servicedDate = "2021-03-18"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#11 "Office"
* item[=].adjudication[0].category = $adjudication#submitted
* item[=].adjudication[=].amount.value = 190
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $C4BBPayerAdjudicationStatus#innetwork
* item[+].sequence = 2
* item[=].productOrService = $cdt#D0120 "Periodic oral evaluation"
* item[=].servicedDate = "2021-03-18"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#11 "Office"
* item[=].adjudication[0].category = $adjudication#submitted
* item[=].adjudication[=].amount.value = 220
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $C4BBPayerAdjudicationStatus#innetwork
* adjudication[0].category = $C4BBAdjudicationDiscriminator#renderingnetworkcontractingstatus
* adjudication[=].reason = $C4BBPayerAdjudicationStatus#contracted
* adjudication[+].category = $C4BBAdjudicationDiscriminator#billingnetworkcontractingstatus
* adjudication[=].reason = $C4BBPayerAdjudicationStatus#contracted
* total[0].category = $adjudication#submitted
* total[=].category.text = "Submitted Amount"
* total[=].amount.value = 410
* total[=].amount.currency = #USD
* total[+].category = $adjudication#benefit
* total[=].category.text = "Benefit Amount"
* total[=].amount.value = 350
* total[=].amount.currency = #USD
* total[+].category = $C4BBAdjudication#discount
* total[=].category.text = "Discount Amount"
* total[=].amount.value = 60
* total[=].amount.currency = #USD
* total[+].category = $C4BBAdjudication#paidtoprovider
* total[=].category.text = "Amount Paid to Provider"
* total[=].amount.value = 350
* total[=].amount.currency = #USD