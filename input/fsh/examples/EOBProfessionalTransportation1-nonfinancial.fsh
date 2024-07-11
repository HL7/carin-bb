Instance: BB-EOBProfessionalTransportation1-nonfinancial
InstanceOf: C4BBExplanationOfBenefitProfessionalNonClinicianBasis
Title: "EOB Professional - Transportation 1 - Nonfinancial"
Description: "EOB Professional - Transportation Services Example 1 - Nonfinancial"
Usage: #example
* meta.lastUpdated = "2022-09-10T14:46:05-04:00"
* meta.source = "Organization/PayerOrganizationExample1"
* meta.profile[+] = Canonical(C4BBExplanationOfBenefitProfessionalNonClinicianBasis|2.1.0)
* identifier[uniqueclaimid].type = $C4BBIdentifierType#uc "Unique Claim ID"
* identifier[uniqueclaimid].type.text = "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber"
* identifier[uniqueclaimid].system = "https://www.example.com/fhir/EOBIdentifier"
* identifier[uniqueclaimid].value = "ProfessionalTransportationEOBExample1"
* status = #active
* type = $claim-type#professional
* type.text = "Professional"
* use = #claim
* patient = Reference(Patient1)
* billablePeriod.start = "2022-09-10"
* created = "2022-09-10T14:46:05-04:00"
* insurer = Reference(Payer2) "UPMC Health Plan"
* provider = Reference(ProviderTransportationOrganization1)
* payee.type = $payeetype#provider "Provider"
* payee.type.text = "Any benefit payable will be paid to the provider (Assignment of Benefit)."
* payee.party = Reference(ProviderTransportationOrganization1)
* outcome = #complete
//* careTeam[+].sequence = 1
//* careTeam[=].provider = Reference(ProviderTransportationOrganization1)
//* careTeam[=].role = C4BBClaimCareTeamRole#rendering "Rendering provider"
//* careTeam[=].role.text = "The rendering care provider."
//* careTeam[=].qualification = $NUCCProviderTaxonomy#343900000X "Non-emergency Medical Transport (VAN)"
* supportingInfo[clmrecvddate].sequence = 1
* supportingInfo[clmrecvddate].category = $C4BBSupportingInfoType#clmrecvddate "Claim Received Date"
* supportingInfo[clmrecvddate].category.text = "Date the claim was received by the payer."
* supportingInfo[clmrecvddate].timingDate = "2022-09-11"


* supportingInfo[patientweight][+].category = C4BBSupportingInfoType#patientweight
* supportingInfo[patientweight][=].sequence = 2
* supportingInfo[patientweight][=].valueQuantity.unit = "[lb_av]"
* supportingInfo[patientweight][=].valueQuantity.system = "http://unitsofmeasure.org"
* supportingInfo[patientweight][=].valueQuantity.value = 160

* supportingInfo[ambulancetransportreason][+].category = C4BBSupportingInfoType#ambulancetransportreason
* supportingInfo[ambulancetransportreason][=].sequence = 3
* supportingInfo[ambulancetransportreason][=].reason = X12AmbulanceTransportReasonCodes#B "Patient was transported for the benefit of a preferred physician"


* supportingInfo[transportationdistance][+].category = C4BBSupportingInfoType#transportationdistance
* supportingInfo[transportationdistance][=].sequence = 4
* supportingInfo[transportationdistance][=].valueQuantity.unit = "[mi_i]"
* supportingInfo[transportationdistance][=].valueQuantity.system = "http://unitsofmeasure.org"
* supportingInfo[transportationdistance][=].valueQuantity.value = 21

* supportingInfo[transportationdistance][+].category = C4BBSupportingInfoType#transportationdistance
* supportingInfo[transportationdistance][=].sequence = 5
* supportingInfo[transportationdistance][=].valueQuantity.unit = "[mi_i]"
* supportingInfo[transportationdistance][=].valueQuantity.system = "http://unitsofmeasure.org"
* supportingInfo[transportationdistance][=].valueQuantity.value = 22

* supportingInfo[roudtrippurpose][+].category = C4BBSupportingInfoType#roudtrippurpose
* supportingInfo[roudtrippurpose][=].sequence = 6
* supportingInfo[roudtrippurpose][=].valueString = "Trip to facility and then back home"

* supportingInfo[stretcherpurpose][+].category = C4BBSupportingInfoType#stretcherpurpose
* supportingInfo[stretcherpurpose][=].sequence = 7
* supportingInfo[stretcherpurpose][=].valueString = "Patient could not walk"

* supportingInfo[pickuplocation][+].category = C4BBSupportingInfoType#pickuplocation
* supportingInfo[pickuplocation][=].sequence = 8
* supportingInfo[pickuplocation][=].valueString = "Patient home; Pittsburgh; PA,15222"

* supportingInfo[dropofflocation][+].category = C4BBSupportingInfoType#dropofflocation
* supportingInfo[dropofflocation][=].sequence = 9
* supportingInfo[dropofflocation][=].valueString = "Orange Medical Group; Pittsburgh; PA,15222"

* supportingInfo[pickuplocation][+].category = C4BBSupportingInfoType#pickuplocation
* supportingInfo[pickuplocation][=].sequence = 10
* supportingInfo[pickuplocation][=].valueString = "Orange Medical Group; Pittsburgh; PA,15222"

* supportingInfo[dropofflocation][+].category = C4BBSupportingInfoType#dropofflocation
* supportingInfo[dropofflocation][=].sequence = 11
* supportingInfo[dropofflocation][=].valueString = "Patient home; Pittsburgh; PA,15222"






* diagnosis[+].sequence = 1
* diagnosis[=].diagnosisCodeableConcept = $icd-10-cm#I70.249
* diagnosis[=].type = $ex-diagnosistype#principal "Principal Diagnosis"
* diagnosis[=].type.text = "The single medical diagnosis that is most relevant to the patient's chief complaint or need for treatment."
* insurance.focal = true
* insurance.coverage = Reference(Coverage1)


* item[+].sequence = 1
* item[=].productOrService = $cpt#A0428 "Ambulance service, basic life support, non-emergency transport (BLS)"
* item[=].servicedDate = "2022-09-10"
* item[=].locationCodeableConcept = $CMSPlaceofServiceCodes#41
* item[=].locationCodeableConcept.text = "Ambulance - Land"
* item[=].informationSequence[+] = 2
* item[=].informationSequence[+] = 3
* item[=].informationSequence[+] = 4
* item[=].informationSequence[+] = 6
* item[=].informationSequence[+] = 7
* item[=].informationSequence[+] = 10
* item[=].informationSequence[+] = 11

* item[=].adjudication[benefitpaymentstatus][+].category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
* item[=].adjudication[benefitpaymentstatus][=].reason = C4BBPayerAdjudicationStatus#innetwork

* item[+].sequence = 2
* item[=].productOrService = $cpt#A0428 "Ambulance service, basic life support, non-emergency transport (BLS)"
* item[=].servicedDate = "2022-09-10"
* item[=].locationCodeableConcept = $CMSPlaceofServiceCodes#41
* item[=].locationCodeableConcept.text = "Ambulance - Land"
* item[=].informationSequence[+] = 2
* item[=].informationSequence[+] = 3
* item[=].informationSequence[+] = 5
* item[=].informationSequence[+] = 6
* item[=].informationSequence[+] = 7
* item[=].informationSequence[+] = 8
* item[=].informationSequence[+] = 9

* item[=].adjudication[benefitpaymentstatus][+].category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
* item[=].adjudication[benefitpaymentstatus][=].reason = C4BBPayerAdjudicationStatus#innetwork

* adjudication.category = $C4BBAdjudicationDiscriminator#billingnetworkstatus "Billing Network Status"
* adjudication.category.text = "Indicates that the Billing Provider has a contract with the Payer as of the effective date of service or admission."
* adjudication.reason = $C4BBPayerAdjudicationStatus#innetwork "In Network"
* adjudication.reason.text = "Indicates the provider was in network for the service"

* total[+].category = $adjudication#submitted "Submitted Amount"
* total[=].category.text = "The total submitted amount for the claim or group or line item."
* total[=].amount.value = 82.97
* total[=].amount.currency = #USD
* total[+].category = $adjudication#eligible "Eligible Amount"
* total[=].category.text = "Amount of the change which is considered for adjudication."
* total[=].amount.value = 82.97
* total[=].amount.currency = #USD
* total[+].category = $adjudication#benefit "Benefit Amount"
* total[=].category.text = "Amount payable under the coverage"
* total[=].amount.value = 82.97
* total[=].amount.currency = #USD
* total[+].category = $C4BBAdjudication#memberliability "Member liability"
* total[=].category.text = "The amount of the member's liability."
* total[=].amount.value = 0
* total[=].amount.currency = #USD