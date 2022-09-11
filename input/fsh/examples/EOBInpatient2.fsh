Instance: EOBInpatient2
InstanceOf: C4BBExplanationOfBenefitInpatientInstitutional
Title: "EOB Inpatient Institutional - Example 2"
Description: "EOB Inpatient Institutional - Example 2"
Usage: #example
* meta.lastUpdated = "2020-04-28T15:39:36-04:00"
* meta.profile[+] = Canonical(C4BBExplanationOfBenefitInpatientInstitutional|1.2.0)
* identifier.type = $C4BBIdentifierType#uc "Unique Claim ID"
* identifier.type.text = "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber"
* identifier.system = "https://www.upmchealthplan.com/fhir/EOBIdentifier"
* identifier.value = "InpatientEOBExample1"
* status = #active
* type = $claim-type#institutional
* type.text = "Institutional"
* subType = $C4BBInstitutionalClaimSubType#inpatient
* subType.text = "Inpatient"
* use = #claim
* patient = Reference(Patient1)
* billablePeriod.start = "2017-05-23"
* billablePeriod.end = "2017-05-23"
* created = "2017-06-01T00:00:00-04:00"
* insurer = Reference(Payer2) "UPMC Health Plan"
* provider = Reference(ProviderOrganization3)
* payee.type = $payeetype#provider "Provider"
* payee.type.text = "Any benefit payable will be paid to the provider (Assignment of Benefit)."
* payee.party = Reference(ProviderOrganization4)
* outcome = #complete
* careTeam[0].sequence = 1
* careTeam[=].provider = Reference(Practitioner2)
* careTeam[=].role = $C4BBClaimCareTeamRole#attending "Attending"
* careTeam[=].role.text = "The attending physician"
* careTeam[+].sequence = 2
* careTeam[=].provider = Reference(Practitioner2)
* careTeam[=].role = $C4BBClaimCareTeamRole#referring "Referring"
* careTeam[=].role.text = "The referring physician"
* supportingInfo[clmrecvddate].
  * sequence = 1
  * timingDate = "2017-06-01"
* supportingInfo[admissionperiod]
  * sequence = 2
  * timingPeriod.start = "2017-05-23"
* diagnosis[0].sequence = 1
* diagnosis[=].diagnosisCodeableConcept = $icd-10-cm#I21.4
* diagnosis[=].type = $ex-diagnosistype#principal "Principal Diagnosis"
* diagnosis[=].type.text = "The single medical diagnosis that is most relevant to the patient's chief complaint or need for treatment."
* diagnosis[+].sequence = 2
* diagnosis[=].diagnosisCodeableConcept = $icd-10-cm#I25.118
* diagnosis[=].type = $C4BBClaimDiagnosisType#other "Other"
* diagnosis[=].type.text = "Required when other conditions coexist or develop subsequently during the treatment"
* diagnosis[+].sequence = 3
* diagnosis[=].diagnosisCodeableConcept = $icd-10-cm#E78.5
* diagnosis[=].type = $C4BBClaimDiagnosisType#other "Other"
* diagnosis[=].type.text = "Required when other conditions coexist or develop subsequently during the treatment"
* diagnosis[+].sequence = 4
* diagnosis[=].diagnosisCodeableConcept = $icd-10-cm#M19.90
* diagnosis[=].type = $C4BBClaimDiagnosisType#other "Other"
* diagnosis[=].type.text = "Required when other conditions coexist or develop subsequently during the treatment"
* procedure[0].sequence = 1
* procedure[=].type = $C4BBClaimProcedureType#principal "Principal"
* procedure[=].type.text = "The Principal Procedure is based on the relation of the procedure to the Principal Diagnosis"
* procedure[=].date = "2017-05-23"
* procedure[=].procedureCodeableConcept = $ICD10#4A023N7
* procedure[+].sequence = 2
* procedure[=].type = $C4BBClaimProcedureType#other "Other"
* procedure[=].type.text = "Other procedures performed during the inpatient institutional admission"
* procedure[=].date = "2017-05-23"
* procedure[=].procedureCodeableConcept = $ICD10#B211YZZ
* procedure[+].sequence = 3
* procedure[=].type = $C4BBClaimProcedureType#other "Other"
* procedure[=].type.text = "Other procedures performed during the inpatient institutional admission"
* procedure[=].date = "2017-05-23"
* procedure[=].procedureCodeableConcept = $ICD10#B215YZZ
* insurance.focal = true
* insurance.coverage = Reference(Coverage2)
* item[0].sequence = 1
* item[=].revenue = $RevenueCodes#0301
* item[=].productOrService = $cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 2
* item[=].revenue = $RevenueCodes#0260
* item[=].productOrService = $cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 3
* item[=].revenue = $RevenueCodes#0305
* item[=].productOrService = $cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 4
* item[=].revenue = $RevenueCodes#0324
* item[=].productOrService = $cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 5
* item[=].revenue = $RevenueCodes#0259
* item[=].productOrService = $cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 6
* item[=].revenue = $RevenueCodes#0250
* item[=].productOrService = $cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 7
* item[=].revenue = $RevenueCodes#0710
* item[=].productOrService = $cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 8
* item[=].revenue = $RevenueCodes#0210
* item[=].productOrService = $cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 9
* item[=].revenue = $RevenueCodes#0272
* item[=].productOrService = $cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 10
* item[=].revenue = $RevenueCodes#0370
* item[=].productOrService = $cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 11
* item[=].revenue = $RevenueCodes#0730
* item[=].productOrService = $cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 12
* item[=].revenue = $RevenueCodes#0450
* item[=].productOrService = $cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* item[+].sequence = 13
* item[=].revenue = $RevenueCodes#0481
* item[=].productOrService = $cpt#99231
* item[=].servicedPeriod.start = "2017-05-23"
* item[=].locationCodeableConcept = $Place_of_Service_Code_Set#21
* item[=].locationCodeableConcept.text = "HOSPITAL - INPATIENT HOSPITAL"
* adjudication[billingnetworkstatus]
  * reason = $C4BBPayerAdjudicationStatus#innetwork "In Network"
  * reason.text = "Indicates the provider was in network for the service"
* adjudication[adjudicationamounttype]
  * category = $C4BBAdjudication#noncovered "Noncovered"
  * category.text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
  * amount.value = 0
  * amount.currency = #USD
* adjudication[benefitpaymentstatus]
  * category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
  * reason = C4BBPayerAdjudicationStatus#innetwork
* total[adjudicationamounttype][0].
  * category = $adjudication#submitted "Submitted Amount"
  * category.text = "The total submitted amount for the claim or group or line item."
  * amount.value = 7147.2
  * .amount.currency = #USD
* total[adjudicationamounttype][+].
  * category = $adjudication#eligible "Eligible Amount"
  * category.text = "Amount of the change which is considered for adjudication."
  * amount.value = 1542.01
  * amount.currency = #USD
* total[adjudicationamounttype][+].
  * category = $adjudication#deductible "Deductible"
  * category.text = "Amount deducted from the eligible amount prior to adjudication."
  * amount.value = 0
  * amount.currency = #USD
* total[adjudicationamounttype][+].
  * category = $adjudication#copay "CoPay"
  * category.text = "Patient Co-Payment"
  * amount.value = 120
  * amount.currency = #USD
* total[adjudicationamounttype][+].
  * category = $C4BBAdjudication#noncovered "Noncovered"
  * category.text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
  * amount.value = 0
  * amount.currency = #USD
* total[adjudicationamounttype][+].
  * category = $adjudication#benefit "Benefit Amount"
  * category.text = "Amount payable under the coverage"
  * amount.value = 1393.57
  * amount.currency = #USD
* total[adjudicationamounttype][+].
  * category = $C4BBAdjudication#memberliability "Member liability"
  * category.text = "The amount of the member's liability."
  * amount.value = 0
  * amount.currency = #USD

* adjudication[benefitpaymentstatus]
  * category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
  * reason = C4BBPayerAdjudicationStatus#outofnetwork