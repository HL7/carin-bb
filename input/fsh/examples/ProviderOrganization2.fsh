Instance: ProviderOrganization2
InstanceOf: C4BBOrganization
Title: "Provider Organization Example 2"
Description: "Provider Organization Example 2"
Usage: #example
* meta.profile[+] = Canonical(C4BBOrganization|2.0.0)
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* identifier[NPI].type = $HL7IdentifierType#NPI
* identifier[NPI].value = "345678"
* identifier[tax].type = $IdentifierType#TAX
* identifier[tax].value = "123-45-6789"
* name = "Provider 1"
* active = true