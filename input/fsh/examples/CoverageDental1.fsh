Instance: CoverageDental1
InstanceOf: C4BBCoverage
Title: "CoverageDental1"
Description: "Dental Coverage Example1"
Usage: #example
* meta.lastUpdated = "2021-01-01T14:22:01.0314215+00:00"
* meta.profile[+] = Canonical(C4BBCoverage|1.2.0)
* language = #en-US
* identifier.type = $v2-0203#MB
* identifier.system = "https://www.xxxhealthplan.com/fhir/memberidentifier"
* identifier.value = "210300002"
* status = #active
* type = $v3-ActCode#DENTAL
* type.text = "dental care policy"
* policyHolder = Reference(Patient2)
* subscriber = Reference(Patient2)
* subscriberId = "10300007"
* beneficiary = Reference(Patient2)
* dependent = "01"
* relationship = $subscriber-relationship#self
* period.start = "2021-01-01"
* period.end = "2021-12-31"
* payor = Reference(DentalPayer1)
* class[0].type = $coverage-class#group
* class[=].type.text = "An employee group"
* class[=].value = "10300007"
* class[=].name = "Transcorp - dental"
* class[+].type = $coverage-class#plan
* class[=].type.text = "Plan"
* class[=].value = "66783JJT"
* class[=].name = "INSURANCE COMPANY XYZ - PRIME"
* network = "INSURANCE COMPANY XYZ - PRIME"