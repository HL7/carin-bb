```
Instance: DentalPayer1
InstanceOf: Organization
Title: "Dental Payer1"
Description: "Dental Payer1"
Usage: #example
* meta.lastUpdated = "2021-01-01T10:23:11+00:00"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Organization|2.1.0-snapshot1"
* language = #en-US
* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#NPI
* identifier[=].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[=].value = "9941339100"
* identifier[+].type = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBIdentifierType#payerid
* identifier[=].value = "66783JJT"
* active = true
* name = "INSURANCE COMPANY XYZ"
```