Instance: coverage-payor
InstanceOf: SearchParameter
Title: "Coverage_Payor"
Description: "The identity of the insurer or party paying for services"
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension.valueCode = #trial-use
* url = "http://hl7.org/fhir/us/carin-bb/SearchParameter/coverage-payor"
* version = "1.2.0"
* name = "Coverage_Payor"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Coverage-payor"
* status = #draft
* experimental = false
* date = "2019-11-01T09:29:23+11:00"
* publisher = "HL7 Financial Management Working Group"
* contact.name = "HL7 Financial Management Working Group"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://www.hl7.org/Special/committees/fm"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "fm@lists.HL7.org"
* description = "The identity of the insurer or party paying for services"
* jurisdiction = urn:iso:std:iso:3166#US
* code = #payor
* base = #Coverage
* type = #reference
* expression = "Coverage.payor"
* xpath = "f:Coverage/f:payor"
* xpathUsage = #normal
* target[0] = #Organization
* target[+] = #Patient
* target[+] = #RelatedPerson