```
Instance: EOBProfessionalTransportation1
InstanceOf: ExplanationOfBenefit
Title: "EOB Professional - Transportation 1"
Description: "EOB Professional - Transportation 1"
Usage: #example
* meta.lastUpdated = "2022-09-10T14:46:05-04:00"
* meta.source = "Organization/PayerOrganizationExample1"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Professional-NonClinician|2.1.0-snapshot"
* identifier.type = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBIdentifierType#uc "Unique Claim ID"
  * text = "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber"
* identifier.system = "https://www.example.com/fhir/EOBIdentifier"
* identifier.value = "ProfessionalTransportationEOBExample1"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#professional
  * text = "Professional"
* use = #claim
* patient = Reference(Patient1)
* billablePeriod.start = "2022-09-10"
* created = "2022-09-10T14:46:05-04:00"
* insurer = Reference(Payer2) "UPMC Health Plan"
* provider = Reference(ProviderTransportationOrganization1)
* payee.type = http://terminology.hl7.org/CodeSystem/payeetype#provider "Provider"
  * text = "Any benefit payable will be paid to the provider (Assignment of Benefit)."
* payee.party = Reference(ProviderTransportationOrganization1)
* outcome = #complete
* careTeam.sequence = 1
* careTeam.provider = Reference(ProviderTransportationOrganization1)
* careTeam.role = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBClaimCareTeamRole#rendering "Rendering provider"
  * text = "The rendering care provider."
* careTeam.qualification = http://nucc.org/provider-taxonomy#343900000X "Non-emergency Medical Transport (VAN)"
* supportingInfo[0].sequence = 1
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#clmrecvddate "Claim Received Date"
  * text = "Date the claim was received by the payer."
* supportingInfo[=].timingDate = "2022-09-11"
* supportingInfo[+].sequence = 2
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#patientweight
* supportingInfo[=].valueQuantity.value = 160
* supportingInfo[=].valueQuantity.system = "http://unitsofmeasure.org"
* supportingInfo[=].valueQuantity.unit = "[lb_av]"
* supportingInfo[+].sequence = 3
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#ambulancetransportreason
* supportingInfo[=].reason = https://x12.org/codesystem.x12.org/5010/1317#B "Patient was transported for the benefit of a preferred physician"
* supportingInfo[+].sequence = 4
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#transportationdistance
* supportingInfo[=].valueQuantity.value = 21
* supportingInfo[=].valueQuantity.system = "http://unitsofmeasure.org"
* supportingInfo[=].valueQuantity.unit = "[mi_i]"
* supportingInfo[+].sequence = 5
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#transportationdistance
* supportingInfo[=].valueQuantity.value = 22
* supportingInfo[=].valueQuantity.system = "http://unitsofmeasure.org"
* supportingInfo[=].valueQuantity.unit = "[mi_i]"
* supportingInfo[+].sequence = 6
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#roudtrippurpose
* supportingInfo[=].valueString = "Trip to facility and then back home"
* supportingInfo[+].sequence = 7
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#stretcherpurpose
* supportingInfo[=].valueString = "Patient could not walk"
* supportingInfo[+].sequence = 8
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#pickuplocation
* supportingInfo[=].valueString = "Patient home; Pittsburgh; PA,15222"
* supportingInfo[+].sequence = 9
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#dropofflocation
* supportingInfo[=].valueString = "Orange Medical Group; Pittsburgh; PA,15222"
* supportingInfo[+].sequence = 10
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#pickuplocation
* supportingInfo[=].valueString = "Orange Medical Group; Pittsburgh; PA,15222"
* supportingInfo[+].sequence = 11
* supportingInfo[=].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBSupportingInfoType#dropofflocation
* supportingInfo[=].valueString = "Patient home; Pittsburgh; PA,15222"
* diagnosis.sequence = 1
* diagnosis.diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#I70.249
* diagnosis.type = http://terminology.hl7.org/CodeSystem/ex-diagnosistype#principal "Principal Diagnosis"
  * text = "The single medical diagnosis that is most relevant to the patient's chief complaint or need for treatment."
* insurance.focal = true
* insurance.coverage = Reference(Coverage1)
* item[0].sequence = 1
* item[=].informationSequence[0] = 2
* item[=].informationSequence[+] = 3
* item[=].informationSequence[+] = 4
* item[=].informationSequence[+] = 6
* item[=].informationSequence[+] = 7
* item[=].informationSequence[+] = 10
* item[=].informationSequence[+] = 11
* item[=].productOrService = http://www.ama-assn.org/go/cpt#A0428 "Ambulance service, basic life support, non-emergency transport (BLS)"
* item[=].servicedDate = "2022-09-10"
* item[=].locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#41
  * text = "Ambulance - Land"
* item[=].adjudication[0].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudicationDiscriminator#benefitpaymentstatus
* item[=].adjudication[=].reason = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBPayerAdjudicationStatus#innetwork
* item[=].adjudication[+].category = http://terminology.hl7.org/CodeSystem/adjudication#submitted "Submitted Amount"
  * text = "The total submitted amount for the claim or group or line item."
* item[=].adjudication[=].amount.value = 40.35
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = http://terminology.hl7.org/CodeSystem/adjudication#eligible "Eligible Amount"
  * text = "Amount of the change which is considered for adjudication."
* item[=].adjudication[=].amount.value = 40.35
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = http://terminology.hl7.org/CodeSystem/adjudication#deductible "Deductible"
  * text = "Amount deducted from the eligible amount prior to adjudication."
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = http://terminology.hl7.org/CodeSystem/adjudication#benefit "Benefit Amount"
  * text = "Amount payable under the coverage"
* item[=].adjudication[=].amount.value = 40.35
* item[=].adjudication[=].amount.currency = #USD
* item[+].sequence = 2
* item[=].informationSequence[0] = 2
* item[=].informationSequence[+] = 3
* item[=].informationSequence[+] = 5
* item[=].informationSequence[+] = 6
* item[=].informationSequence[+] = 7
* item[=].informationSequence[+] = 8
* item[=].informationSequence[+] = 9
* item[=].productOrService = http://www.ama-assn.org/go/cpt#A0428 "Ambulance service, basic life support, non-emergency transport (BLS)"
* item[=].servicedDate = "2022-09-10"
* item[=].locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#41
  * text = "Ambulance - Land"
* item[=].adjudication[0].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudicationDiscriminator#benefitpaymentstatus
* item[=].adjudication[=].reason = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBPayerAdjudicationStatus#innetwork
* item[=].adjudication[+].category = http://terminology.hl7.org/CodeSystem/adjudication#submitted "Submitted Amount"
  * text = "The total submitted amount for the claim or group or line item."
* item[=].adjudication[=].amount.value = 42.62
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = http://terminology.hl7.org/CodeSystem/adjudication#eligible "Eligible Amount"
  * text = "Amount of the change which is considered for adjudication."
* item[=].adjudication[=].amount.value = 42.62
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = http://terminology.hl7.org/CodeSystem/adjudication#deductible "Deductible"
  * text = "Amount deducted from the eligible amount prior to adjudication."
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = http://terminology.hl7.org/CodeSystem/adjudication#benefit "Benefit Amount"
  * text = "Amount payable under the coverage"
* item[=].adjudication[=].amount.value = 42.62
* item[=].adjudication[=].amount.currency = #USD
* adjudication.category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudicationDiscriminator#billingnetworkstatus "Billing Network Status"
  * text = "Indicates that the Billing Provider has a contract with the Payer as of the effective date of service or admission."
* adjudication.reason = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBPayerAdjudicationStatus#innetwork "In Network"
  * text = "Indicates the provider was in network for the service"
* total[0].category = http://terminology.hl7.org/CodeSystem/adjudication#submitted "Submitted Amount"
* total[=].category.text = "The total submitted amount for the claim or group or line item."
* total[=].amount.value = 82.97
* total[=].amount.currency = #USD
* total[+].category = http://terminology.hl7.org/CodeSystem/adjudication#eligible "Eligible Amount"
  * text = "Amount of the change which is considered for adjudication."
* total[=].amount.value = 82.97
* total[=].amount.currency = #USD
* total[+].category = http://terminology.hl7.org/CodeSystem/adjudication#benefit "Benefit Amount"
  * text = "Amount payable under the coverage"
* total[=].amount.value = 82.97
* total[=].amount.currency = #USD
* total[+].category = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudication#memberliability "Member liability"
  * text = "The amount of the member's liability."
* total[=].amount.value = 0
* total[=].amount.currency = #USD
```