Instance: Coverage2
InstanceOf: C4BBCoverage
Title: "Coverage Example 2"
Description: "Coverage Example 2"
Usage: #example
* meta.lastUpdated = "2020-10-30T09:48:01.8462752-04:00"
* meta.profile[+] = Canonical(C4BBCoverage|2.1.0)
* language = #en-US
* identifier.type = $v2-0203#MB "Member Number"
* identifier.type.text = "An identifier for the insured of an insurance policy (this insured always has a subscriber), usually assigned by the insurance carrier."
* identifier.system = "https://www.upmchealthplan.com/fhir/memberidentifier"
* identifier.value = "88800933501"
* identifier.assigner = Reference(Payer2) "UPMC Health Plan"
* status = #active
* policyHolder = Reference(Patient1)
* subscriber = Reference(Patient1)
* subscriberId = "888009335"
* beneficiary = Reference(Patient1)
* dependent = "01"
* relationship = $subscriber-relationship#self
* relationship.text = "Self"
* period.start = "2017-01-01"
* period.end = "2017-06-30"
* payor = Reference(Payer2) "UPMC Health Plan"
* class[0].type = $coverage-class#group "Group"
* class[=].type.text = "An employee group"
* class[=].value = "MCHMO1"
* class[=].name = "MEDICARE HMO PLAN"
* class[+].type = $coverage-class#plan "Plan"
* class[=].type.text = "A specific suite of benefits."
* class[=].value = "GI8"
* class[=].name = "GI8-HMO DEDUCTIBLE"
* network = "GI8-HMO DEDUCTIBLE"