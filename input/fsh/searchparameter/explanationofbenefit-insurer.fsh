Instance: explanationofbenefit-insurer
InstanceOf: SearchParameter
Title: "ExplanationOfBenefit_Insurer"
Description: "The party responsible for the claim"
Usage: #definition
* meta.versionId = "1"
* meta.lastUpdated = "2020-03-31T06:41:13.000+00:00"
* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension.valueCode = #trial-use
* url = "http://hl7.org/fhir/us/carin-bb/SearchParameter/explanationofbenefit-insurer"
* version = "2.1.0-snapshot1"
* name = "ExplanationOfBenefit_Insurer"
* status = #active
* experimental = false
* date = "2020-03-31T09:48:45+00:00"
* publisher = "HL7 International / Financial Management"
* contact.name = "HL7 International / Financial Management"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://www.hl7.org/Special/committees/fm"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "fm@lists.HL7.org"
* description = "The party responsible for the claim"
* jurisdiction = urn:iso:std:iso:3166#US
* code = #insurer
* base = #ExplanationOfBenefit
* type = #reference
* expression = "ExplanationOfBenefit.insurer"
* xpath = "f:ExplanationOfBenefit/f:insurer"
* xpathUsage = #normal
* target = #Organization