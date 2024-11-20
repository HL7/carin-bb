```
Instance: ProviderOrganization2
InstanceOf: http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Organization|2.1.0
Title: "Provider Organization 2"
Description: "Provider Organization 2"
Usage: #example
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* identifier[0]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#NPI
  * system = "http://hl7.org/fhir/sid/us-npi"
  * value = "9941339100"
* identifier[+]
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#TAX
  * system = "urn:oid:2.16.840.1.113883.4.4"
  * value = "123-45-6789"
* active = true
* name = "Provider 1"
```