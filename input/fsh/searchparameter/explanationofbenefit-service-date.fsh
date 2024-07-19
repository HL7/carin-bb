Instance: explanationofbenefit-service-date
InstanceOf: SearchParameter
Title: "ExplanationOfBenefit_ServiceDate"
Description: "The service-date search parameter is meant to simplify the search for the client enabling them to use one search parameter across EoB types for the service date. With this parameter. the client doesn't need to know that for inpatient and outpatient institutional EOB dates they need to search by billablePeriod, for a pharmacy EOB by item.servicedDate, for a professional and non-clinician EOB - by item.servicedPeriod and for an oral EOB – by item.servicedPeriod."
Usage: #definition
* meta.versionId = "1"
* meta.lastUpdated = "2020-03-31T06:41:13.000+00:00"
* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension.valueCode = #trial-use
* url = "http://hl7.org/fhir/us/carin-bb/SearchParameter/explanationofbenefit-service-date"
* version = "2.1.0-snapshot"
* name = "ExplanationOfBenefit_ServiceDate"
* status = #active
* experimental = false
* date = "2020-03-31T09:48:45+00:00"
* publisher = "HL7 International / Financial Management"
* contact.name = "HL7 International / Financial Management"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://www.hl7.org/Special/committees/fm"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "fm@lists.HL7.org"
* description = "The service-date search parameter is meant to simplify the search for the client enabling them to use one search parameter across EoB types for the service date. With this parameter. the client doesn't need to know that for inpatient and outpatient institutional EOB dates they need to search by billablePeriod, for a pharmacy EOB by item.servicedDate, for a professional and non-clinician EOB - by item.servicedPeriod and for an oral EOB – by item.servicedPeriod."
* jurisdiction = urn:iso:std:iso:3166#US
* code = #service-date
* base = #ExplanationOfBenefit
* type = #date
* expression = "ExplanationOfBenefit.billablePeriod | ExplanationOfBenefit.item.serviced"
* xpath = "f:ExplanationOfBenefit/f:billablePeriod | f:ExplanationOfBenefit/f:item/f:servicedDate | f:ExplanationOfBenefit/f:item/f:servicedPeriod"
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