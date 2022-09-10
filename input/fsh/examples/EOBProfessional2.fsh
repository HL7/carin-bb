Instance: EOBProfessional2
InstanceOf: C4BBExplanationOfBenefitProfessionalNonClinician
Title: "EOB Professional - Example 2"
Description: "EOB Professional - Example 2"
Usage: #example
* meta.lastUpdated = "2020-10-20T14:46:05-04:00"
* meta.source = "Organization/PayerOrganizationExample1"
* meta.profile[+] = Canonical(C4BBExplanationOfBenefitProfessionalNonClinician|1.2.0)
* identifier.type = $C4BBIdentifierType#uc "Unique Claim ID"
* identifier.type.text = "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber"
* identifier.system = "https://www.upmchealthplan.com/fhir/EOBIdentifier"
* identifier.value = "ProfessionalEOBExample1"
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
* careTeam[=].provider = Reference(ProviderOrganization1)
* careTeam[=].role = $claimcareteamrole#primary "Primary provider"
* careTeam[=].role.text = "The primary care provider."
* careTeam[+].sequence = 2
* careTeam[=].provider = Reference(Practitioner1)
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
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#submitted "Submitted Amount"
* item[=].adjudication[adjudicationamounttype][=].category.text = "The total submitted amount for the claim or group or line item."
* item[=].adjudication[adjudicationamounttype][=].amount.value = 68.8
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#copay "CoPay"
* item[=].adjudication[adjudicationamounttype][=].category.text = "Patient Co-Payment"
* item[=].adjudication[adjudicationamounttype][=].amount.value = 0
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#eligible "Eligible Amount"
* item[=].adjudication[adjudicationamounttype][=].category.text = "Amount of the change which is considered for adjudication."
* item[=].adjudication[adjudicationamounttype][=].amount.value = 34.8
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#deductible "Deductible"
* item[=].adjudication[adjudicationamounttype][=].category.text = "Amount deducted from the eligible amount prior to adjudication."
* item[=].adjudication[adjudicationamounttype][=].amount.value = 0
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#benefit "Benefit Amount"
* item[=].adjudication[adjudicationamounttype][=].category.text = "Amount payable under the coverage"
* item[=].adjudication[adjudicationamounttype][=].amount.value = 34.8
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $C4BBAdjudication#noncovered "Noncovered"
* item[=].adjudication[adjudicationamounttype][=].category.text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
* item[=].adjudication[adjudicationamounttype][=].amount.value = 0
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[benefitpaymentstatus].category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
* item[=].adjudication[benefitpaymentstatus].reason = C4BBPayerAdjudicationStatus#innetwork
* item[+].sequence = 2
* item[=].productOrService = $cpt#75710
* item[=].servicedDate = "2020-08-04"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#submitted "Submitted Amount"
* item[=].adjudication[adjudicationamounttype][=].category.text = "The total submitted amount for the claim or group or line item."
* item[=].adjudication[adjudicationamounttype][=].amount.value = -68.8
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#copay "CoPay"
* item[=].adjudication[adjudicationamounttype][=].category.text = "Patient Co-Payment"
* item[=].adjudication[adjudicationamounttype][=].amount.value = 0
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#eligible "Eligible Amount"
* item[=].adjudication[adjudicationamounttype][=].category.text = "Amount of the change which is considered for adjudication."
* item[=].adjudication[adjudicationamounttype][=].amount.value = -34.8
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#deductible "Deductible"
* item[=].adjudication[adjudicationamounttype][=].category.text = "Amount deducted from the eligible amount prior to adjudication."
* item[=].adjudication[adjudicationamounttype][=].amount.value = 0
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#benefit "Benefit Amount"
* item[=].adjudication[adjudicationamounttype][=].category.text = "Amount payable under the coverage"
* item[=].adjudication[adjudicationamounttype][=].amount.value = -34.8
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $C4BBAdjudication#noncovered "Noncovered"
* item[=].adjudication[adjudicationamounttype][=].category.text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
* item[=].adjudication[adjudicationamounttype][=].amount.value = 0
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[benefitpaymentstatus].category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
* item[=].adjudication[benefitpaymentstatus].reason = C4BBPayerAdjudicationStatus#innetwork
* item[+].sequence = 3
* item[=].productOrService = $cpt#75710
* item[=].servicedDate = "2020-08-04"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#submitted "Submitted Amount"
* item[=].adjudication[adjudicationamounttype][=].category.text = "The total submitted amount for the claim or group or line item."
* item[=].adjudication[adjudicationamounttype][=].amount.value = 68.8
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#copay "CoPay"
* item[=].adjudication[adjudicationamounttype][=].category.text = "Patient Co-Payment"
* item[=].adjudication[adjudicationamounttype][=].amount.value = 0
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#eligible "Eligible Amount"
* item[=].adjudication[adjudicationamounttype][=].category.text = "Amount of the change which is considered for adjudication."
* item[=].adjudication[adjudicationamounttype][=].amount.value = 34.8
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#deductible "Deductible"
* item[=].adjudication[adjudicationamounttype][=].category.text = "Amount deducted from the eligible amount prior to adjudication."
* item[=].adjudication[adjudicationamounttype][=].amount.value = 0
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#benefit "Benefit Amount"
* item[=].adjudication[adjudicationamounttype][=].category.text = "Amount payable under the coverage"
* item[=].adjudication[adjudicationamounttype][=].amount.value = 34.8
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $C4BBAdjudication#noncovered "Noncovered"
* item[=].adjudication[adjudicationamounttype][=].category.text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
* item[=].adjudication[adjudicationamounttype][=].amount.value = 0
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[benefitpaymentstatus].category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
* item[=].adjudication[benefitpaymentstatus].reason = C4BBPayerAdjudicationStatus#innetwork
* item[+].sequence = 4
* item[=].productOrService = $cpt#37228
* item[=].servicedDate = "2020-08-04"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#submitted "Submitted Amount"
* item[=].adjudication[adjudicationamounttype][=].category.text = "The total submitted amount for the claim or group or line item."
* item[=].adjudication[adjudicationamounttype][=].amount.value = 751.2
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#copay "CoPay"
* item[=].adjudication[adjudicationamounttype][=].category.text = "Patient Co-Payment"
* item[=].adjudication[adjudicationamounttype][=].amount.value = 0
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#eligible "Eligible Amount"
* item[=].adjudication[adjudicationamounttype][=].category.text = "Amount of the change which is considered for adjudication."
* item[=].adjudication[adjudicationamounttype][=].amount.value = 224.11
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#deductible "Deductible"
* item[=].adjudication[adjudicationamounttype][=].category.text = "Amount deducted from the eligible amount prior to adjudication."
* item[=].adjudication[adjudicationamounttype][=].amount.value = 0
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#benefit "Benefit Amount"
* item[=].adjudication[adjudicationamounttype][=].category.text = "Amount payable under the coverage"
* item[=].adjudication[adjudicationamounttype][=].amount.value = 0
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $C4BBAdjudication#noncovered "Noncovered"
* item[=].adjudication[adjudicationamounttype][=].category.text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
* item[=].adjudication[adjudicationamounttype][=].amount.value = 224.11
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[benefitpaymentstatus].category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
* item[=].adjudication[benefitpaymentstatus].reason = C4BBPayerAdjudicationStatus#innetwork
* item[+].sequence = 5
* item[=].productOrService = $cpt#37228
* item[=].servicedDate = "2020-08-04"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#submitted "Submitted Amount"
* item[=].adjudication[adjudicationamounttype][=].category.text = "The total submitted amount for the claim or group or line item."
* item[=].adjudication[adjudicationamounttype][=].amount.value = 751.2
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#copay "CoPay"
* item[=].adjudication[adjudicationamounttype][=].category.text = "Patient Co-Payment"
* item[=].adjudication[adjudicationamounttype][=].amount.value = 0
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#eligible "Eligible Amount"
* item[=].adjudication[adjudicationamounttype][=].category.text = "Amount of the change which is considered for adjudication."
* item[=].adjudication[adjudicationamounttype][=].amount.value = 224.11
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#deductible "Deductible"
* item[=].adjudication[adjudicationamounttype][=].category.text = "Amount deducted from the eligible amount prior to adjudication."
* item[=].adjudication[adjudicationamounttype][=].amount.value = 0
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#benefit "Benefit Amount"
* item[=].adjudication[adjudicationamounttype][=].category.text = "Amount payable under the coverage"
* item[=].adjudication[adjudicationamounttype][=].amount.value = 224.11
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $C4BBAdjudication#noncovered "Noncovered"
* item[=].adjudication[adjudicationamounttype][=].category.text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
* item[=].adjudication[adjudicationamounttype][=].amount.value = 0
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[benefitpaymentstatus].category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
* item[=].adjudication[benefitpaymentstatus].reason = C4BBPayerAdjudicationStatus#innetwork
* item[+].sequence = 6
* item[=].productOrService = $cpt#37228
* item[=].servicedDate = "2020-08-04"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#submitted "Submitted Amount"
* item[=].adjudication[adjudicationamounttype][=].category.text = "The total submitted amount for the claim or group or line item."
* item[=].adjudication[adjudicationamounttype][=].amount.value = -751.2
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#copay "CoPay"
* item[=].adjudication[adjudicationamounttype][=].category.text = "Patient Co-Payment"
* item[=].adjudication[adjudicationamounttype][=].amount.value = 0
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#eligible "Eligible Amount"
* item[=].adjudication[adjudicationamounttype][=].category.text = "Amount of the change which is considered for adjudication."
* item[=].adjudication[adjudicationamounttype][=].amount.value = -224.11
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#deductible "Deductible"
* item[=].adjudication[adjudicationamounttype][=].category.text = "Amount deducted from the eligible amount prior to adjudication."
* item[=].adjudication[adjudicationamounttype][=].amount.value = 0
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $adjudication#benefit "Benefit Amount"
* item[=].adjudication[adjudicationamounttype][=].category.text = "Amount payable under the coverage"
* item[=].adjudication[adjudicationamounttype][=].amount.value = 0
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[adjudicationamounttype][+].category = $C4BBAdjudication#noncovered "Noncovered"
* item[=].adjudication[adjudicationamounttype][=].category.text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
* item[=].adjudication[adjudicationamounttype][=].amount.value = -224.11
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD
* item[=].adjudication[benefitpaymentstatus].category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
* item[=].adjudication[benefitpaymentstatus].reason = C4BBPayerAdjudicationStatus#innetwork
* adjudication.category = $C4BBAdjudicationDiscriminator#billingnetworkcontractingstatus "Billing Network Contracting Status"
* adjudication.category.text = "Indicates that the Billing Provider has a contract with the Payer as of the effective date of service or admission."
* adjudication.reason = $C4BBPayerAdjudicationStatus#contracted "Contracted"
* adjudication.reason.text = "Indicates the provider was contracted for the service"
* total[adjudicationamounttype][+].category = $adjudication#submitted "Submitted Amount"
* total[adjudicationamounttype][=].category.text = "The total submitted amount for the claim or group or line item."
* total[adjudicationamounttype][=].amount.value = 820
* total[adjudicationamounttype][=].amount.currency = #USD
* total[adjudicationamounttype][+].category = $adjudication#eligible "Eligible Amount"
* total[adjudicationamounttype][=].category.text = "Amount of the change which is considered for adjudication."
* total[adjudicationamounttype][=].amount.value = 258.91
* total[adjudicationamounttype][=].amount.currency = #USD
* total[adjudicationamounttype][+].category = $adjudication#deductible "Deductible"
* total[adjudicationamounttype][=].category.text = "Amount deducted from the eligible amount prior to adjudication."
* total[adjudicationamounttype][=].amount.value = 0
* total[adjudicationamounttype][=].amount.currency = #USD
* total[adjudicationamounttype][+].category = $adjudication#copay "CoPay"
* total[adjudicationamounttype][=].category.text = "Patient Co-Payment"
* total[adjudicationamounttype][=].amount.value = 0
* total[adjudicationamounttype][=].amount.currency = #USD
* total[adjudicationamounttype][+].category = $C4BBAdjudication#noncovered "Noncovered"
* total[adjudicationamounttype][=].category.text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
* total[adjudicationamounttype][=].amount.value = 0
* total[adjudicationamounttype][=].amount.currency = #USD
* total[adjudicationamounttype][+].category = $adjudication#benefit "Benefit Amount"
* total[adjudicationamounttype][=].category.text = "Amount payable under the coverage"
* total[adjudicationamounttype][=].amount.value = 258.91
* total[adjudicationamounttype][=].amount.currency = #USD
* total[adjudicationamounttype][+].category = $C4BBAdjudication#memberliability "Member liability"
* total[adjudicationamounttype][=].category.text = "The amount of the member's liability."
* total[adjudicationamounttype][=].amount.value = 0
* total[adjudicationamounttype][=].amount.currency = #USD