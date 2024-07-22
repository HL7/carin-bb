```
Instance: Patient2
InstanceOf: http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Patient|2.1.0-snapshot1
Title: "Patient Example 2"
Description: "Patient Example 2"
Usage: #example
* meta
  * lastUpdated = "2020-10-30T09:48:01.8512764-04:00"
  * source = "Organization/PayerOrganizationExample1"
* language = #en-US
* identifier
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#MB "Member Number"
    * text = "An identifier for the insured of an insurance policy (this insured always has a subscriber), usually assigned by the insurance carrier."
  * system = "https://www.upmchealthplan.com/fhir/memberidentifier"
  * value = "88800933501"
  * assigner = Reference(Payer2) "UPMC Health Plan"
* active = true
* name
  * family = "Test"
  * given = "Member 01"
* telecom[0]
  * system = #phone
  * value = "5555555551"
  * rank = 1
* telecom[+]
  * system = #phone
  * value = "5555555552"
  * rank = 2
* telecom[+]
  * system = #phone
  * value = "5555555553"
  * rank = 3
* telecom[+]
  * system = #phone
  * value = "5555555554"
  * rank = 4
* telecom[+]
  * system = #phone
  * value = "5555555555"
  * use = #home
  * rank = 5
* telecom[+]
  * system = #phone
  * value = "5555555556"
  * use = #work
  * rank = 6
* telecom[+]
  * system = #email
  * value = "GXXX@XXXX.com"
  * rank = 7
* telecom[+]
  * system = #fax
  * value = "5555555557"
  * rank = 8
* gender = #male
* birthDate = "1943-01-01"
* address[0]
  * type = #physical
  * line = "123 Main Street"
  * city = "PITTSBURGH"
  * state = "PA"
  * postalCode = "15239"
* address[+]
  * type = #physical
  * line = "456 Murray Avenue"
  * city = "PITTSBURGH"
  * state = "PA"
  * postalCode = "15217"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK
  * text = "unknown"
* communication
  * language = urn:ietf:bcp:47#en
    * text = "English"
  * preferred = true
* managingOrganization = Reference(Payer2) "UPMC Health Plan"
```