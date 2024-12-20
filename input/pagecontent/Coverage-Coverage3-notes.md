```
Instance: Coverage3
InstanceOf: http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Coverage|2.1.0
Title: "Coverage Example 3"
Description: "Coverage Example 3"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* identifier
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#MB
  * system = "https://www.xxxhealthplan.com/fhir/memberidentifier"
  * value = "1234-234-1243-12345678901"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/v3-ActCode#HIP
  * text = "health insurance plan policy"
* policyHolder = Reference(Patient2)
* subscriber = Reference(Patient2)
* subscriberId = "12345678901"
* beneficiary = Reference(Patient2)
* dependent = "01"
* relationship = http://terminology.hl7.org/CodeSystem/subscriber-relationship#self
* period
  * start = "2019-01-01"
  * end = "2019-10-31"
* payor = Reference(Payer1)
* class[0]
  * type = http://terminology.hl7.org/CodeSystem/coverage-class#group
    * text = "An employee group"
  * value = "021890"
  * name = "Acme Corporation"
* class[+]
  * type = http://terminology.hl7.org/CodeSystem/coverage-class#plan
    * text = "Plan"
  * value = "XYZ123"
  * name = "XYZ123-UPMC CONSUMER ADVA"
* network = "XYZ123-UPMC CONSUMER ADVA"
```