```
Instance: ProviderOrganization3
InstanceOf: Organization
Title: "Provider Organization 3"
Description: "Provider Organization 3"
Usage: #example
* meta.lastUpdated = "2020-05-04T03:02:01-04:00"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Organization|2.0.0"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#NPI "National Provider Identifier"
  * text = "National Provider Identifier"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "3334445550"
* active = true
* name = "Green Medical Group"
* address.line = "Attn: Green Medical Group"
* address.city = "Pittsburgh"
* address.state = "PA"
* address.postalCode = "15222"
* address.country = "USA"
* contact.telecom.system = #phone
* contact.telecom.value = "555-555-5520"
* contact.telecom.use = #work
```