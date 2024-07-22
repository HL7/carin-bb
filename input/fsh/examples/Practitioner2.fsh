Instance: Practitioner2
InstanceOf: C4BBPractitioner
Title: "Practitioner Example 2"
Description: "Practitioner Example 2"
Usage: #example
* meta.lastUpdated = "2020-05-04T03:02:01-04:00"
* meta.profile[+] = Canonical(C4BBPractitioner|2.1.0-snapshot1)
* identifier.type = $v2-0203#NPI "National Provider Identifier"
* identifier.type.text = "National Provider Identifier"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "9941339100"
* active = true
* name.family = "Brown"
* name.given = "Jack"
* name.prefix = "Dr."