Instance: OrganizationDentalPayer1
InstanceOf: C4BBOrganization
Description: "Dental Payer1"
Usage: #example
* id = "OrganizationDentalPayer1"
* meta.profile[+] = Canonical(C4BBOrganization|1.2.0)
* meta.lastUpdated = "2021-01-01T10:23:11+00:00"
* language = #en-US
* identifier[NPI].type = $HL7IdentifierType#NPI
* identifier[NPI].value = "467678"
* identifier[payerid].type = $C4BBIdentifierTypeCS#payerid
* identifier[payerid].value = "66783JJT"
* name = "INSURANCE COMPANY XYZ"
* active = true
