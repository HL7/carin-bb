```
Instance: RelatedPerson1
InstanceOf: http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-RelatedPerson|2.1.0-snapshot1
Title: "Related Person 1"
Description: "Related Person 1"
Usage: #example
* meta.lastUpdated = "2020-05-04T03:02:01-04:00"
* active = true
* patient = Reference(Patient1)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH
* name
  * family = "Example1"
  * given = "Mary"
* telecom
  * system = #phone
  * value = "(301)666-1212"
  * rank = 2
* address
  * type = #physical
  * line = "123 Main Street"
  * city = "Pittsburgh"
  * state = "PA"
  * postalCode = "12519"
```