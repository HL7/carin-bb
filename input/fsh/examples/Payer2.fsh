Instance: Payer2
InstanceOf: C4BBOrganization
Title: "Payer Organization Example 2"
Description: "Payer Organization Example 2"
Usage: #example
* meta.lastUpdated = "2020-09-08T00:00:00+00:00"
* meta.source = "Organization/PayerOrganizationExample1"
* meta.profile[+] = Canonical(C4BBOrganization|2.1.0-snapshot1)
* identifier.type = $C4BBIdentifierType#naiccode "NAIC Code"
* identifier.type.text = "NAIC Code"
* identifier.system = "urn:oid:2.16.840.1.113883.6.300"
* identifier.value = "95216"
* active = true
* type = $organization-type#pay
* type.text = "Payer"
* name = "UPMC Health Plan"
* telecom[0].system = #phone
* telecom[=].value = "1-844-220-4785 TTY: 711"
* telecom[=].use = #work
* telecom[+].system = #phone
* telecom[=].value = "1-866-406-8762"
* telecom[=].use = #work
* address.type = #physical
* address.line[0] = "UPMC Health Plan"
* address.line[+] = "Attn: Commercial Plans"
* address.line[+] = "U.S. Steel Tower"
* address.line[+] = "600 Grant Street"
* address.city = "Pittsburgh"
* address.state = "PA"
* address.postalCode = "15219"