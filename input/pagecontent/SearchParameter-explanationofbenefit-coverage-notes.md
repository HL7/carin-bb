```
Instance: explanationofbenefit-coverage
InstanceOf: SearchParameter
Title: "ExplanationOfBenefit_Coverage"
Description: "The plan under which the claim was adjudicated"
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension.valueCode = #trial-use
* url = "http://hl7.org/fhir/us/carin-bb/SearchParameter/explanationofbenefit-coverage"
* version = "1.2.0"
* name = "ExplanationOfBenefit_Coverage"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/ExplanationOfBenefit-coverage"
* status = #draft
* experimental = false
* date = "2019-11-01T09:29:23+11:00"
* publisher = "HL7 Financial Management Working Group"
* contact.name = "HL7 Financial Management Working Group"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://www.hl7.org/Special/committees/fm"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "fm@lists.HL7.org"
* description = "The plan under which the claim was adjudicated"
* jurisdiction = urn:iso:std:iso:3166#US
* code = #coverage
* base = #ExplanationOfBenefit
* type = #reference
* expression = "ExplanationOfBenefit.insurance.coverage"
* xpath = "f:ExplanationOfBenefit/f:insurance/f:coverage"
* xpathUsage = #normal
* target = #Coverage
```