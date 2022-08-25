```
Instance: Coverage1
InstanceOf: Coverage
Title: "Coverage1"
Description: "Coverage Example1"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Coverage|1.2.0"
* language = #en-US
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MB
* identifier.system = "https://www.xxxhealthplan.com/fhir/memberidentifier"
* identifier.value = "1234-234-1243-12345678901"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/v3-ActCode#HIP
  * text = "health insurance plan policy"
* policyHolder = Reference(Patient1)
* subscriber = Reference(Patient1)
* subscriberId = "12345678901"
* beneficiary = Reference(Patient1)
* dependent = "01"
* relationship = http://terminology.hl7.org/CodeSystem/subscriber-relationship#self
* period.start = "2019-01-01"
* period.end = "2019-10-31"
* payor = Reference(OrganizationPayer1)
* class[0].type = http://terminology.hl7.org/CodeSystem/coverage-class#group
* class[=].type.text = "An employee group"
* class[=].value = "021890"
* class[=].name = "Acme Corporation"
* class[+].type = http://terminology.hl7.org/CodeSystem/coverage-class#plan
  * text = "Plan"
* class[=].value = "XYZ123"
* class[=].name = "XYZ123-UPMC CONSUMER ADVA"
* network = "XYZ123-UPMC CONSUMER ADVA"
```