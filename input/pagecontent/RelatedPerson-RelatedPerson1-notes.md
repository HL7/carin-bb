```
Instance: RelatedPerson1
InstanceOf: RelatedPerson
Title: "Related Person 1"
Description: "Related Person 1"
Usage: #example
* meta.lastUpdated = "2020-05-04T03:02:01-04:00"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-RelatedPerson|1.2.0"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#NPI "National Provider Identifier"
  * text = "National Provider Identifier"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "7778889990"
* active = true
* patient = Reference(Patient1)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH
* name.family = "Example1"
* name.given = "Mary"
* telecom.system = #phone
* telecom.value = "(301)666-1212"
* telecom.rank = 2
* address.type = #physical
* address.line = "123 Main Street"
* address.city = "Pittsburgh"
* address.state = "PA"
* address.postalCode = "12519"
```