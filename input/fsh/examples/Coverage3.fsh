Instance: Coverage3
InstanceOf: C4BBCoverage
Title: "Coverage3"
Description: "Coverage Example 3"
// Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = Canonical(C4BBCoverage|1.2.0)
* language = #en-US
* identifier.type = $v2-0203#MB
* identifier.system = "https://www.xxxhealthplan.com/fhir/memberidentifier"
* identifier.value = "1234-234-1243-12345678901"
* status = #active
* type = $v3-ActCode#HIP
* type.text = "health insurance plan policy"
* policyHolder = Reference(Patient1)
* subscriber = Reference(Patient1)
* subscriberId = "12345678901"
* beneficiary = Reference(Patient1)
* dependent = "01"
* relationship = $subscriber-relationship#self
* period.start = "2019-01-01"
* period.end = "2019-10-31"
* payor = Reference(OrganizationPayer1)
* class[0].type = $coverage-class#group
* class[=].type.text = "An employee group"
* class[=].value = "021890"
* class[=].name = "Acme Corporation"
* class[+].type = $coverage-class#plan
* class[=].type.text = "Plan"
* class[=].value = "XYZ123"
* class[=].name = "XYZ123-UPMC CONSUMER ADVA"
* network = "XYZ123-UPMC CONSUMER ADVA"