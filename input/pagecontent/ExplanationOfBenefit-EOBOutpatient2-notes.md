```
Instance: EOBOutpatient2
InstanceOf: ExplanationOfBenefit
Title: "EOB Outpatient Institutional - Example 2"
Description: "EOB Outpatient Institutional - Example 2"
Usage: #example
* meta.lastUpdated = "2020-10-13T11:10:24-04:00"
* meta.source = "Organization/PayerOrganizationExample1"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Outpatient-Institutional|2.1.0-snapshot"
* identifier.type = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBIdentifierType#uc "Unique Claim ID"
  * text = "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber"
* identifier.system = "https://www.upmchealthplan.com/fhir/EOBIdentifier"
* identifier.value = "OutpatientEOBExample1"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
  * text = "Institutional"
* subType = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBInstitutionalClaimSubType#outpatient
  * text = "Outpatient"
* use = #claim
* patient = Reference(Patient1)
* billablePeriod.start = "2020-09-29"
* billablePeriod.end = "2020-09-29"
* created = "2020-10-10T00:00:00-04:00"
* insurer = Reference(Payer2) "UPMC Health Plan"
* provider = Reference(ProviderOrganization5)
* payee.type = http://terminology.hl7.org/CodeSystem/payeetype#provider "Provider"
  * text = "Any benefit payable will be paid to the provider (Assignment of Benefit)."
* payee.party = Reference(ProviderOrganization6)
* outcome = #complete
* careTeam[0].sequence = 1
* careTeam[=].provider = Reference(Practitioner1)
* careTeam[=].role = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBClaimCareTeamRole#attending "Attending"
  * text = "The attending physician"
* careTeam[+].sequence = 2
* careTeam[=].provider = Reference(Practitioner3)
* careTeam[=].role = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBClaimCareTeamRole#referring "Referring"
  * text = "The referring physician"
* supportingInfo.sequence = 1
* supportingInfo.category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#clmrecvddate
* supportingInfo.timingDate = "2020-10-10"
* diagnosis[0].sequence = 1
* diagnosis[=].diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#I95.1
* diagnosis[=].type = http://terminology.hl7.org/CodeSystem/ex-diagnosistype#principal "Principal Diagnosis"
  * text = "The single medical diagnosis that is most relevant to the patient's chief complaint or need for treatment."
* diagnosis[+].sequence = 2
* diagnosis[=].diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#I95.1
* diagnosis[=].type = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBClaimDiagnosisType#other "Other"
  * text = "Required when other conditions coexist or develop subsequently during the treatment"
* diagnosis[+].sequence = 3
* diagnosis[=].diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#L97.529
* diagnosis[=].type = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBClaimDiagnosisType#other "Other"
  * text = "Required when other conditions coexist or develop subsequently during the treatment"
* diagnosis[+].sequence = 4
* diagnosis[=].diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#I73.9
* diagnosis[=].type = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBClaimDiagnosisType#other "Other"
  * text = "Required when other conditions coexist or develop subsequently during the treatment"
* insurance.focal = true
* insurance.coverage = Reference(Coverage1)
* item[0].sequence = 1
* item[=].revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0551
* item[=].productOrService = http://www.ama-assn.org/go/cpt#99231
* item[=].servicedDate = "2020-09-29"
* item[=].locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#12
  * text = "HOME"
* item[=].adjudication[0].category = http://terminology.hl7.org/CodeSystem/adjudication#submitted "Submitted Amount"
* item[=].adjudication[=].category.text = "The total submitted amount for the claim or group or line item."
* item[=].adjudication[=].amount.value = 84.4
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = http://terminology.hl7.org/CodeSystem/adjudication#copay "CoPay"
  * text = "Patient Co-Payment"
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = http://terminology.hl7.org/CodeSystem/adjudication#eligible "Eligible Amount"
  * text = "Amount of the change which is considered for adjudication."
* item[=].adjudication[=].amount.value = 56.52
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = http://terminology.hl7.org/CodeSystem/adjudication#deductible "Deductible"
  * text = "Amount deducted from the eligible amount prior to adjudication."
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = http://terminology.hl7.org/CodeSystem/adjudication#benefit "Benefit Amount"
  * text = "Amount payable under the coverage"
* item[=].adjudication[=].amount.value = 56.52
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudication#noncovered "Noncovered"
  * text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[+].sequence = 2
* item[=].revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0023
* item[=].productOrService = http://www.ama-assn.org/go/cpt#99231
* item[=].servicedDate = "2020-09-29"
* item[=].locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#12
  * text = "HOME"
* item[=].adjudication[0].category = http://terminology.hl7.org/CodeSystem/adjudication#submitted "Submitted Amount"
* item[=].adjudication[=].category.text = "The total submitted amount for the claim or group or line item."
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudication#noncovered "Noncovered"
  * text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* adjudication.category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudicationDiscriminator#benefitpaymentstatus
* adjudication.reason = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBPayerAdjudicationStatus#innetwork
* total[0].category = http://terminology.hl7.org/CodeSystem/adjudication#eligible "Eligible Amount"
* total[=].category.text = "Amount of the change which is considered for adjudication."
* total[=].amount.value = 56.52
* total[=].amount.currency = #USD
* total[+].category = http://terminology.hl7.org/CodeSystem/adjudication#deductible "Deductible"
  * text = "Amount deducted from the eligible amount prior to adjudication."
* total[=].amount.value = 0
* total[=].amount.currency = #USD
* total[+].category = http://terminology.hl7.org/CodeSystem/adjudication#copay "CoPay"
  * text = "Patient Co-Payment"
* total[=].amount.value = 0
* total[=].amount.currency = #USD
* total[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudication#noncovered "Noncovered"
  * text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
* total[=].amount.value = 0
* total[=].amount.currency = #USD
* total[+].category = http://terminology.hl7.org/CodeSystem/adjudication#benefit "Benefit Amount"
  * text = "Amount payable under the coverage"
* total[=].amount.value = 56.52
* total[=].amount.currency = #USD
* total[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudication#memberliability "Member liability"
  * text = "The amount of the member's liability."
* total[=].amount.value = 0
* total[=].amount.currency = #USD
```