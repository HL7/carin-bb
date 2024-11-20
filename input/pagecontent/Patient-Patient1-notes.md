```
Instance: Patient1
InstanceOf: http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Patient|2.1.0
Title: "Patient Example 1"
Description: "Patient Example 1"
Usage: #example
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* identifier[0]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#MB
  * system = "https://www.xxxhealthplan.com/fhir/memberidentifier"
  * value = "1234-234-1243-12345678901"
* identifier[+]
  * type = C4BBIdentifierType#um
  * system = "https://www.xxxhealthplan.com/fhir/iniquememberidentifier"
  * value = "1234-234-1243-12345678901u"
* active = true
* name
  * family = "Example1"
  * given = "Johnny"
* telecom
  * system = #phone
  * value = "(301)666-1212"
  * rank = 2
* gender = #male
* birthDate = "1986-01-01"
* address
  * type = #physical
  * line = "123 Main Street"
  * city = "Pittsburgh"
  * state = "PA"
  * postalCode = "12519"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK
```