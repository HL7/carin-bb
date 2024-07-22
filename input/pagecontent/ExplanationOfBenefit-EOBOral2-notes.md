```
Instance: EOBOral2
InstanceOf: http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Oral|2.1.0-snapshot1
Title: "EOB Oral Example 2"
Description: "EOB Oral Example 2"
Usage: #example
* meta.lastUpdated = "2021-10-28T10:23:00-05:00"
* language = #en-US
* identifier
  * type = C4BBIdentifierType#uc
  * system = "https://www.xxxplan.com/fhir/EOBIdentifier"
  * value = "210300012"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#oral
  * text = "Oral"
* use = #claim
* patient = Reference(Patient2)
* billablePeriod
  * start = "2021-10-01"
  * end = "2021-10-31"
* created = "2021-10-28T10:23:00-05:00"
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
  * sequence = 8
  * category = C4BBSupportingInfoType#patientaccountnumber
  * valueString = "PATIENTACCTNO3"
* supportingInfo[+]
  * sequence = 9
  * category = C4BBSupportingInfoType#additionalbodysite
  * code = http://terminology.hl7.org/CodeSystem/ADAUniversalToothDesignationSystem#1
* supportingInfo[+]
  * sequence = 10
  * category = C4BBSupportingInfoType#additionalbodysite
  * code = http://terminology.hl7.org/CodeSystem/ADAUniversalToothDesignationSystem#2
* insurance
  * focal = true
  * coverage = Reference(CoverageDental1)
* item
  * sequence = 1
  * informationSequence[0] = 6
  * informationSequence[+] = 7
  * informationSequence[+] = 9
  * informationSequence[+] = 10
  * informationSequence[+] = 11
  * productOrService = http://www.ada.org/cdt#D0220 "Intraoral - periapical first radiographic image"
  * servicedDate = "2021-10-28"
  * locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#11 "Office"
  * bodySite = http://terminology.hl7.org/CodeSystem/ADAAreaOralCavitySystem#10 "Upper right quadrant"
  * subSite[0] = C4BBSurfaceCodes#O
  * subSite[+] = C4BBSurfaceCodes#I
  * adjudication[0]
    * category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
    * reason = C4BBPayerAdjudicationStatus#innetwork
  * adjudication[+]
    * category = http://terminology.hl7.org/CodeSystem/adjudication#submitted
    * amount
      * value = 150
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
    * value = 150
    * currency = #USD
* total[+]
  * category = http://terminology.hl7.org/CodeSystem/adjudication#benefit
    * text = "Benefit Amount"
  * amount
    * value = 110
    * currency = #USD
* total[+]
  * category = C4BBAdjudication#discount
    * text = "Discount Amount"
  * amount
    * value = 40
    * currency = #USD
* total[+]
  * category = C4BBAdjudication#paidtoprovider
    * text = "Amount Paid to Provider"
  * amount
    * value = 100
    * currency = #USD
```