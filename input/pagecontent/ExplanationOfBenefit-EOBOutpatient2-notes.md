```
Instance: EOBOutpatient2
InstanceOf: http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Outpatient-Institutional|2.1.0
Title: "EOB Outpatient Institutional - Example 2"
Description: "EOB Outpatient Institutional - Example 2"
Usage: #example
* meta
  * lastUpdated = "2020-10-13T11:10:24-04:00"
  * source = "Organization/PayerOrganizationExample1"
* identifier
  * type = C4BBIdentifierType#uc "Unique Claim ID"
    * text = "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber"
  * system = "https://www.upmchealthplan.com/fhir/EOBIdentifier"
  * value = "OutpatientEOBExample1"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#institutional
  * text = "Institutional"
* subType = C4BBInstitutionalClaimSubType#outpatient
  * text = "Outpatient"
* use = #claim
* patient = Reference(Patient1)
* billablePeriod
  * start = "2020-09-29"
  * end = "2020-09-29"
* created = "2020-10-10T00:00:00-04:00"
* insurer = Reference(Payer2) "UPMC Health Plan"
* provider = Reference(ProviderOrganization5)
* payee
  * type = http://terminology.hl7.org/CodeSystem/payeetype#provider "Provider"
    * text = "Any benefit payable will be paid to the provider (Assignment of Benefit)."
  * party = Reference(ProviderOrganization6)
* outcome = #complete
* careTeam[0]
  * sequence = 1
  * provider = Reference(Practitioner1)
  * role = C4BBClaimCareTeamRole#attending "Attending"
    * text = "The attending physician"
* careTeam[+]
  * sequence = 2
  * provider = Reference(Practitioner3)
  * role = C4BBClaimCareTeamRole#referring "Referring"
    * text = "The referring physician"
* supportingInfo
  * sequence = 1
  * category = C4BBSupportingInfoType#clmrecvddate
  * timingDate = "2020-10-10"
* diagnosis[0]
  * sequence = 1
  * diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#I95.1
  * type = http://terminology.hl7.org/CodeSystem/ex-diagnosistype#principal "Principal Diagnosis"
    * text = "The single medical diagnosis that is most relevant to the patient's chief complaint or need for treatment."
* diagnosis[+]
  * sequence = 2
  * diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#I95.1
  * type = C4BBClaimDiagnosisType#other "Other"
    * text = "Required when other conditions coexist or develop subsequently during the treatment"
* diagnosis[+]
  * sequence = 3
  * diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#L97.529
  * type = C4BBClaimDiagnosisType#other "Other"
    * text = "Required when other conditions coexist or develop subsequently during the treatment"
* diagnosis[+]
  * sequence = 4
  * diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#I73.9
  * type = C4BBClaimDiagnosisType#other "Other"
    * text = "Required when other conditions coexist or develop subsequently during the treatment"
* insurance
  * focal = true
  * coverage = Reference(Coverage1)
* item[0]
  * sequence = 1
  * revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0551
  * productOrService = http://www.ama-assn.org/go/cpt#99231
  * servicedDate = "2020-09-29"
  * locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#12
    * text = "HOME"
  * adjudication[0]
    * category = http://terminology.hl7.org/CodeSystem/adjudication#submitted "Submitted Amount"
      * text = "The total submitted amount for the claim or group or line item."
    * amount
      * value = 84.4
      * currency = #USD
  * adjudication[+]
    * category = http://terminology.hl7.org/CodeSystem/adjudication#copay "CoPay"
      * text = "Patient Co-Payment"
    * amount
      * value = 0
      * currency = #USD
  * adjudication[+]
    * category = http://terminology.hl7.org/CodeSystem/adjudication#eligible "Eligible Amount"
      * text = "Amount of the change which is considered for adjudication."
    * amount
      * value = 56.52
      * currency = #USD
  * adjudication[+]
    * category = http://terminology.hl7.org/CodeSystem/adjudication#deductible "Deductible"
      * text = "Amount deducted from the eligible amount prior to adjudication."
    * amount
      * value = 0
      * currency = #USD
  * adjudication[+]
    * category = http://terminology.hl7.org/CodeSystem/adjudication#benefit "Benefit Amount"
      * text = "Amount payable under the coverage"
    * amount
      * value = 56.52
      * currency = #USD
  * adjudication[+]
    * category = C4BBAdjudication#noncovered "Noncovered"
      * text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
    * amount
      * value = 0
      * currency = #USD
* item[+]
  * sequence = 2
  * revenue = https://www.nubc.org/CodeSystem/RevenueCodes#0023
  * productOrService = http://www.ama-assn.org/go/cpt#99231
  * servicedDate = "2020-09-29"
  * locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#12
    * text = "HOME"
  * adjudication[0]
    * category = http://terminology.hl7.org/CodeSystem/adjudication#submitted "Submitted Amount"
      * text = "The total submitted amount for the claim or group or line item."
    * amount
      * value = 0
      * currency = #USD
  * adjudication[+]
    * category = C4BBAdjudication#noncovered "Noncovered"
      * text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
    * amount
      * value = 0
      * currency = #USD
* adjudication
  * category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
  * reason = C4BBPayerAdjudicationStatus#innetwork
* total[0]
  * category = http://terminology.hl7.org/CodeSystem/adjudication#eligible "Eligible Amount"
    * text = "Amount of the change which is considered for adjudication."
  * amount
    * value = 56.52
    * currency = #USD
* total[+]
  * category = http://terminology.hl7.org/CodeSystem/adjudication#deductible "Deductible"
    * text = "Amount deducted from the eligible amount prior to adjudication."
  * amount
    * value = 0
    * currency = #USD
* total[+]
  * category = http://terminology.hl7.org/CodeSystem/adjudication#copay "CoPay"
    * text = "Patient Co-Payment"
  * amount
    * value = 0
    * currency = #USD
* total[+]
  * category = C4BBAdjudication#noncovered "Noncovered"
    * text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
  * amount
    * value = 0
    * currency = #USD
* total[+]
  * category = http://terminology.hl7.org/CodeSystem/adjudication#benefit "Benefit Amount"
    * text = "Amount payable under the coverage"
  * amount
    * value = 56.52
    * currency = #USD
* total[+]
  * category = C4BBAdjudication#memberliability "Member liability"
    * text = "The amount of the member's liability."
  * amount
    * value = 0
    * currency = #USD
```