Instance: BB-EOBOutpatient2-nonfinancial
InstanceOf: C4BBExplanationOfBenefitOutpatientInstitutionalBasis
Title: "EOB Outpatient Institutional - Example 2 - Nonfinancial"
Description: "EOB Outpatient Institutional - Example 2 - Nonfinancial"
Usage: #example
* meta.lastUpdated = "2020-10-13T11:10:24-04:00"
* meta.source = "Organization/PayerOrganizationExample1"
* meta.profile[+] = Canonical(C4BBExplanationOfBenefitOutpatientInstitutionalBasis|2.1.0-snapshot1)
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
