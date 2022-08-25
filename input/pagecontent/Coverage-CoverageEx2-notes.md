```
Instance: CoverageEx2
InstanceOf: Coverage
Title: "Coverage Example 2"
Description: "Coverage Example 2"
Usage: #example
* meta.lastUpdated = "2020-10-30T09:48:01.8462752-04:00"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Coverage|1.2.0"
* language = #en-US
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MB "Member Number"
  * text = "An identifier for the insured of an insurance policy (this insured always has a subscriber), usually assigned by the insurance carrier."
* identifier.system = "https://www.upmchealthplan.com/fhir/memberidentifier"
* identifier.value = "88800933501"
* identifier.assigner = Reference(PayerOrganizationExample1) "UPMC Health Plan"
* status = #active
* policyHolder = Reference(ExamplePatient1)
* subscriber = Reference(ExamplePatient1)
* subscriberId = "888009335"
* beneficiary = Reference(ExamplePatient1)
* dependent = "01"
* relationship = http://terminology.hl7.org/CodeSystem/subscriber-relationship#self
  * text = "Self"
* period.start = "2017-01-01"
* period.end = "2017-06-30"
* payor = Reference(PayerOrganizationExample1) "UPMC Health Plan"
* class[0].type = http://terminology.hl7.org/CodeSystem/coverage-class#group "Group"
* class[=].type.text = "An employee group"
* class[=].value = "MCHMO1"
* class[=].name = "MEDICARE HMO PLAN"
* class[+].type = http://terminology.hl7.org/CodeSystem/coverage-class#plan "Plan"
  * text = "A specific suite of benefits."
* class[=].value = "GI8"
* class[=].name = "GI8-HMO DEDUCTIBLE"
* network = "GI8-HMO DEDUCTIBLE"
```