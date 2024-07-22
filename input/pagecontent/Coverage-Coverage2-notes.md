```
Instance: Coverage2
InstanceOf: http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Coverage|2.1.0-snapshot1
Title: "Coverage Example 2"
Description: "Coverage Example 2"
Usage: #example
* meta.lastUpdated = "2020-10-30T09:48:01.8462752-04:00"
* language = #en-US
* identifier
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#MB "Member Number"
    * text = "An identifier for the insured of an insurance policy (this insured always has a subscriber), usually assigned by the insurance carrier."
  * system = "https://www.upmchealthplan.com/fhir/memberidentifier"
  * value = "88800933501"
  * assigner = Reference(Payer2) "UPMC Health Plan"
* status = #active
* policyHolder = Reference(Patient1)
* subscriber = Reference(Patient1)
* subscriberId = "888009335"
* beneficiary = Reference(Patient1)
* dependent = "01"
* relationship = http://terminology.hl7.org/CodeSystem/subscriber-relationship#self
  * text = "Self"
* period
  * start = "2017-01-01"
  * end = "2017-06-30"
* payor = Reference(Payer2) "UPMC Health Plan"
* class[0]
  * type = http://terminology.hl7.org/CodeSystem/coverage-class#group "Group"
    * text = "An employee group"
  * value = "MCHMO1"
  * name = "MEDICARE HMO PLAN"
* class[+]
  * type = http://terminology.hl7.org/CodeSystem/coverage-class#plan "Plan"
    * text = "A specific suite of benefits."
  * value = "GI8"
  * name = "GI8-HMO DEDUCTIBLE"
* network = "GI8-HMO DEDUCTIBLE"
```