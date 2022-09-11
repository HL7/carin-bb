Instance: ProviderOrganization3
InstanceOf: C4BBOrganization
Title: "Provider Organization Example 3"
Description: "Provider Organization Example 3"
Usage: #example
* meta.lastUpdated = "2020-05-04T03:02:01-04:00"
* meta.profile[+] = Canonical(C4BBOrganization|2.0.0)
* identifier.type = $v2-0203#NPI "National Provider Identifier"
* identifier.type.text = "National Provider Identifier"
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