Instance: EOBProfessional1a
InstanceOf: C4BBExplanationOfBenefitProfessionalNonClinician
Title: "EOBProfessional1a"
Description: "EOB Professional  Example1"
Usage: #example
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Professional-NonClinician|1.2.0"
* language = #en-US
* identifier.type = $C4BBIdentifierType#uc
* identifier.system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* identifier.value = "AW123412341234123412341234123413"
* status = #active
* type = $claim-type#professional
* type.text = "Professional"
* use = #claim
* patient = Reference(Patient1)
* billablePeriod.start = "2019-01-01"
* billablePeriod.end = "2019-10-31"
* created = "2019-07-02T00:00:00+00:00"
* insurer = Reference(Payer1) "XXX Health Plan"
* provider = Reference(OrganizationProvider1) "XXX Health Plan"
* outcome = #partial
* supportingInfo[0].sequence = 3
* supportingInfo[=].category = $C4BBSupportingInfoType#clmrecvddate
* supportingInfo[=].timingDate = "2011-05-30"
* supportingInfo[+].sequence = 4
* supportingInfo[=].category = $C4BBSupportingInfoType#servicefacility
* supportingInfo[=].valueReference = Reference(OrganizationProvider1)
* supportingInfo[+].sequence = 5
* supportingInfo[=].category = $C4BBSupportingInfoType#medicalrecordnumber
* supportingInfo[=].valueString = "1234-234-1243-12345678901m"
* supportingInfo[+].sequence = 6
* supportingInfo[=].category = $C4BBSupportingInfoType#patientaccountnumber
* supportingInfo[=].valueString = "1234-234-1243-12345678901a"
* diagnosis.sequence = 1
* diagnosis.diagnosisCodeableConcept = $icd-10-cm#S06.0X1A
* diagnosis.type = $ex-diagnosistype#principal
* insurance.focal = true
* insurance.coverage = Reference(Coverage1)
* item.sequence = 1
* item.productOrService = $cpt#97110 "Physical Therapy"
* item.servicedDate = "2019-07-02"
* item.locationCodeableConcept = $Place_of_Service_Code_Set#11 "Office"
* item.adjudication[0].category = $adjudication#submitted
* item.adjudication[=].amount.value = 1000
* item.adjudication[=].amount.currency = #USD
* item.adjudication[+].category = $C4BBPayerAdjudicationStatus#other
* adjudication[0].category = $C4BBAdjudicationDiscriminator#billingnetworkcontractingstatus
* adjudication[=].reason = $C4BBPayerAdjudicationStatus#contracted
* adjudication[+].category = $C4BBAdjudicationDiscriminator#renderingnetworkcontractingstatus
* adjudication[=].reason = $C4BBPayerAdjudicationStatus#contracted
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