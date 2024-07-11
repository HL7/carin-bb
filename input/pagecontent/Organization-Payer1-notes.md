```
Instance: Payer1
InstanceOf: Organization
Title: "Payer 1"
Description: "Payer 1"
Usage: #example
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Organization|2.1.0"
* language = #en-US
* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#NPI
* identifier[=].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[=].value = "9941339100"
* identifier[+].type = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBIdentifierType#payerid
* identifier[=].value = "901234"
* active = true
* name = "Organization Payer 1"
```