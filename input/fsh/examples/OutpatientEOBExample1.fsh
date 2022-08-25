Instance: OutpatientEOBExample1
InstanceOf: C4BBExplanationOfBenefitOutpatientInstitutional
Title: "EOB Outpatient Institutional - Example 1"
Description: "EOB Outpatient Institutional - Example 1"
Usage: #example
* meta.lastUpdated = "2020-10-13T11:10:24-04:00"
* meta.source = "Organization/PayerOrganizationExample1"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Outpatient-Institutional|1.2.0"
* identifier.type = $C4BBIdentifierType#uc "Unique Claim ID"
* identifier.type.text = "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber"
* identifier.system = "https://www.upmchealthplan.com/fhir/EOBIdentifier"
* identifier.value = "OutpatientEOBExample1"
* status = #active
* type = $claim-type#institutional
* type.text = "Institutional"
* subType = $C4BBInstitutionalClaimSubType#outpatient
* subType.text = "Outpatient"
* use = #claim
* patient = Reference(ExamplePatient1)
* billablePeriod.start = "2020-09-29"
* billablePeriod.end = "2020-09-29"
* created = "2020-10-10T00:00:00-04:00"
* insurer = Reference(PayerOrganizationExample1) "UPMC Health Plan"
* provider = Reference(ProviderOrganization5)
* payee.type = $payeetype#provider "Provider"
* payee.type.text = "Any benefit payable will be paid to the provider (Assignment of Benefit)."
* payee.party = Reference(ProviderOrganization6)
* outcome = #complete
* careTeam[0].sequence = 1
* careTeam[=].provider = Reference(Practitioner1)
* careTeam[=].role = $C4BBClaimCareTeamRole#attending "Attending"
* careTeam[=].role.text = "The attending physician"
* careTeam[+].sequence = 2
* careTeam[=].provider = Reference(Practitioner3)
* careTeam[=].role = $C4BBClaimCareTeamRole#referring "Referring"
* careTeam[=].role.text = "The referring physician"
* supportingInfo[0].sequence = 1
* supportingInfo[=].category = $C4BBSupportingInfoType#clmrecvddate "Claim Received Date"
* supportingInfo[=].category.text = "Date the claim was received by the payer."
* supportingInfo[=].timingDate = "2020-10-10"
* supportingInfo[+].sequence = 2
* supportingInfo[=].category = $C4BBSupportingInfoType#benefitpaymentstatus
* supportingInfo[=].code = $C4BBPayerAdjudicationStatus#outofnetwork
* diagnosis[0].sequence = 1
* diagnosis[=].diagnosisCodeableConcept = $icd-10-cm#I95.1
* diagnosis[=].type = $ex-diagnosistype#principal "Principal Diagnosis"
* diagnosis[=].type.text = "The single medical diagnosis that is most relevant to the patient's chief complaint or need for treatment."
* diagnosis[+].sequence = 2
* diagnosis[=].diagnosisCodeableConcept = $icd-10-cm#I95.1
* diagnosis[=].type = $C4BBClaimDiagnosisType#other "Other"
* diagnosis[=].type.text = "Required when other conditions coexist or develop subsequently during the treatment"
* diagnosis[+].sequence = 3
* diagnosis[=].diagnosisCodeableConcept = $icd-10-cm#L97.529
* diagnosis[=].type = $C4BBClaimDiagnosisType#other "Other"
* diagnosis[=].type.text = "Required when other conditions coexist or develop subsequently during the treatment"
* diagnosis[+].sequence = 4
* diagnosis[=].diagnosisCodeableConcept = $icd-10-cm#I73.9
* diagnosis[=].type = $C4BBClaimDiagnosisType#other "Other"
* diagnosis[=].type.text = "Required when other conditions coexist or develop subsequently during the treatment"
* insurance.focal = true
* insurance.coverage = Reference(CoverageEx1)
* item[0].sequence = 1
* item[=].revenue = $RevenueCodes#0551
* item[=].productOrService = $cpt#99231
* item[=].servicedDate = "2020-09-29"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#12
* item[=].locationCodeableConcept.text = "HOME"
* item[=].adjudication[0].category = $adjudication#submitted "Submitted Amount"
* item[=].adjudication[=].category.text = "The total submitted amount for the claim or group or line item."
* item[=].adjudication[=].amount.value = 84.4
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#copay "CoPay"
* item[=].adjudication[=].category.text = "Patient Co-Payment"
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category.coding[0] = $adjudication#eligible "Eligible Amount"
* item[=].adjudication[=].category.coding[+] = $adjudication_1#https://bluebutton.cms.gov/resources/variables/line_prmry_alowd_chrg_amt "Line Primary Payer Allowed Charge Amount"
* item[=].adjudication[=].category.text = "Amount of the change which is considered for adjudication."
* item[=].adjudication[=].amount.value = 56.52
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#deductible "Deductible"
* item[=].adjudication[=].category.text = "Amount deducted from the eligible amount prior to adjudication."
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#benefit "Benefit Amount"
* item[=].adjudication[=].category.text = "Amount payable under the coverage"
* item[=].adjudication[=].amount.value = 56.52
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $C4BBAdjudication#noncovered "Noncovered"
* item[=].adjudication[=].category.text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[+].sequence = 2
* item[=].revenue = $RevenueCodes#0023
* item[=].productOrService = $cpt#99231
* item[=].servicedDate = "2020-09-29"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#12
* item[=].locationCodeableConcept.text = "HOME"
* item[=].adjudication[0].category = $adjudication#submitted "Submitted Amount"
* item[=].adjudication[=].category.text = "The total submitted amount for the claim or group or line item."
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#copay "CoPay"
* item[=].adjudication[=].category.text = "Patient Co-Payment"
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* item[=].adjudication[+].category = $adjudication#eligible "Eligible Amount"
* item[=].adjudication[=].category.text = "Amount of the change which is considered for adjudication."
* item[=].adjudication[=].amount.value = 0
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
* item[=].adjudication[=].amount.value = 0
* item[=].adjudication[=].amount.currency = #USD
* total[0].category = $adjudication#submitted "Submitted Amount"
* total[=].category.text = "The total submitted amount for the claim or group or line item."
* total[=].amount.value = 84.4
* total[=].amount.currency = #USD
* total[+].category = $adjudication#eligible "Eligible Amount"
* total[=].category.text = "Amount of the change which is considered for adjudication."
* total[=].amount.value = 56.52
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
* total[=].amount.value = 56.52
* total[=].amount.currency = #USD
* total[+].category = $C4BBAdjudication#memberliability "Member liability"
* total[=].category.text = "The amount of the member's liability."
* total[=].amount.value = 0
* total[=].amount.currency = #USD