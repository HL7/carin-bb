```
Instance: Patient1
InstanceOf: Patient
Title: "Patient Example 1"
Description: "Patient Example 1"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Patient|1.2.0"
* language = #en-US
* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#MB
* identifier[=].system = "https://www.xxxhealthplan.com/fhir/memberidentifier"
* identifier[=].value = "1234-234-1243-12345678901"
* identifier[+].type = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBIdentifierType#um
* identifier[=].system = "https://www.xxxhealthplan.com/fhir/iniquememberidentifier"
* identifier[=].value = "1234-234-1243-12345678901u"
* active = true
* name.family = "Example1"
* name.given = "Johnny"
* telecom.system = #phone
* telecom.value = "(301)666-1212"
* telecom.rank = 2
* gender = #male
* birthDate = "1986-01-01"
* address.type = #physical
* address.line = "123 Main Street"
* address.city = "Pittsburgh"
* address.state = "PA"
* address.postalCode = "12519"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK
```