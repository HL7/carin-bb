Instance: BB-EOBProfessional2-nonfinancial
InstanceOf: C4BBExplanationOfBenefitProfessionalNonClinicianBasis
Title: "EOB Professional - Example 2 - Nonfinancial"
Description: "EOB Professional - Example 2 - Nonfinancial"
Usage: #example
* meta.lastUpdated = "2020-10-20T14:46:05-04:00"
* meta.source = "Organization/PayerOrganizationExample1"
* meta.profile[+] = Canonical(C4BBExplanationOfBenefitProfessionalNonClinicianBasis|2.1.0-snapshot1)
* identifier[uniqueclaimid].type = $C4BBIdentifierType#uc "Unique Claim ID"
* identifier[uniqueclaimid].type.text = "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber"
* identifier[uniqueclaimid].system = "https://www.upmchealthplan.com/fhir/EOBIdentifier"
* identifier[uniqueclaimid].value = "ProfessionalEOBExample1"
* status = #active
* type = $claim-type#professional
* type.text = "Professional"
* use = #claim
* patient = Reference(Patient1)
* billablePeriod.start = "2020-08-04"
* billablePeriod.end = "2020-08-04"
* created = "2020-08-24T00:00:00-04:00"
* insurer = Reference(Payer2) "UPMC Health Plan"
* provider = Reference(ProviderOrganization1)
* payee.type = $payeetype#provider "Provider"
* payee.type.text = "Any benefit payable will be paid to the provider (Assignment of Benefit)."
* payee.party = Reference(ProviderOrganization1)
* outcome = #complete
* careTeam[+].sequence = 1
* careTeam[=].provider = Reference(Practitioner1)
* careTeam[=].role = $CareTeamRoleCodeCS#primary "Primary provider"
* careTeam[=].role.text = "The primary care provider."
* careTeam[+].sequence = 2
* careTeam[=].provider = Reference(Practitioner2)
* careTeam[=].role = C4BBClaimCareTeamRole#referring "Referring"
* careTeam[=].role.text = "The referring physician"
* supportingInfo.sequence = 1
* supportingInfo.category = $C4BBSupportingInfoType#clmrecvddate "Claim Received Date"
* supportingInfo.category.text = "Date the claim was received by the payer."
* supportingInfo.timingDate = "2020-08-24"
* diagnosis[+].sequence = 1
* diagnosis[=].diagnosisCodeableConcept = $icd-10-cm#I70.249
* diagnosis[=].type = $ex-diagnosistype#principal "Principal Diagnosis"
* diagnosis[=].type.text = "The single medical diagnosis that is most relevant to the patient's chief complaint or need for treatment."
* diagnosis[+].sequence = 2
* diagnosis[=].diagnosisCodeableConcept = $icd-10-cm#L97.929
* diagnosis[=].type = $C4BBClaimDiagnosisType#secondary "secondary"
* diagnosis[=].type.text = "Required when necessary to report additional diagnoses on professional and non-clinician claims"
* insurance.focal = true
* insurance.coverage = Reference(Coverage1)
* item[+].sequence = 1
* item[=].productOrService = $cpt#75710
* item[=].servicedDate = "2020-08-04"
* item[=].locationCodeableConcept = $CMSPlaceofServiceCodes#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"

* item[=].adjudication[benefitpaymentstatus].category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
* item[=].adjudication[benefitpaymentstatus].reason = C4BBPayerAdjudicationStatus#innetwork
* item[+].sequence = 2
* item[=].productOrService = $cpt#75710
* item[=].servicedDate = "2020-08-04"
* item[=].locationCodeableConcept = $CMSPlaceofServiceCodes#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"

* item[=].adjudication[benefitpaymentstatus].category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
* item[=].adjudication[benefitpaymentstatus].reason = C4BBPayerAdjudicationStatus#innetwork
* item[+].sequence = 3
* item[=].productOrService = $cpt#75710
* item[=].servicedDate = "2020-08-04"
* item[=].locationCodeableConcept = $CMSPlaceofServiceCodes#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"

* item[=].adjudication[benefitpaymentstatus].category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
* item[=].adjudication[benefitpaymentstatus].reason = C4BBPayerAdjudicationStatus#innetwork
* item[+].sequence = 4
* item[=].productOrService = $cpt#37228
* item[=].servicedDate = "2020-08-04"
* item[=].locationCodeableConcept = $CMSPlaceofServiceCodes#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"

* item[=].adjudication[benefitpaymentstatus].category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
* item[=].adjudication[benefitpaymentstatus].reason = C4BBPayerAdjudicationStatus#innetwork
* item[+].sequence = 5
* item[=].productOrService = $cpt#37228
* item[=].servicedDate = "2020-08-04"
* item[=].locationCodeableConcept = $CMSPlaceofServiceCodes#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"

* item[=].adjudication[benefitpaymentstatus].category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
* item[=].adjudication[benefitpaymentstatus].reason = C4BBPayerAdjudicationStatus#innetwork
* item[+].sequence = 6
* item[=].productOrService = $cpt#37228
* item[=].servicedDate = "2020-08-04"
* item[=].locationCodeableConcept = $CMSPlaceofServiceCodes#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"

* item[=].adjudication[benefitpaymentstatus].category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
* item[=].adjudication[benefitpaymentstatus].reason = C4BBPayerAdjudicationStatus#innetwork
* adjudication.category = $C4BBAdjudicationDiscriminator#billingnetworkstatus "Billing Network Status"
* adjudication.category.text = "Indicates that the Billing Provider has a contract with the Payer as of the effective date of service or admission."
* adjudication.reason = $C4BBPayerAdjudicationStatus#innetwork "In Network"
* adjudication.reason.text = "Indicates the provider was in network for the service"
