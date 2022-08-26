Instance: OrganizationPayer1
InstanceOf: C4BBOrganization
Description: "Payer1"
Usage: #example
* meta.profile[+] = Canonical(C4BBOrganization|1.2.0)
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* identifier[NPI].type = $HL7IdentifierType#NPI
* identifier[NPI].value = "345678"
* identifier[payerid].type = $C4BBIdentifierTypeCS#payerid
* identifier[payerid].value = "901234"
* name = "Organization Payer 1"
* active = true