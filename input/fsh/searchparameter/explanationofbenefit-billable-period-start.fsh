Instance: explanationofbenefit-billable-period-start
InstanceOf: SearchParameter
Title: "ExplanationOfBenefit_ServiceStartDate"
Description: "Starting Date of the service for the EOB using billablePeriod.period.start. The billable-period-start search parameter using the billablePeriod.period.start provides results with the earliest billablePeriod.start from a professional and non-clinician EOB or an oral EOB."
Usage: #definition
* meta.versionId = "1"
* meta.lastUpdated = "2021-04-20T10:19:00.000+00:00"
* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension.valueCode = #trial-use
* url = "http://hl7.org/fhir/us/carin-bb/SearchParameter/explanationofbenefit-billable-period-start"
* version = "1.2.0"
* name = "ExplanationOfBenefit_ServiceStartDate"
* status = #active
* experimental = false
* date = "2022-04-20T10:19:00+00:00"
* publisher = "HL7 Financial Management Working Group"
* contact.name = "HL7 Financial Management Working Group"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://www.hl7.org/Special/committees/fm"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "fm@lists.HL7.org"
* description = "Starting Date of the service for the EOB using billablePeriod.period.start. The billable-period-start search parameter using the billablePeriod.period.start provides results with the earliest billablePeriod.start from a professional and non-clinician EOB or an oral EOB."
* jurisdiction = urn:iso:std:iso:3166#US
* code = #billable-period-start
* base = #ExplanationOfBenefit
* type = #date
* expression = "ExplanationOfBenefit.billablePeriod.start"
* xpath = "f:ExplanationOfBenefit/f:billablePeriod.start"
* xpathUsage = #normal
* comparator[0] = #eq
* comparator[+] = #ne
* comparator[+] = #gt
* comparator[+] = #ge
* comparator[+] = #lt
* comparator[+] = #le
* comparator[+] = #sa
* comparator[+] = #eb
* comparator[+] = #ap