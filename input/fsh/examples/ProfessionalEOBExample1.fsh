Instance: ProfessionalEOBExample1
InstanceOf: C4BBExplanationOfBenefitProfessionalNonClinician
Title: "EOB Professional - Example 1"
Description: "EOB Professional - Example 1"
Usage: #example
* meta.lastUpdated = "2020-10-20T14:46:05-04:00"
* meta.source = "Organization/PayerOrganizationExample1"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Professional-NonClinician|1.2.0"
* identifier.type = $C4BBIdentifierType#uc "Unique Claim ID"
* identifier.type.text = "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber"
* identifier.system = "https://www.upmchealthplan.com/fhir/EOBIdentifier"
* identifier.value = "ProfessionalEOBExample1"
* status = #active
* type = $claim-type#professional
* type.text = "Professional"
* use = #claim
* patient = Reference(ExamplePatient1)
* billablePeriod.start = "2020-08-04"
* billablePeriod.end = "2020-08-04"
* created = "2020-08-24T00:00:00-04:00"
* insurer = Reference(PayerOrganizationExample1) "UPMC Health Plan"
* provider = Reference(ProviderOrganization1)
* payee.type = $payeetype#provider "Provider"
* payee.type.text = "Any benefit payable will be paid to the provider (Assignment of Benefit)."
* payee.party = Reference(ProviderOrganization1)
* outcome = #complete
* careTeam[0].sequence = 1
* careTeam[=].provider = Reference(ProviderOrganization1)
* careTeam[=].role = $claimcareteamrole#primary "Primary provider"
* careTeam[=].role.text = "The primary care provider."
* careTeam[+].sequence = 2
* careTeam[=].provider = Reference(Practitioner1)
* careTeam[=].role = $C4BBClaimCareTeamRole#referring "Referring"
* careTeam[=].role.text = "The referring physician"
* supportingInfo.sequence = 1
* supportingInfo.category = $C4BBSupportingInfoType#clmrecvddate "Claim Received Date"
* supportingInfo.category.text = "Date the claim was received by the payer."
* supportingInfo.timingDate = "2020-08-24"
* diagnosis[0].sequence = 1
* diagnosis[=].diagnosisCodeableConcept = $icd-10-cm#I70.249
* diagnosis[=].type = $ex-diagnosistype#principal "Principal Diagnosis"
* diagnosis[=].type.text = "The single medical diagnosis that is most relevant to the patient's chief complaint or need for treatment."
* diagnosis[+].sequence = 2
* diagnosis[=].diagnosisCodeableConcept = $icd-10-cm#L97.929
* diagnosis[=].type = $C4BBClaimDiagnosisType#secondary "secondary"
* diagnosis[=].type.text = "Required when necessary to report additional diagnoses on professional and non-clinician claims"
* insurance.focal = true
* insurance.coverage = Reference(CoverageEx1)
* item[0].sequence = 1
* item[=].productOrService = $cpt#75710
* item[=].servicedDate = "2020-08-04"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[=].adjudication[0].category = $adjudication#submitted "Submitted Amount"
* item[=].adjudication[=].category.text = "The total submitted amount for the claim or group or line item."
* item[=].adjudication[=].amount.value = 68.8
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#copay "CoPay"
* item[=].adjudication[=].category.text = "Patient Co-Payment"
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#eligible "Eligible Amount"
* item[=].adjudication[=].category.text = "Amount of the change which is considered for adjudication."
* item[=].adjudication[=].amount.value = 34.8
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#deductible "Deductible"
* item[=].adjudication[=].category.text = "Amount deducted from the eligible amount prior to adjudication."
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#benefit "Benefit Amount"
* item[=].adjudication[=].category.text = "Amount payable under the coverage"
* item[=].adjudication[=].amount.value = 34.8
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $C4BBAdjudication#noncovered "Noncovered"
* item[=].adjudication[=].category.text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $C4BBPayerAdjudicationStatus#innetwork "In Network"
* item[=].adjudication[=].category.text = "Indicates the claim or claim line was paid in network. This does not indicate the contracting status of the provider"
* item[+].sequence = 2
* item[=].productOrService = $cpt#75710
* item[=].servicedDate = "2020-08-04"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[=].adjudication[0].category = $adjudication#submitted "Submitted Amount"
* item[=].adjudication[=].category.text = "The total submitted amount for the claim or group or line item."
* item[=].adjudication[=].amount.value = -68.8
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#copay "CoPay"
* item[=].adjudication[=].category.text = "Patient Co-Payment"
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#eligible "Eligible Amount"
* item[=].adjudication[=].category.text = "Amount of the change which is considered for adjudication."
* item[=].adjudication[=].amount.value = -34.8
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#deductible "Deductible"
* item[=].adjudication[=].category.text = "Amount deducted from the eligible amount prior to adjudication."
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#benefit "Benefit Amount"
* item[=].adjudication[=].category.text = "Amount payable under the coverage"
* item[=].adjudication[=].amount.value = -34.8
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $C4BBAdjudication#noncovered "Noncovered"
* item[=].adjudication[=].category.text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $C4BBPayerAdjudicationStatus#innetwork "In Network"
* item[=].adjudication[=].category.text = "Indicates the claim or claim line was paid in network. This does not indicate the contracting status of the provider"
* item[+].sequence = 3
* item[=].productOrService = $cpt#75710
* item[=].servicedDate = "2020-08-04"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[=].adjudication[0].category = $adjudication#submitted "Submitted Amount"
* item[=].adjudication[=].category.text = "The total submitted amount for the claim or group or line item."
* item[=].adjudication[=].amount.value = 68.8
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#copay "CoPay"
* item[=].adjudication[=].category.text = "Patient Co-Payment"
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#eligible "Eligible Amount"
* item[=].adjudication[=].category.text = "Amount of the change which is considered for adjudication."
* item[=].adjudication[=].amount.value = 34.8
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#deductible "Deductible"
* item[=].adjudication[=].category.text = "Amount deducted from the eligible amount prior to adjudication."
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#benefit "Benefit Amount"
* item[=].adjudication[=].category.text = "Amount payable under the coverage"
* item[=].adjudication[=].amount.value = 34.8
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $C4BBAdjudication#noncovered "Noncovered"
* item[=].adjudication[=].category.text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $C4BBPayerAdjudicationStatus#innetwork "In Network"
* item[=].adjudication[=].category.text = "Indicates the claim or claim line was paid in network. This does not indicate the contracting status of the provider"
* item[+].sequence = 4
* item[=].productOrService = $cpt#37228
* item[=].servicedDate = "2020-08-04"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[=].adjudication[0].category = $adjudication#submitted "Submitted Amount"
* item[=].adjudication[=].category.text = "The total submitted amount for the claim or group or line item."
* item[=].adjudication[=].amount.value = 751.2
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#copay "CoPay"
* item[=].adjudication[=].category.text = "Patient Co-Payment"
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#eligible "Eligible Amount"
* item[=].adjudication[=].category.text = "Amount of the change which is considered for adjudication."
* item[=].adjudication[=].amount.value = 224.11
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#deductible "Deductible"
* item[=].adjudication[=].category.text = "Amount deducted from the eligible amount prior to adjudication."
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#benefit "Benefit Amount"
* item[=].adjudication[=].category.text = "Amount payable under the coverage"
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $C4BBAdjudication#noncovered "Noncovered"
* item[=].adjudication[=].category.text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
* item[=].adjudication[=].amount.value = 224.11
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $C4BBPayerAdjudicationStatus#innetwork "In Network"
* item[=].adjudication[=].category.text = "Indicates the claim or claim line was paid in network. This does not indicate the contracting status of the provider"
* item[+].sequence = 5
* item[=].productOrService = $cpt#37228
* item[=].servicedDate = "2020-08-04"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[=].adjudication[0].category = $adjudication#submitted "Submitted Amount"
* item[=].adjudication[=].category.text = "The total submitted amount for the claim or group or line item."
* item[=].adjudication[=].amount.value = 751.2
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#copay "CoPay"
* item[=].adjudication[=].category.text = "Patient Co-Payment"
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#eligible "Eligible Amount"
* item[=].adjudication[=].category.text = "Amount of the change which is considered for adjudication."
* item[=].adjudication[=].amount.value = 224.11
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#deductible "Deductible"
* item[=].adjudication[=].category.text = "Amount deducted from the eligible amount prior to adjudication."
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#benefit "Benefit Amount"
* item[=].adjudication[=].category.text = "Amount payable under the coverage"
* item[=].adjudication[=].amount.value = 224.11
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $C4BBAdjudication#noncovered "Noncovered"
* item[=].adjudication[=].category.text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $C4BBPayerAdjudicationStatus#innetwork "In Network"
* item[=].adjudication[=].category.text = "Indicates the claim or claim line was paid in network. This does not indicate the contracting status of the provider"
* item[+].sequence = 6
* item[=].productOrService = $cpt#37228
* item[=].servicedDate = "2020-08-04"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[=].adjudication[0].category = $adjudication#submitted "Submitted Amount"
* item[=].adjudication[=].category.text = "The total submitted amount for the claim or group or line item."
* item[=].adjudication[=].amount.value = -751.2
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#copay "CoPay"
* item[=].adjudication[=].category.text = "Patient Co-Payment"
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#eligible "Eligible Amount"
* item[=].adjudication[=].category.text = "Amount of the change which is considered for adjudication."
* item[=].adjudication[=].amount.value = -224.11
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#deductible "Deductible"
* item[=].adjudication[=].category.text = "Amount deducted from the eligible amount prior to adjudication."
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#benefit "Benefit Amount"
* item[=].adjudication[=].category.text = "Amount payable under the coverage"
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $C4BBAdjudication#noncovered "Noncovered"
* item[=].adjudication[=].category.text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
* item[=].adjudication[=].amount.value = -224.11
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $C4BBPayerAdjudicationStatus#innetwork "In Network"
* item[=].adjudication[=].category.text = "Indicates the claim or claim line was paid in network. This does not indicate the contracting status of the provider"
* adjudication.category = $C4BBAdjudicationDiscriminator#billingnetworkcontractingstatus "Billing Network Contracting Status"
* adjudication.category.text = "Indicates that the Billing Provider has a contract with the Payer as of the effective date of service or admission."
* adjudication.reason = $C4BBPayerAdjudicationStatus#contracted "Contracted"
* adjudication.reason.text = "Indicates the provider was contracted for the service"
* total[0].category = $adjudication#submitted "Submitted Amount"
* total[=].category.text = "The total submitted amount for the claim or group or line item."
* total[=].amount.value = 820
* total[=].amount.currency = #USD
* total[+].category = $adjudication#eligible "Eligible Amount"
* total[=].category.text = "Amount of the change which is considered for adjudication."
* total[=].amount.value = 258.91
* total[=].amount.currency = #USD
* total[+].category = $adjudication#deductible "Deductible"
* total[=].category.text = "Amount deducted from the eligible amount prior to adjudication."
* total[=].amount.value = 0
* total[=].amount.currency = #USD
* total[+].category = $adjudication#copay "CoPay"
* total[=].category.text = "Patient Co-Payment"
* total[=].amount.value = 0
* total[=].amount.currency = #USD
* total[+].category = $C4BBAdjudication#noncovered "Noncovered"
* total[=].category.text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
* total[=].amount.value = 0
* total[=].amount.currency = #USD
* total[+].category = $adjudication#benefit "Benefit Amount"
* total[=].category.text = "Amount payable under the coverage"
* total[=].amount.value = 258.91
* total[=].amount.currency = #USD
* total[+].category = $C4BBAdjudication#memberliability "Member liability"
* total[=].category.text = "The amount of the member's liability."
* total[=].amount.value = 0
* total[=].amount.currency = #USD