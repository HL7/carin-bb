Instance: explanationofbenefit-patient
InstanceOf: SearchParameter
Title: "ExplanationOfBenefit_Patient"
Description: "The reference to the patient"
Usage: #definition
* meta.versionId = "1"
* meta.lastUpdated = "2019-12-16T06:41:13.000+00:00"
* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension.valueCode = #trial-use
* url = "http://hl7.org/fhir/us/carin-bb/SearchParameter/explanationofbenefit-patient"
* version = "2.1.0"
* name = "ExplanationOfBenefit_Patient"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/ExplanationOfBenefit-patient"
* status = #active
* experimental = false
* date = "2019-12-01T09:48:45+00:00"
* publisher = "HL7 International / Financial Management"
* contact.name = "HL7 International / Financial Management"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://www.hl7.org/Special/committees/fm"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "fm@lists.HL7.org"
* description = "The reference to the patient"
* jurisdiction = urn:iso:std:iso:3166#US
* code = #patient
* base = #ExplanationOfBenefit
* type = #reference
* expression = "ExplanationOfBenefit.patient"
* xpath = "f:ExplanationOfBenefit/f:patient"
* xpathUsage = #normal
* target = #Patient