Instance: Payer1
InstanceOf: C4BBOrganization
Title: "Payer Organization Example 1"
Description: "Payer Organization Example 1"
Usage: #example
* meta.profile[+] = Canonical(C4BBOrganization|2.1.0)
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* identifier[NPI].type = $HL7IdentifierType#NPI
* identifier[NPI].value = "9941339100"
* identifier[payerid].type = $C4BBIdentifierTypeCS#payerid
* identifier[payerid].value = "901234"
* name = "Organization Payer 1"
* active = true