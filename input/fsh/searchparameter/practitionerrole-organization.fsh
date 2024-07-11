Instance: practitionerrole-organization
InstanceOf: SearchParameter
Title: "ExplanationOfBenefit_Organization"
Description: "The identity of the organization the practitioner represents / acts on behalf of"
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension.valueCode = #trial-use
* url = "http://hl7.org/fhir/us/carin-bb/SearchParameter/practitionerrole-organization"
* version = "2.0.0"
* name = "ExplanationOfBenefit_Organization"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/PractitionerRole-organization"
* status = #active
* experimental = false
* date = "2019-11-01T09:29:23+11:00"
* publisher = "HL7 International / Financial Management"
* contact.name = "HL7 International / Financial Management"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://www.hl7.org/Special/committees/fm"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "fm@lists.HL7.org"
* description = "The identity of the organization the practitioner represents / acts on behalf of"
* jurisdiction = urn:iso:std:iso:3166#US
* code = #organization
* base = #PractitionerRole
* type = #reference
* expression = "PractitionerRole.organization"
* xpath = "f:PractitionerRole/f:organization"
* xpathUsage = #normal
* target = #Organization