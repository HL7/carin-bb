```
Instance: EOBPharmacy1
InstanceOf: http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Pharmacy|2.1.0-snapshot1
Title: "EOB Pharmacy Example1"
Description: "EOB Pharmacy Example1"
Usage: #example
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* identifier
  * type = C4BBIdentifierType#uc
  * system = "https://www.xxxplan.com/fhir/EOBIdentifier"
  * value = "AW123412341234123412341234123412"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#pharmacy
  * text = "Pharmacy"
* use = #claim
* patient = Reference(Patient2)
* billablePeriod
  * start = "2019-10-30"
  * end = "2019-10-31"
* created = "2019-07-02T00:00:00+00:00"
* insurer = Reference(Payer1) "XXX Health Plan"
* provider = Reference(ProviderOrganization1) "XXX Health Plan"
* outcome = #partial
* supportingInfo[0]
  * sequence = 8
  * category = C4BBSupportingInfoType#dayssupply
  * valueQuantity.value = 30
* supportingInfo[+]
  * sequence = 6
  * category = C4BBSupportingInfoType#dawcode
  * code = http://terminology.hl7.org/CodeSystem/NCPDPDispensedAsWrittenOrProductSelectionCode#7
* supportingInfo[+]
  * sequence = 4
  * category = C4BBSupportingInfoType#refillnum
  * valueQuantity.value = 0
* supportingInfo[+]
  * sequence = 5
  * category = C4BBSupportingInfoType#refillsauthorized
  * valueQuantity.value = 0
* supportingInfo[+]
  * sequence = 2
  * category = C4BBSupportingInfoType#brandgenericindicator
  * code = http://terminology.hl7.org/CodeSystem/NCPDPBrandGenericIndicator#2
* supportingInfo[+]
  * sequence = 3
  * category = C4BBSupportingInfoType#rxorigincode
  * code = http://terminology.hl7.org/CodeSystem/NCPDPPrescriptionOriginCode#1
* supportingInfo[+]
  * sequence = 7
  * category = C4BBSupportingInfoType#clmrecvddate
  * timingDate = "2019-10-31"
* supportingInfo[+]
  * sequence = 9
  * category = C4BBSupportingInfoType#compoundcode
  * code = http://terminology.hl7.org/CodeSystem/NCPDPCompoundCode#Dummy
* insurance
  * focal = true
  * coverage = Reference(Coverage3)
* item
  * sequence = 1
  * productOrService = http://hl7.org/fhir/sid/ndc#0777-3105-02 "Prozac, 100 CAPSULE in 1 BOTTLE (0777-3105-02) (package)"
  * servicedDate = "2019-07-02"
  * adjudication[0]
    * category = http://terminology.hl7.org/CodeSystem/adjudication#submitted
    * amount
      * value = 1000
      * currency = #USD
  * adjudication[+]
    * category = http://terminology.hl7.org/CodeSystem/adjudication#benefit
    * amount
      * value = 20
      * currency = #USD
  * adjudication[+]
    * category = C4BBAdjudication#discount
    * amount
      * value = 900
      * currency = #USD
  * adjudication[+]
    * category = C4BBAdjudication#memberliability
    * amount
      * value = 80
      * currency = #USD
  * adjudication[+]
    * category = C4BBAdjudication#paidtoprovider
    * amount
      * value = 20
      * currency = #USD
* adjudication[0]
  * category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
  * reason = C4BBPayerAdjudicationStatus#innetwork
* adjudication[+]
  * category = C4BBAdjudicationDiscriminator#billingnetworkstatus
  * reason = C4BBPayerAdjudicationStatus#innetwork
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