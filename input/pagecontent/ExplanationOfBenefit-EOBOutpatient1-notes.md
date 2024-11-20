```
Instance: EOBOutpatient1
InstanceOf: http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Outpatient-Institutional|2.1.0
Title: "EOB Outpatient Institutional - Example 1"
Description: "EOB Outpatient Institutional - Example 1"
Usage: #example
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* identifier
  * type = C4BBIdentifierType#uc
  * system = "https://www.xxxplan.com/fhir/EOBIdentifier"
  * value = "AW123412341234123412341234123412"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
  * text = "Institutional"
* subType = C4BBInstitutionalClaimSubType#outpatient
  * text = "Outpatient"
* use = #claim
* patient = Reference(Patient2)
* billablePeriod
  * start = "2019-01-01"
  * end = "2019-10-31"
* created = "2019-11-02T00:00:00+00:00"
* insurer = Reference(Payer1) "Organization Payer 1"
* provider = Reference(ProviderOrganization1) "Orange Medical Group"
* outcome = #partial
* careTeam
  * sequence = 1
  * provider = Reference(ProviderOrganization1)
  * role = C4BBClaimCareTeamRole#rendering "Rendering provider"
  * qualification = http://nucc.org/provider-taxonomy#364SX0200X "Oncology Clinical Nurse Specialist"
* supportingInfo[0]
  * sequence = 2
  * category = C4BBSupportingInfoType#clmrecvddate
  * timingDate = "2019-11-30"
* supportingInfo[+]
  * sequence = 3
  * category = C4BBSupportingInfoType#typeofbill
  * code = https://www.nubc.org/CodeSystem/TypeOfBill#Dummy
* supportingInfo[+]
  * sequence = 4
  * category = C4BBSupportingInfoType#pointoforigin
  * code = https://www.nubc.org/CodeSystem/PointOfOrigin#Dummy
* supportingInfo[+]
  * sequence = 5
  * category = C4BBSupportingInfoType#admtype
  * code = https://www.nubc.org/CodeSystem/PriorityTypeOfAdmitOrVisit#Dummy
* supportingInfo[+]
  * sequence = 6
  * category = C4BBSupportingInfoType#discharge-status
  * code = https://www.nubc.org/CodeSystem/PatDischargeStatus#Dummy
* supportingInfo[+]
  * sequence = 7
  * category = C4BBSupportingInfoType#medicalrecordnumber
  * valueString = "1234-234-1243-12345678901m"
* supportingInfo[+]
  * sequence = 8
  * category = C4BBSupportingInfoType#patientaccountnumber
  * valueString = "1234-234-1243-12345678901a"
* diagnosis
  * sequence = 1
  * diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#S06.0X1A
  * type = C4BBClaimDiagnosisType#patientreasonforvisit
* insurance
  * focal = true
  * coverage = Reference(Coverage3)
* item
  * sequence = 1
  * revenue = https://www.nubc.org/CodeSystem/RevenueCodes#Dummy
  * productOrService = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-applicable "Not Applicable"
  * servicedDate = "2019-11-02"
* adjudication[0]
  * category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
  * reason = C4BBPayerAdjudicationStatus#innetwork
* adjudication[+]
  * category = C4BBAdjudicationDiscriminator#billingnetworkstatus
  * reason = C4BBPayerAdjudicationStatus#innetwork
* adjudication[+]
  * category = C4BBAdjudication#paidtoprovider
    * text = "Payment Amount"
  * amount
    * value = 620
    * currency = #USD
* adjudication[+]
  * category = C4BBAdjudication#paidbypatient
    * text = "Patient Pay Amount"
  * amount.value = 0
* total[0]
  * category = C4BBAdjudication#paidtoprovider
    * text = "Payment Amount"
  * amount
    * value = 620
    * currency = #USD
* total[+]
  * category = http://terminology.hl7.org/CodeSystem/adjudication#submitted
    * text = "Submitted Amount"
  * amount
    * value = 2650
    * currency = #USD
* total[+]
  * category = C4BBAdjudication#paidbypatient
    * text = "Patient Pay Amount"
  * amount
    * value = 0
    * currency = #USD
```