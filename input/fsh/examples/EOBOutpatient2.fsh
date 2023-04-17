Instance: EOBOutpatient2
InstanceOf: C4BBExplanationOfBenefitOutpatientInstitutional
Title: "EOB Outpatient Institutional - Example 2"
Description: "EOB Outpatient Institutional - Example 2"
Usage: #example
* meta.profile[+] = Canonical(C4BBExplanationOfBenefitOutpatientInstitutional|2.0.0)
* insert BaseEOBOutpatient2

* item[0]
  * adjudication[adjudicationamounttype][0].
    * category = $adjudication#submitted "Submitted Amount"
    * category.text = "The total submitted amount for the claim or group or line item."
    * amount.value = 84.4
    * amount.currency = #USD
  * adjudication[adjudicationamounttype][+]
    * category = $adjudication#copay "CoPay"
    * category.text = "Patient Co-Payment"
    * amount.value = 0
    * amount.currency = #USD
  * adjudication[adjudicationamounttype][+]
    * category.coding[0] = $adjudication#eligible "Eligible Amount"
///    * category.coding[+] = $adjudication_1#https://bluebutton.cms.gov/resources/variables/line_prmry_alowd_chrg_amt "Line Primary Payer Allowed Charge Amount"
    * category.text = "Amount of the change which is considered for adjudication."
    * amount.value = 56.52
    * amount.currency = #USD
  * adjudication[adjudicationamounttype][+]
    * category = $adjudication#deductible "Deductible"
    * category.text = "Amount deducted from the eligible amount prior to adjudication."
    * amount.value = 0
    * amount.currency = #USD
  * adjudication[adjudicationamounttype][+]
    * category = $adjudication#benefit "Benefit Amount"
    * category.text = "Amount payable under the coverage"
    * amount.value = 56.52
    * amount.currency = #USD
  * adjudication[adjudicationamounttype][+]
    * category = $C4BBAdjudication#noncovered "Noncovered"
    * category.text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
    * amount.value = 0
    * amount.currency = #USD

* item[1]
  * adjudication[0]
    * category = $adjudication#submitted "Submitted Amount"
    * category.text = "The total submitted amount for the claim or group or line item."
    * amount.value = 0
    * amount.currency = #USD
  *  adjudication[adjudicationamounttype]
    * category = $adjudication#copay "CoPay"
    * category.text = "Patient Co-Payment"
    * amount.value = 0
    * amount.currency = #USD
  *  adjudication[adjudicationamounttype]
    * category = $adjudication#eligible "Eligible Amount"
    * category.text = "Amount of the change which is considered for adjudication."
    * amount.value = 0
    * amount.currency = #USD
  *  adjudication[adjudicationamounttype]
    * category = $adjudication#deductible "Deductible"
    * category.text = "Amount deducted from the eligible amount prior to adjudication."
    * amount.value = 0
    * amount.currency = #USD
  *  adjudication[adjudicationamounttype]
    * category = $adjudication#benefit "Benefit Amount"
    * category.text = "Amount payable under the coverage"
    * amount.value = 0
    * amount.currency = #USD
  *  adjudication[adjudicationamounttype]
    * category = $C4BBAdjudication#noncovered "Noncovered"
    * category.text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
    * amount.value = 0
    * amount.currency = #USD
    

* total[adjudicationamounttype][0]
  * category = $adjudication#submitted "Submitted Amount"
  * category.text = "The total submitted amount for the claim or group or line item."
  * amount.value = 84.4
  * amount.currency = #USD
* total[adjudicationamounttype][0]
  * category = $adjudication#eligible "Eligible Amount"
  * category.text = "Amount of the change which is considered for adjudication."
  * amount.value = 56.52
  * amount.currency = #USD
* total[adjudicationamounttype][+]
  * category = $adjudication#deductible "Deductible"
  * category.text = "Amount deducted from the eligible amount prior to adjudication."
  * amount.value = 0
  * amount.currency = #USD
* total[adjudicationamounttype][+]
  * category = $adjudication#copay "CoPay"
  * category.text = "Patient Co-Payment"
  * amount.value = 0
  * amount.currency = #USD
* total[adjudicationamounttype][+]
  * category = $C4BBAdjudication#noncovered "Noncovered"
  * category.text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
  * amount.value = 0
  * amount.currency = #USD
* total[adjudicationamounttype][+]
  * category = $adjudication#benefit "Benefit Amount"
  * category.text = "Amount payable under the coverage"
  * amount.value = 56.52
  * amount.currency = #USD
* total[adjudicationamounttype][+]
  * category = $C4BBAdjudication#memberliability "Member liability"
  * category.text = "The amount of the member's liability."
  * amount.value = 0
  * amount.currency = #USD


Instance: EOBOutpatientNonFinancial2
InstanceOf: C4BBExplanationOfBenefitOutpatientInstitutionalNonFinancial
Title: "EOB Outpatient Institutional Non-Financial - Example 2"
Description: "EOB Outpatient Institutional Non-Financial - Example 2"
Usage: #example
* meta.profile[+] = Canonical(C4BBExplanationOfBenefitOutpatientInstitutionalNonFinancial|2.0.0)
* insert BaseEOBOutpatient2

RuleSet: BaseEOBOutpatient2
* meta.lastUpdated = "2020-10-13T11:10:24-04:00"
* meta.source = "Organization/PayerOrganizationExample1"
* meta.profile[+] = Canonical(C4BBExplanationOfBenefitOutpatientInstitutional|2.0.0)
* identifier[uniqueclaimid].type = $C4BBIdentifierType#uc "Unique Claim ID"
* identifier[uniqueclaimid].type.text = "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber"
* identifier[uniqueclaimid].system = "https://www.upmchealthplan.com/fhir/EOBIdentifier"
* identifier[uniqueclaimid].value = "OutpatientEOBExample1"
* status = #active
* type = $claim-type#institutional
* type.text = "Institutional"
* subType = $C4BBInstitutionalClaimSubType#outpatient
* subType.text = "Outpatient"
* use = #claim
* patient = Reference(Patient1)
* billablePeriod.start = "2020-09-29"
* billablePeriod.end = "2020-09-29"
* created = "2020-10-10T00:00:00-04:00"
* insurer = Reference(Payer2) "UPMC Health Plan"
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
* supportingInfo[clmrecvddate]
  * sequence = 1
  * timingDate = "2020-10-10"
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
* insurance.coverage = Reference(Coverage1)
// Item-Level adjudication only
* item[0]
  * sequence = 1
  * revenue = $AHANUBCRevenueCodes#0551
  * productOrService = $cpt#99231
  * servicedDate = "2020-09-29"
  * locationCodeableConcept = $CMSPlaceofServiceCodes#12
  * locationCodeableConcept.text = "HOME"
  
* item[+]
  * sequence = 2
  * revenue = $AHANUBCRevenueCodes#0023
  * productOrService = $cpt#99231
  * servicedDate = "2020-09-29"
  * locationCodeableConcept = $CMSPlaceofServiceCodes#12
  * locationCodeableConcept.text = "HOME"

*  adjudication[benefitpaymentstatus]
  * reason = C4BBPayerAdjudicationStatus#innetwork
