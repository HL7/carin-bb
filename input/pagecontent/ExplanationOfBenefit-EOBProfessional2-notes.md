```
Instance: EOBProfessional2
InstanceOf: http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Professional-NonClinician|2.1.0
Title: "EOB Professional - Example 2"
Description: "EOB Professional - Example 2"
Usage: #example
* meta
  * lastUpdated = "2020-10-20T14:46:05-04:00"
  * source = "Organization/PayerOrganizationExample1"
* identifier
  * type = C4BBIdentifierType#uc "Unique Claim ID"
    * text = "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber"
  * system = "https://www.upmchealthplan.com/fhir/EOBIdentifier"
  * value = "ProfessionalEOBExample1"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#professional
  * text = "Professional"
* use = #claim
* patient = Reference(Patient1)
* billablePeriod
  * start = "2020-08-04"
  * end = "2020-08-04"
* created = "2020-08-24T00:00:00-04:00"
* insurer = Reference(Payer2) "UPMC Health Plan"
* provider = Reference(ProviderOrganization1)
* payee
  * type = http://terminology.hl7.org/CodeSystem/payeetype#provider "Provider"
    * text = "Any benefit payable will be paid to the provider (Assignment of Benefit)."
  * party = Reference(ProviderOrganization1)
* outcome = #complete
* careTeam[0]
  * sequence = 1
  * provider = Reference(Practitioner1)
  * role
    * coding = http://terminology.hl7.org/CodeSystem/claimcareteamrole#primary "Primary provider"
      * version = "1.0.0"
    * text = "The primary care provider."
* careTeam[+]
  * sequence = 2
  * provider = Reference(Practitioner2)
  * role = C4BBClaimCareTeamRole#referring "Referring"
    * text = "The referring physician"
* supportingInfo
  * sequence = 1
  * category = C4BBSupportingInfoType#clmrecvddate "Claim Received Date"
    * text = "Date the claim was received by the payer."
  * timingDate = "2020-08-24"
* diagnosis[0]
  * sequence = 1
  * diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#I70.249
  * type = http://terminology.hl7.org/CodeSystem/ex-diagnosistype#principal "Principal Diagnosis"
    * text = "The single medical diagnosis that is most relevant to the patient's chief complaint or need for treatment."
* diagnosis[+]
  * sequence = 2
  * diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#L97.929
  * type = C4BBClaimDiagnosisType#secondary "secondary"
    * text = "Required when necessary to report additional diagnoses on professional and non-clinician claims"
* insurance
  * focal = true
  * coverage = Reference(Coverage1)
* item[0]
  * sequence = 1
  * productOrService = http://www.ama-assn.org/go/cpt#75710
  * servicedDate = "2020-08-04"
  * locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
    * text = "HOSPITAL - INPATIENT HOSPITAL"
  * adjudication[0]
    * category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
    * reason = C4BBPayerAdjudicationStatus#innetwork
  * adjudication[+]
    * category = http://terminology.hl7.org/CodeSystem/adjudication#submitted "Submitted Amount"
      * text = "The total submitted amount for the claim or group or line item."
    * amount
      * value = 68.8
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
      * value = 34.8
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
      * value = 34.8
      * currency = #USD
  * adjudication[+]
    * category = C4BBAdjudication#noncovered "Noncovered"
      * text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
    * amount
      * value = 0
      * currency = #USD
* item[+]
  * sequence = 2
  * productOrService = http://www.ama-assn.org/go/cpt#75710
  * servicedDate = "2020-08-04"
  * locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
    * text = "HOSPITAL - INPATIENT HOSPITAL"
  * adjudication[0]
    * category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
    * reason = C4BBPayerAdjudicationStatus#innetwork
  * adjudication[+]
    * category = http://terminology.hl7.org/CodeSystem/adjudication#submitted "Submitted Amount"
      * text = "The total submitted amount for the claim or group or line item."
    * amount
      * value = -68.8
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
      * value = -34.8
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
      * value = -34.8
      * currency = #USD
  * adjudication[+]
    * category = C4BBAdjudication#noncovered "Noncovered"
      * text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
    * amount
      * value = 0
      * currency = #USD
* item[+]
  * sequence = 3
  * productOrService = http://www.ama-assn.org/go/cpt#75710
  * servicedDate = "2020-08-04"
  * locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
    * text = "HOSPITAL - INPATIENT HOSPITAL"
  * adjudication[0]
    * category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
    * reason = C4BBPayerAdjudicationStatus#innetwork
  * adjudication[+]
    * category = http://terminology.hl7.org/CodeSystem/adjudication#submitted "Submitted Amount"
      * text = "The total submitted amount for the claim or group or line item."
    * amount
      * value = 68.8
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
      * value = 34.8
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
      * value = 34.8
      * currency = #USD
  * adjudication[+]
    * category = C4BBAdjudication#noncovered "Noncovered"
      * text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
    * amount
      * value = 0
      * currency = #USD
* item[+]
  * sequence = 4
  * productOrService = http://www.ama-assn.org/go/cpt#37228
  * servicedDate = "2020-08-04"
  * locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
    * text = "HOSPITAL - INPATIENT HOSPITAL"
  * adjudication[0]
    * category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
    * reason = C4BBPayerAdjudicationStatus#innetwork
  * adjudication[+]
    * category = http://terminology.hl7.org/CodeSystem/adjudication#submitted "Submitted Amount"
      * text = "The total submitted amount for the claim or group or line item."
    * amount
      * value = 751.2
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
      * value = 224.11
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
      * value = 0
      * currency = #USD
  * adjudication[+]
    * category = C4BBAdjudication#noncovered "Noncovered"
      * text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
    * amount
      * value = 224.11
      * currency = #USD
* item[+]
  * sequence = 5
  * productOrService = http://www.ama-assn.org/go/cpt#37228
  * servicedDate = "2020-08-04"
  * locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
    * text = "HOSPITAL - INPATIENT HOSPITAL"
  * adjudication[0]
    * category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
    * reason = C4BBPayerAdjudicationStatus#innetwork
  * adjudication[+]
    * category = http://terminology.hl7.org/CodeSystem/adjudication#submitted "Submitted Amount"
      * text = "The total submitted amount for the claim or group or line item."
    * amount
      * value = 751.2
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
      * value = 224.11
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
      * value = 224.11
      * currency = #USD
  * adjudication[+]
    * category = C4BBAdjudication#noncovered "Noncovered"
      * text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
    * amount
      * value = 0
      * currency = #USD
* item[+]
  * sequence = 6
  * productOrService = http://www.ama-assn.org/go/cpt#37228
  * servicedDate = "2020-08-04"
  * locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#21
    * text = "HOSPITAL - INPATIENT HOSPITAL"
  * adjudication[0]
    * category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
    * reason = C4BBPayerAdjudicationStatus#innetwork
  * adjudication[+]
    * category = http://terminology.hl7.org/CodeSystem/adjudication#submitted "Submitted Amount"
      * text = "The total submitted amount for the claim or group or line item."
    * amount
      * value = -751.2
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
      * value = -224.11
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
      * value = 0
      * currency = #USD
  * adjudication[+]
    * category = C4BBAdjudication#noncovered "Noncovered"
      * text = "The portion of the cost of this service that was deemed not eligible by the insurer because the service or member was not covered by the subscriber contract."
    * amount
      * value = -224.11
      * currency = #USD
* adjudication
  * category = C4BBAdjudicationDiscriminator#billingnetworkstatus "Billing Network Status"
    * text = "Indicates that the Billing Provider has a contract with the Payer as of the effective date of service or admission."
  * reason = C4BBPayerAdjudicationStatus#innetwork "In Network"
    * text = "Indicates the provider was in network for the service"
* total[0]
  * category = http://terminology.hl7.org/CodeSystem/adjudication#submitted "Submitted Amount"
    * text = "The total submitted amount for the claim or group or line item."
  * amount
    * value = 820
    * currency = #USD
* total[+]
  * category = http://terminology.hl7.org/CodeSystem/adjudication#eligible "Eligible Amount"
    * text = "Amount of the change which is considered for adjudication."
  * amount
    * value = 258.91
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
    * value = 258.91
    * currency = #USD
* total[+]
  * category = C4BBAdjudication#memberliability "Member liability"
    * text = "The amount of the member's liability."
  * amount
    * value = 0
    * currency = #USD
```