Instance: Payer1
InstanceOf: Organization
Title: "OrganizationPayer1"
Description: "Payer1"
Usage: #example
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Organization|1.2.0"
* language = #en-US
* identifier[0].type = $v2-0203#NPI
* identifier[=].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[=].value = "345678"
* identifier[+].type = $C4BBIdentifierType#payerid
* identifier[=].value = "901234"
* active = true
* name = "Payer 1"