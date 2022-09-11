Instance: ProviderTransportationOrganization1
InstanceOf: C4BBOrganization
Title: "Provider Transportation Organization Example 1"
Description: "Provider Transportation Organization Example 1"
Usage: #example
* meta.lastUpdated = "2020-05-04T03:02:01-04:00"
* meta.profile[+] = Canonical(C4BBOrganization|1.2.0)
* identifier.type = $v2-0203#NPI "National Provider Identifier"
* identifier.type.text = "National Provider Identifier"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "0099887766"
* active = true
* name = "ABC Ambulance Services"
* address.line = "Attn: ABC Ambulance Services"
* address.city = "Pittsburgh"
* address.state = "PA"
* address.postalCode = "15222"
* address.country = "USA"
* contact.telecom.system = #phone
* contact.telecom.value = "555-555-5511"
* contact.telecom.use = #work