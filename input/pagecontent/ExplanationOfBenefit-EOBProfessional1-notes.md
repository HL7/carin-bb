```
Instance: EOBProfessional1
InstanceOf: http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Professional-NonClinician|2.1.0-snapshot1
Title: "EOB Professional - Example 1"
Description: "EOB Professional - Example 1"
Usage: #example
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* identifier
  * type = C4BBIdentifierType#uc
  * system = "https://www.xxxplan.com/fhir/EOBIdentifier"
  * value = "AW123412341234123412341234123413"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#professional
  * text = "Professional"
* use = #claim
* patient = Reference(Patient2)
* billablePeriod
  * start = "2019-01-01"
  * end = "2019-10-31"
* created = "2019-07-02T00:00:00+00:00"
* insurer = Reference(Payer1) "XXX Health Plan"
* provider = Reference(ProviderOrganization1) "XXX Health Plan"
* payee
  * type = http://terminology.hl7.org/CodeSystem/payeetype#provider "Provider"
  * party = Reference(ProviderOrganization1)
* outcome = #partial
* supportingInfo[0]
  * sequence = 3
  * category = C4BBSupportingInfoType#clmrecvddate
  * timingDate = "2011-05-30"
* supportingInfo[+]
  * sequence = 4
  * category = C4BBSupportingInfoType#servicefacility
  * valueReference = Reference(ProviderOrganization1)
* supportingInfo[+]
  * sequence = 5
  * category = C4BBSupportingInfoType#medicalrecordnumber
  * valueString = "1234-234-1243-12345678901m"
* supportingInfo[+]
  * sequence = 6
  * category = C4BBSupportingInfoType#patientaccountnumber
  * valueString = "1234-234-1243-12345678901a"
* diagnosis
  * sequence = 1
  * diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#S06.0X1A
  * type = http://terminology.hl7.org/CodeSystem/ex-diagnosistype#principal
* insurance
  * focal = true
  * coverage = Reference(Coverage3)
* item
  * sequence = 1
  * productOrService = http://www.ama-assn.org/go/cpt#97110 "Therapeutic procedure, 1 or more areas, each 15 minutes; therapeutic exercises to develop strength and endurance, range of motion and flexibility"
  * servicedDate = "2019-07-02"
  * locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#11 "Office"
  * adjudication[0]
    * category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
    * reason = C4BBPayerAdjudicationStatus#other
  * adjudication[+]
    * category = http://terminology.hl7.org/CodeSystem/adjudication#submitted
    * amount
      * value = 250
      * currency = #USD
  * adjudication[+]
    * category = http://terminology.hl7.org/CodeSystem/adjudication#benefit
    * amount
      * value = 200
      * currency = #USD
* adjudication[0]
  * category = C4BBAdjudicationDiscriminator#billingnetworkstatus
  * reason = C4BBPayerAdjudicationStatus#innetwork
* adjudication[+]
  * category = C4BBAdjudicationDiscriminator#renderingnetworkstatus
  * reason = C4BBPayerAdjudicationStatus#innetwork
* total[0]
  * category = http://terminology.hl7.org/CodeSystem/adjudication#submitted
    * text = "Submitted Amount"
  * amount
    * value = 250
    * currency = #USD
* total[+]
  * category = http://terminology.hl7.org/CodeSystem/adjudication#benefit
    * text = "Benefit Amount"
  * amount
    * value = 200
    * currency = #USD
* total[+]
  * category = C4BBAdjudication#paidtoprovider
    * text = "Payment Amount"
  * amount
    * value = 200
    * currency = #USD
* total[+]
  * category = C4BBAdjudication#paidbypatient
    * text = "Patient Pay Amount"
  * amount
    * value = 0
    * currency = #USD
* payment
  * type = C4BBPayerAdjudicationStatus#paid "Paid"
  * adjustment
    * value = -50
    * currency = #USD
  * amount
    * value = 200
    * currency = #USD
```