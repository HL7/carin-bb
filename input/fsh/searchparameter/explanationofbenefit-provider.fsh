Instance: explanationofbenefit-provider
InstanceOf: SearchParameter
Title: "ExplanationOfBenefit_Provider"
Description: "The reference to the provider"
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension.valueCode = #trial-use
* url = "http://hl7.org/fhir/us/carin-bb/SearchParameter/explanationofbenefit-provider"
* version = "2.0.0"
* name = "ExplanationOfBenefit_Provider"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/ExplanationOfBenefit-provider"
* status = #active
* experimental = false
* date = "2019-11-01T09:29:23+11:00"
* publisher = "HL7 International / Financial Management"
* contact.name = "HL7 International / Financial Management"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://www.hl7.org/Special/committees/fm"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "fm@lists.HL7.org"
* description = "The reference to the provider"
* jurisdiction = urn:iso:std:iso:3166#US
* code = #provider
* base = #ExplanationOfBenefit
* type = #reference
* expression = "ExplanationOfBenefit.provider"
* xpath = "f:ExplanationOfBenefit/f:provider"
* xpathUsage = #normal
* target[0] = #Practitioner
* target[+] = #Organization
* target[+] = #PractitionerRole