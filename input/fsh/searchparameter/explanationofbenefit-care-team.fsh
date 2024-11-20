Instance: explanationofbenefit-care-team
InstanceOf: SearchParameter
Title: "ExplanationOfBenefit_Careteam"
Description: "Member of the CareTeam"
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension.valueCode = #trial-use
* url = "http://hl7.org/fhir/us/carin-bb/SearchParameter/explanationofbenefit-care-team"
* version = "2.1.0"
* name = "ExplanationOfBenefit_Careteam"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/ExplanationOfBenefit-care-team"
* status = #active
* experimental = false
* date = "2019-11-01T09:29:23+11:00"
* publisher = "HL7 International / Financial Management"
* contact.name = "HL7 International / Financial Management"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://www.hl7.org/Special/committees/fm"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "fm@lists.HL7.org"
* description = "Member of the CareTeam"
* jurisdiction = urn:iso:std:iso:3166#US
* code = #care-team
* base = #ExplanationOfBenefit
* type = #reference
* expression = "ExplanationOfBenefit.careTeam.provider"
* xpath = "f:ExplanationOfBenefit/f:careTeam/f:provider"
* xpathUsage = #normal
* target[0] = #Practitioner
* target[+] = #Organization
* target[+] = #PractitionerRole