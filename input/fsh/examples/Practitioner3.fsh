Instance: Practitioner3
InstanceOf: C4BBPractitioner
Title: "Practitioner Example 3"
Description: "Practitioner Example 3"
Usage: #example
* meta.lastUpdated = "2020-05-04T03:02:01-04:00"
* meta.profile[+] = Canonical(C4BBPractitioner|2.0.0)
* identifier.type = $v2-0203#NPI "National Provider Identifier"
* identifier.type.text = "National Provider Identifier"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "7778889990"
* active = true
* name.family = "Williams"
* name.given = "Jane"
* name.prefix = "Dr."