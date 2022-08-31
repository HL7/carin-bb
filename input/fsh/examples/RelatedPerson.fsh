Instance: RelatedPerson1
InstanceOf: C4BBRelatedPerson
Title: "RelatedPerson Example 1"
Description: "RelatedPerson Example 1"
Usage: #example
* meta.lastUpdated = "2020-05-04T03:02:01-04:00"
* meta.profile[+] = Canonical(C4BBRelatedPerson|1.2.0)
* active = true
* identifier.type = $v2-0203#NPI "National Provider Identifier"
* identifier.type.text = "National Provider Identifier"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "7778889990"
* patient = Reference(Patient1)
* name[0].family = "Example1"
* name[0].given[0] = "Mary"
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH
* telecom[0].system = http://hl7.org/fhir/contact-point-system#phone
* telecom[0].value = "(301)555-1212"
* telecom[0].rank = 1
* telecom[0].system = 	http://hl7.org/fhir/contact-point-system#phone
* telecom[0].value = "(301)666-1212"
* telecom[0].rank = 2
* address[0].type = http://hl7.org/fhir/address-type#physical
* address[0].line[0] = "123 Main Street"
* address[0].city = "Pittsburgh"
* address[0].state = "PA"
* address[0].postalCode = "12519"