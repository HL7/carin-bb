Instance: c4bb
InstanceOf: CapabilityStatement
Title: "C4BB CapabilityStatement"
Description: """This Section describes the expected capabilities of the C4BB Server actor which is responsible for providing responses to the queries submitted by the C4BB Requestors. 

The EOB Resource is the focal Consumer-Directed Payer Data Exchange (CDPDE) Resource. Several Reference Resources are defined directly/indirectly from the EOB: Coverage, Patient, Organization (Payer ID), Practioner, and Organization (Facility).

The Coverage Reference Resource SHALL be returned with data that was effective as of the date of service of the claim; for example, the data will reflect the employer name in effect at that time. However, for other reference resources, payers MAY decide to provide either the data that was in effect as of the date of service or the current data. All reference resources within the EOB will have meta.lastUpdated flagged as must support. Payers SHALL provide the last time the data was updated or the date of creation in the payers system of record, whichever comes last. Apps will use the meta.lastUpdated values to determine if the reference resources are as of the current date or date of service."""
Usage: #definition
* url = "http://hl7.org/fhir/us/carin-bb/CapabilityStatement/c4bb"
* version = "1.2.0"
* name = "CarinBbCapabilityStatement"
* title = "C4BB CapabilityStatement"
* status = #active
* experimental = false
* date = "2021-11-22"
* publisher = "HL7 Financial Management Working Group"
* contact.name = "HL7 Financial Management Working Group"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://www.hl7.org/Special/committees/fm"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "fm@lists.HL7.org"
* description = "This Section describes the expected capabilities of the C4BB Server actor which is responsible for providing responses to the queries submitted by the C4BB Requestors. \n\nThe EOB Resource is the focal Consumer-Directed Payer Data Exchange (CDPDE) Resource. Several Reference Resources are defined directly/indirectly from the EOB: Coverage, Patient, Organization (Payer ID), Practioner, and Organization (Facility).\n\nThe Coverage Reference Resource SHALL be returned with data that was effective as of the date of service of the claim; for example, the data will reflect the employer name in effect at that time. However, for other reference resources, payers MAY decide to provide either the data that was in effect as of the date of service or the current data. All reference resources within the EOB will have meta.lastUpdated flagged as must support. Payers SHALL provide the last time the data was updated or the date of creation in the payers system of record, whichever comes last. Apps will use the meta.lastUpdated values to determine if the reference resources are as of the current date or date of service."
* jurisdiction = urn:iso:std:iso:3166#US
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[+] = #json
* patchFormat = #application/json-patch+json
* implementationGuide = "http://hl7.org/fhir/us/carin-bb/ImplementationGuide/hl7.fhir.us.carin-bb"
* rest.mode = #server
* rest.documentation = "The C4BB  Server **SHALL**:\n\n1. Support all profiles defined in this Implementation Guide..\n1.  Implement the RESTful behavior according to the FHIR specification.\n1. Return the following response classes:\n   - (Status 400): invalid parameter\n   - (Status 401/4xx): unauthorized request\n   - (Status 403): insufficient scope\n   - (Status 404): unknown resource\n   - (Status 410): deleted resource.\n1. Support json source formats for all CARIN-BB interactions.\n1. Identify the CARIN-BB  profiles supported as part of the FHIR `meta.profile` attribute for each instance.\n1. Support the searchParameters on each profile  individually and in combination.\n\nThe C4BB  Server **SHOULD**:\n\n1. Support xml source formats for all C4BB interactions.\n"
* rest.security.description = "1. See the [General Security Considerations](Security_And_Privacy_Considerations.html) section for requirements and recommendations.\n1. A server **SHALL** reject any unauthorized requests by returning an `HTTP 401 Unauthorized`, `HTTP 403 Forbidden`, or `HTTP 404 Not Found`"
* rest.resource[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].type = #Coverage
* rest.resource[=].supportedProfile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Coverage"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchInclude = "Coverage:payor"
* rest.resource[=].searchInclude.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchInclude.extension.valueCode = #SHALL
* rest.resource[=].searchParam.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam.extension.valueCode = #SHALL
* rest.resource[=].searchParam.name = "_id"
* rest.resource[=].searchParam.definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam.type = #token
* rest.resource[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].type = #ExplanationOfBenefit
* rest.resource[=].supportedProfile[0] = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit"
* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Inpatient-Institutional"
* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Outpatient-Institutional"
* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Oral"
* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Pharmacy"
* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Professional-NonClinician"
* rest.resource[=].documentation = "When an EOB references another resource (e.g., Patient or Practitioner), the reference may be versioned or versionless. Payers SHALL use versioned references whenever they maintain point-in-time data (data that was effective as of the date of service or date of admission on the claim), but MAY use versionless references when they do not maintain versioned data. Clients MAY request referenced resources as part of an EOB search (by supplying the _include parameter) or directly using read or vread. Payers SHALL support both approaches, and SHALL return the same content for referenced resources in either case. “:iterate\" should be used if you request to include Coverage:payor in the EOB response bundle, e.g. GET [base]/ExplanationOfBenefit?_id[parameter=value]&_include=ExplanationOfBenefit:coverage&_include:iterate=Coverage:payor."
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[=].documentation = "Searches using service-date, _lastUpdated, or type require a patient search argument.\n\n_include:* SHALL be supported.\n\n\nNote: `_include=ExplanationOfBenefit:*` means, at minimum, the resources that are included as reference type search parameters for the ExplanationOfBenefit resource on the server. Servers claiming compliance to this guide will, at minimum, support the include of `patient`, `provider`, `care-team`, `coverage`, and `insurer`, and will support returning all of them in support `ExplanationOfBenefit:*`. Not all of these are defined as required search parameters, but are defined as part of the _include requirement. For example, the insurer search parameter is not required because in the context of the use case, it is anticipated there will ever be one insurer. It however must be returned in the `_include=ExplanationOfBenefit:*` results. The means in which this is done (including defining all of the _include as search parameters) is not defined.\n"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].referencePolicy = #resolves
* rest.resource[=].searchInclude[0] = "ExplanationOfBenefit:patient"
* rest.resource[=].searchInclude[+] = "ExplanationOfBenefit:provider"
* rest.resource[=].searchInclude[+] = "ExplanationOfBenefit:care-team"
* rest.resource[=].searchInclude[+] = "ExplanationOfBenefit:coverage"
* rest.resource[=].searchInclude[+] = "ExplanationOfBenefit:insurer"
* rest.resource[=].searchInclude[+] = "ExplanationOfBenefit:*"
* rest.resource[=].searchInclude[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchInclude[=].extension.valueCode = #SHALL
* rest.resource[=].searchInclude[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchInclude[=].extension.valueCode = #SHALL
* rest.resource[=].searchInclude[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchInclude[=].extension.valueCode = #SHALL
* rest.resource[=].searchInclude[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchInclude[=].extension.valueCode = #SHALL
* rest.resource[=].searchInclude[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchInclude[=].extension.valueCode = #SHALL
* rest.resource[=].searchInclude[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchInclude[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/carin-bb/SearchParameter/explanationofbenefit-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "_lastUpdated"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/carin-bb/SearchParameter/explanationofbenefit-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/carin-bb/SearchParameter/explanationofbenefit-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "service-date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/carin-bb/SearchParameter/explanationofbenefit-service-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "service-start-date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/carin-bb/SearchParameter/explanationofbenefit-service-start-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "billable-period-start"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/carin-bb/SearchParameter/explanationofbenefit-billable-period-start"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].type = #Organization
* rest.resource[=].supportedProfile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Organization"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].referencePolicy = #resolves
* rest.resource[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].type = #Patient
* rest.resource[=].supportedProfile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Patient"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].referencePolicy = #resolves
* rest.resource[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].type = #Practitioner
* rest.resource[=].supportedProfile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Practitioner"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].referencePolicy = #resolves