```
Instance: Payer1
InstanceOf: http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Organization|2.1.0
Title: "Payer 1"
Description: "Payer 1"
Usage: #example
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* identifier[0]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#NPI
  * system = "http://hl7.org/fhir/sid/us-npi"
  * value = "9941339100"
* identifier[+]
  * type = C4BBIdentifierType#payerid
  * value = "901234"
* active = true
* name = "Organization Payer 1"
```