Instance: explanationofbenefit-type
InstanceOf: SearchParameter
Title: "ExplanationOfBenefit_Type"
Description: "The type of the ExplanationOfBenefit"
Usage: #definition
* meta.versionId = "1"
* meta.lastUpdated = "2020-03-31T06:41:13.000+00:00"
* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension.valueCode = #trial-use
* url = "http://hl7.org/fhir/us/carin-bb/SearchParameter/explanationofbenefit-type"
* version = "2.1.0-snapshot"
* name = "ExplanationOfBenefit_Type"
* status = #active
* experimental = false
* date = "2020-03-31T19:48:45+10:00"
* publisher = "HL7 International / Financial Management"
* contact.name = "HL7 International / Financial Management"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://www.hl7.org/Special/committees/fm"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "fm@lists.HL7.org"
* description = "The type of the ExplanationOfBenefit"
* jurisdiction = urn:iso:std:iso:3166#US
* code = #type
* base = #ExplanationOfBenefit
* type = #token
* expression = "ExplanationOfBenefit.type"
* xpath = "f:ExplanationOfBenefit/f:type"
* xpathUsage = #normal