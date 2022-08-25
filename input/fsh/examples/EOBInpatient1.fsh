Instance: EOBInpatient1
InstanceOf: C4BBExplanationOfBenefitInpatientInstitutional
Title: "EOBInpatient1"
Description: "EOB Inpatient Example1"
Usage: #example
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* meta.profile[supportedProfile] = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Inpatient-Institutional|1.2.0"
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
* supportingInfo[admissionperiod].
  * sequence = 2
  * timingPeriod.start = "2011-05-23"
  * timingPeriod.end = "2011-05-25"
* supportingInfo[benefitpaymentstatus].
  * sequence = 10
  * code = $C4BBPayerAdjudicationStatus#innetwork
* supportingInfo[clmrecvddate].
  * sequence = 3
  * timingDate = "2011-05-30"
* supportingInfo[typeofbill].
  * sequence = 4
  * code = $TypeOfBill#Dummy
* supportingInfo[pointoforigin].
  * sequence = 5
  * code = $PointOfOrigin#Dummy
* supportingInfo[admtype].
  * sequence = 6
  * code = $PriorityTypeOfAdmitOrVisit#Dummy
* supportingInfo[discharge-status].
  * sequence = 7
  * code = $PatDischargeStatus#11
* supportingInfo[medicalrecordnumber].
  * sequence = 8
  * valueString = "1234-234-1243-12345678901m"
* supportingInfo[patientaccountnumber].
  * sequence = 9
  * valueString = "1234-234-1243-12345678901a"
* diagnosis.sequence = 1
* diagnosis.diagnosisCodeableConcept = $icd-10-cm#S06.0X1A
* diagnosis.type = $ex-diagnosistype#principal
* insurance.focal = true
* insurance.coverage = Reference(Coverage1)
* item.sequence = 1
* item.revenue = $RevenueCodes#Dummy
* item.productOrService = $data-absent-reason#not-applicable "Not Applicable"
* item.servicedDate = "2019-11-02"
* adjudication[billingnetworkcontractingstatus].reason = $C4BBPayerAdjudicationStatus#contracted
* adjudication[adjudicationamounttype][0]
  * amount.value = 620
  * amount.currency = #USD
  * category = $C4BBAdjudication#paidtoprovider
  * category.text = "Payment Amount"
* adjudication[adjudicationamounttype][+]
  * amount.value = 620
  * amount.currency = #USD
  * category = $adjudication#submitted
  * category.text = "Submitted Amount"
* adjudication[adjudicationamounttype][+]
  * amount.value = 0
  * amount.currency = #USD
  * category = $C4BBAdjudication#paidbypatient
  * category.text = "Patient Pay Amount"

* total[adjudicationamounttype][0]
  * amount.value = 620
  * amount.currency = #USD
  * category = $C4BBAdjudication#paidtoprovider
  * category.text = "Payment Amount"
* total[adjudicationamounttype][+]
  * amount.value = 620
  * amount.currency = #USD
  * category = $adjudication#submitted
  * category.text = "Submitted Amount"
* total[adjudicationamounttype][+]
  * amount.value = 0
  * amount.currency = #USD
  * category = $C4BBAdjudication#paidbypatient
  * category.text = "Patient Pay Amount"
