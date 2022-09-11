Instance: explanationofbenefit-identifier
InstanceOf: SearchParameter
Title: "ExplanationOfBenefit_Identifier"
Description: "The business/claim identifier of the Explanation of Benefit"
Usage: #definition
* meta.versionId = "1"
* meta.lastUpdated = "2020-03-31T06:41:13.000+00:00"
* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension.valueCode = #trial-use
* url = "http://hl7.org/fhir/us/carin-bb/SearchParameter/explanationofbenefit-identifier"
* version = "2.0.0"
* name = "ExplanationOfBenefit_Identifier"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/ExplanationOfBenefit-identifier"
* status = #draft
* experimental = false
* date = "2020-03-31T19:48:45+10:00"
* publisher = "HL7 Financial Management Working Group"
* contact.name = "HL7 Financial Management Working Group"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://www.hl7.org/Special/committees/fm"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "fm@lists.HL7.org"
* description = "The business/claim identifier of the Explanation of Benefit"
* jurisdiction = urn:iso:std:iso:3166#US
* code = #identifier
* base = #ExplanationOfBenefit
* type = #token
* expression = "ExplanationOfBenefit.identifier"
* xpath = "f:ExplanationOfBenefit/f:identifier"
* xpathUsage = #normal