Instance: explanationofbenefit-service-start-date
InstanceOf: SearchParameter
Title: "ExplanationOfBenefit_ServiceStartDate"
Description: "Starting Date of the service for the EOB. The service-start-date search parameter simplifies search, since a client doesn't need to know that for inpatient and outpatient institutional EOB dates they need to search by billablePeriod.start, for a pharmacy EOB by item.servicedDate, for a professional and non-clinician EOB - by item.servicedPeriod.start and for an oral EOB – by item.servicedPeriod.start."
Usage: #definition
* meta.versionId = "1"
* meta.lastUpdated = "2021-11-05T06:41:13.000+00:00"
* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension.valueCode = #trial-use
* url = "http://hl7.org/fhir/us/carin-bb/SearchParameter/explanationofbenefit-service-start-date"
* version = "2.0.0"
* name = "ExplanationOfBenefit_ServiceStartDate"
* status = #active
* experimental = false
* date = "2021-11-05T09:48:45+00:00"
* publisher = "HL7 Financial Management Working Group"
* contact.name = "HL7 Financial Management Working Group"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://www.hl7.org/Special/committees/fm"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "fm@lists.HL7.org"
* description = "Starting Date of the service for the EOB. The service-start-date search parameter simplifies search, since a client doesn't need to know that for inpatient and outpatient institutional EOB dates they need to search by billablePeriod.start, for a pharmacy EOB by item.servicedDate, for a professional and non-clinician EOB - by item.servicedPeriod.start and for an oral EOB – by item.servicedPeriod.start."
* jurisdiction = urn:iso:std:iso:3166#US
* code = #service-start-date
* base = #ExplanationOfBenefit
* type = #date
* expression = "ExplanationOfBenefit.billablePeriod.start | ExplanationOfBenefit.item.servicedDate | ExplanationOfBenefit.item.servicedPeriod.start"
* xpath = "f:ExplanationOfBenefit/f:billablePeriod.start | f:ExplanationOfBenefit/f:item/f:servicedDate | f:ExplanationOfBenefit/f:item/f:servicedPeriod.start"
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