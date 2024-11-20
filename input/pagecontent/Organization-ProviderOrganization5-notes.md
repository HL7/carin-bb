```
Instance: ProviderOrganization5
InstanceOf: http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Organization|2.1.0
Title: "Provider Organization 5"
Description: "Provider Organization 5"
Usage: #example
* meta.lastUpdated = "2020-05-04T03:02:01-04:00"
* identifier
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#NPI "National Provider Identifier"
    * text = "National Provider Identifier"
  * system = "http://hl7.org/fhir/sid/us-npi"
  * value = "9941339100"
* active = true
* name = "Black Medical Group"
* address
  * line = "Attn: Black Medical Group"
  * city = "Pittsburgh"
  * state = "PA"
  * postalCode = "15222"
  * country = "USA"
* contact.telecom
  * system = #phone
  * value = "555-555-5560"
  * use = #work
```