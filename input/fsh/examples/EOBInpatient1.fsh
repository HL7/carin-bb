Instance: EOBInpatient1
InstanceOf: ExplanationOfBenefit
Title: "EOBInpatient1"
Description: "EOB Inpatient Example1"
Usage: #example
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Inpatient-Institutional|1.2.0"
* language = #en-US
* identifier.type = $C4BBIdentifierType#uc
* identifier.system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* identifier.value = "AW123412341234123412341234123412"
* status = #active
* type = $claim-type#institutional
* type.text = "Institutional"
* subType = $C4BBInstitutionalClaimSubType#inpatient
* subType.text = "Inpatient"
* use = #claim
* patient = Reference(Patient1)
* billablePeriod.start = "2019-01-01"
* billablePeriod.end = "2019-10-31"
* created = "2019-11-02T00:00:00+00:00"
* insurer = Reference(Payer1) "XXX Health Plan"
* provider = Reference(OrganizationProvider1) "XXX Health Plan"
* outcome = #partial
* supportingInfo[0].sequence = 2
* supportingInfo[=].category = $C4BBSupportingInfoType#admissionperiod
* supportingInfo[=].timingPeriod.start = "2011-05-23"
* supportingInfo[=].timingPeriod.end = "2011-05-25"
* supportingInfo[+].sequence = 10
* supportingInfo[=].category = $C4BBSupportingInfoType#benefitpaymentstatus
* supportingInfo[=].code = $C4BBPayerAdjudicationStatus#innetwork
* supportingInfo[+].sequence = 3
* supportingInfo[=].category = $C4BBSupportingInfoType#clmrecvddate
* supportingInfo[=].timingDate = "2011-05-30"
* supportingInfo[+].sequence = 4
* supportingInfo[=].category = $C4BBSupportingInfoType#typeofbill
* supportingInfo[=].code = $TypeOfBill#Dummy
* supportingInfo[+].sequence = 5
* supportingInfo[=].category = $C4BBSupportingInfoType#pointoforigin
* supportingInfo[=].code = $PointOfOrigin#Dummy
* supportingInfo[+].sequence = 6
* supportingInfo[=].category = $C4BBSupportingInfoType#admtype
* supportingInfo[=].code = $PriorityTypeOfAdmitOrVisit#Dummy
* supportingInfo[+].sequence = 7
* supportingInfo[=].category = $C4BBSupportingInfoType#discharge-status
* supportingInfo[=].code = $PatDischargeStatus#11
* supportingInfo[+].sequence = 8
* supportingInfo[=].category = $C4BBSupportingInfoType#medicalrecordnumber
* supportingInfo[=].valueString = "1234-234-1243-12345678901m"
* supportingInfo[+].sequence = 9
* supportingInfo[=].category = $C4BBSupportingInfoType#patientaccountnumber
* supportingInfo[=].valueString = "1234-234-1243-12345678901a"
* diagnosis.sequence = 1
* diagnosis.diagnosisCodeableConcept = $icd-10-cm#S06.0X1A
* diagnosis.type = $ex-diagnosistype#principal
* insurance.focal = true
* insurance.coverage = Reference(Coverage1)
* item.sequence = 1
* item.revenue = $RevenueCodes#Dummy
* item.productOrService = $data-absent-reason#not-applicable "Not Applicable"
* item.servicedDate = "2019-11-02"
* adjudication[0].category = $C4BBAdjudicationDiscriminator#billingnetworkcontractingstatus
* adjudication[=].reason = $C4BBPayerAdjudicationStatus#contracted
* adjudication[+].category = $C4BBAdjudication#paidtoprovider
* adjudication[=].category.text = "Payment Amount"
* adjudication[=].amount.value = 620
* adjudication[=].amount.currency = #USD
* adjudication[+].category = $adjudication#submitted
* adjudication[=].category.text = "Submitted Amount"
* adjudication[=].amount.value = 2650
* adjudication[=].amount.currency = #USD
* adjudication[+].category = $C4BBAdjudication#paidbypatient
* adjudication[=].category.text = "Patient Pay Amount"
* adjudication[=].amount.value = 0
* adjudication[=].amount.currency = #USD
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