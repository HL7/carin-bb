```
Instance: EOBOral1
InstanceOf: http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Oral|2.1.0
Title: "EOB Oral Example 1"
Description: "EOB Oral Example 1"
Usage: #example
* meta.lastUpdated = "2021-03-18T10:23:00-05:00"
* language = #en-US
* identifier
  * type = C4BBIdentifierType#uc
  * system = "https://www.xxxplan.com/fhir/EOBIdentifier"
  * value = "210300002"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#oral
  * text = "Oral"
* use = #claim
* patient = Reference(Patient2)
* billablePeriod
  * start = "2021-03-01"
  * end = "2021-03-31"
* created = "2021-03-18T10:23:00-05:00"
* insurer = Reference(DentalPayer1) "XXX Health Plan"
* provider = Reference(PractitionerDentalProvider1) "XXX Dental Plan"
* outcome = #complete
* supportingInfo[0]
  * sequence = 3
  * category = C4BBSupportingInfoType#clmrecvddate
  * timingDate = "2021-03-18"
* supportingInfo[+]
  * sequence = 4
  * category = C4BBSupportingInfoType#servicefacility
  * valueReference = Reference(ProviderOrganization1)
* supportingInfo[+]
  * sequence = 5
  * category = C4BBSupportingInfoType#patientaccountnumber
  * valueString = "PATIENTACCTNO3"
* diagnosis
  * sequence = 1
  * diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#Z01.21 "Encounter for dental examination and cleaning with abnormal findings"
  * type = http://terminology.hl7.org/CodeSystem/ex-diagnosistype#principal
* insurance
  * focal = true
  * coverage = Reference(CoverageDental1)
* item[0]
  * sequence = 1
  * productOrService = http://www.ada.org/cdt#D1110 "Prophylaxis - Adult"
  * servicedDate = "2021-03-18"
  * locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#11 "Office"
  * adjudication[0]
    * category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
    * reason = C4BBPayerAdjudicationStatus#innetwork
  * adjudication[+]
    * category = http://terminology.hl7.org/CodeSystem/adjudication#submitted
    * amount
      * value = 190
      * currency = #USD
* item[+]
  * sequence = 2
  * productOrService = http://www.ada.org/cdt#D0120 "Periodic oral evaluation"
  * servicedDate = "2021-03-18"
  * locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#11 "Office"
  * adjudication[0]
    * category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
    * reason = C4BBPayerAdjudicationStatus#innetwork
  * adjudication[+]
    * category = http://terminology.hl7.org/CodeSystem/adjudication#submitted
    * amount
      * value = 220
      * currency = #USD
* adjudication[0]
  * category = C4BBAdjudicationDiscriminator#renderingnetworkstatus
  * reason = C4BBPayerAdjudicationStatus#innetwork
* adjudication[+]
  * category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
  * reason = C4BBPayerAdjudicationStatus#innetwork
* adjudication[+]
  * category = C4BBAdjudicationDiscriminator#billingnetworkstatus
  * reason = C4BBPayerAdjudicationStatus#innetwork
* total[0]
  * category = http://terminology.hl7.org/CodeSystem/adjudication#submitted
    * text = "Submitted Amount"
  * amount
    * value = 410
    * currency = #USD
* total[+]
  * category = http://terminology.hl7.org/CodeSystem/adjudication#benefit
    * text = "Benefit Amount"
  * amount
    * value = 350
    * currency = #USD
* total[+]
  * category = C4BBAdjudication#discount
    * text = "Discount Amount"
  * amount
    * value = 60
    * currency = #USD
* total[+]
  * category = C4BBAdjudication#paidtoprovider
    * text = "Amount Paid to Provider"
  * amount
    * value = 350
    * currency = #USD
```