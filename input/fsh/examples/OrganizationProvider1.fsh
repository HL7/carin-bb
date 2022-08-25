Instance: OrganizationProvider1
InstanceOf: C4BBOrganization
Title: "OrganizationProvider1"
Description: "Provider 1"
Usage: #example
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Organization|1.2.0"
* language = #en-US
* identifier[0].type = $v2-0203#NPI
* identifier[=].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[=].value = "345678"
* identifier[+].type = $v2-0203#TAX
* identifier[=].value = "123-45-6789"
* active = true
* name = "Provider 1"