```
Instance: DentalPayer1
InstanceOf: http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Organization|2.1.0-snapshot1
Title: "Dental Payer1"
Description: "Dental Payer1"
Usage: #example
* meta.lastUpdated = "2021-01-01T10:23:11+00:00"
* language = #en-US
* identifier[0]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#NPI
  * system = "http://hl7.org/fhir/sid/us-npi"
  * value = "9941339100"
* identifier[+]
  * type = C4BBIdentifierType#payerid
  * value = "66783JJT"
* active = true
* name = "INSURANCE COMPANY XYZ"
```