Instance: OrganizationDentalPayer1
InstanceOf: C4BBOrganization
Title: "OrganizationDentalPayer1"
Description: "Dental Payer1"
Usage: #example
* meta.lastUpdated = "2021-01-01T10:23:11+00:00"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Organization|1.2.0"
* language = #en-US
* identifier[0].type = $v2-0203#NPI
* identifier[=].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[=].value = "467678"
* identifier[+].type = $C4BBIdentifierType#payerid
* identifier[=].value = "66783JJT"
* active = true
* name = "INSURANCE COMPANY XYZ"