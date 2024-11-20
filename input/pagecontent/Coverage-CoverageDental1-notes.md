```
Instance: CoverageDental1
InstanceOf: http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Coverage|2.1.0
Title: "Dental Coverage Example1"
Description: "Dental Coverage Example1"
Usage: #example
* meta.lastUpdated = "2021-01-01T14:22:01.0314215+00:00"
* language = #en-US
* identifier
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#MB
  * system = "https://www.xxxhealthplan.com/fhir/memberidentifier"
  * value = "210300002"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/v3-ActCode#DENTAL
  * text = "dental care policy"
* policyHolder = Reference(Patient2)
* subscriber = Reference(Patient2)
* subscriberId = "10300007"
* beneficiary = Reference(Patient2)
* dependent = "01"
* relationship = http://terminology.hl7.org/CodeSystem/subscriber-relationship#self
* period
  * start = "2021-01-01"
  * end = "2021-12-31"
* payor = Reference(DentalPayer1)
* class[0]
  * type = http://terminology.hl7.org/CodeSystem/coverage-class#group
    * text = "An employee group"
  * value = "10300007"
  * name = "Transcorp - dental"
* class[+]
  * type = http://terminology.hl7.org/CodeSystem/coverage-class#plan
    * text = "Plan"
  * value = "66783JJT"
  * name = "INSURANCE COMPANY XYZ - PRIME"
* network = "INSURANCE COMPANY XYZ - PRIME"
```