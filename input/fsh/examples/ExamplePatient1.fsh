Instance: ExamplePatient1
InstanceOf: Patient
Title: "Patient Example 1"
Description: "Patient Example 1"
Usage: #example
* meta.lastUpdated = "2020-10-30T09:48:01.8512764-04:00"
* meta.source = "Organization/PayerOrganizationExample1"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Patient|1.2.0"
* language = #en-US
* identifier.type = $v2-0203#MB "Member Number"
* identifier.type.text = "An identifier for the insured of an insurance policy (this insured always has a subscriber), usually assigned by the insurance carrier."
* identifier.system = "https://www.upmchealthplan.com/fhir/memberidentifier"
* identifier.value = "88800933501"
* identifier.assigner = Reference(PayerOrganizationExample1) "UPMC Health Plan"
* active = true
* name.family = "Test"
* name.given = "Member 01"
* telecom[0].system = #phone
* telecom[=].value = "5555555551"
* telecom[=].rank = 1
* telecom[+].system = #phone
* telecom[=].value = "5555555552"
* telecom[=].rank = 2
* telecom[+].system = #phone
* telecom[=].value = "5555555553"
* telecom[=].rank = 3
* telecom[+].system = #phone
* telecom[=].value = "5555555554"
* telecom[=].rank = 4
* telecom[+].system = #phone
* telecom[=].value = "5555555555"
* telecom[=].use = #home
* telecom[=].rank = 5
* telecom[+].system = #phone
* telecom[=].value = "5555555556"
* telecom[=].use = #work
* telecom[=].rank = 6
* telecom[+].system = #email
* telecom[=].value = "GXXX@XXXX.com"
* telecom[=].rank = 7
* telecom[+].system = #fax
* telecom[=].value = "5555555557"
* telecom[=].rank = 8
* gender = #male
* birthDate = "1943-01-01"
* address[0].type = #physical
* address[=].line = "123 Main Street"
* address[=].city = "PITTSBURGH"
* address[=].state = "PA"
* address[=].postalCode = "15239"
* address[+].type = #physical
* address[=].line = "456 Murray Avenue"
* address[=].city = "PITTSBURGH"
* address[=].state = "PA"
* address[=].postalCode = "15217"
* maritalStatus = $v3-NullFlavor#UNK
* maritalStatus.text = "unknown"
* communication.language = urn:ietf:bcp:47#en
* communication.language.text = "English"
* communication.preferred = true
* managingOrganization = Reference(PayerOrganizationExample1) "UPMC Health Plan"