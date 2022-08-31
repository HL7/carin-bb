```
Instance: practitionerrole-practitioner
InstanceOf: SearchParameter
Title: "ExplanationOfBenefit_Practitioner"
Description: "Practitioner that is able to provide the defined services for the organization"
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension.valueCode = #trial-use
* url = "http://hl7.org/fhir/us/carin-bb/SearchParameter/practitionerrole-practitioner"
* version = "1.2.0"
* name = "ExplanationOfBenefit_Practitioner"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/PractitionerRole-practitioner"
* status = #draft
* experimental = false
* date = "2019-11-01T09:29:23+11:00"
* publisher = "HL7 Financial Management Working Group"
* contact.name = "HL7 Financial Management Working Group"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://www.hl7.org/Special/committees/fm"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "fm@lists.HL7.org"
* description = "Practitioner that is able to provide the defined services for the organization"
* jurisdiction = urn:iso:std:iso:3166#US
* code = #practitioner
* base = #PractitionerRole
* type = #reference
* expression = "PractitionerRole.practitioner"
* xpath = "f:PractitionerRole/f:practitioner"
* xpathUsage = #normal
* target = #Practitioner
```