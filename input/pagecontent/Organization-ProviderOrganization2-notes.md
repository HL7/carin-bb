```
Instance: ProviderOrganization2
InstanceOf: Organization
Title: "Provider Organization 2"
Description: "Provider Organization 2"
Usage: #example
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Organization|2.1.0"
* language = #en-US
* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#NPI
* identifier[=].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[=].value = "9941339100"
* identifier[+].type = http://terminology.hl7.org/CodeSystem/v2-0203#TAX
* identifier[=].system = "urn:oid:2.16.840.1.113883.4.4"
* identifier[=].value = "123-45-6789"
* active = true
* name = "Provider 1"
```