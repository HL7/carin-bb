```
Instance: EOBProfessionalTransportation1
InstanceOf: http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Professional-NonClinician|2.1.0-snapshot1
Title: "EOB Professional - Transportation 1"
Description: "EOB Professional - Transportation 1"
Usage: #example
* meta
  * lastUpdated = "2022-09-10T14:46:05-04:00"
  * source = "Organization/PayerOrganizationExample1"
* identifier
  * type = C4BBIdentifierType#uc "Unique Claim ID"
    * text = "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber"
  * system = "https://www.example.com/fhir/EOBIdentifier"
  * value = "ProfessionalTransportationEOBExample1"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#professional
  * text = "Professional"
* use = #claim
* patient = Reference(Patient1)
* billablePeriod.start = "2022-09-10"
* created = "2022-09-10T14:46:05-04:00"
* insurer = Reference(Payer2) "UPMC Health Plan"
* provider = Reference(ProviderTransportationOrganization1)
* payee
  * type = http://terminology.hl7.org/CodeSystem/payeetype#provider "Provider"
    * text = "Any benefit payable will be paid to the provider (Assignment of Benefit)."
  * party = Reference(ProviderTransportationOrganization1)
* outcome = #complete
* supportingInfo[0]
  * sequence = 1
  * category = C4BBSupportingInfoType#clmrecvddate "Claim Received Date"
    * text = "Date the claim was received by the payer."
  * timingDate = "2022-09-11"
* supportingInfo[+]
  * sequence = 2
  * category = C4BBSupportingInfoType#patientweight
  * valueQuantity
    * value = 160
    * system = "http://unitsofmeasure.org"
    * unit = "[lb_av]"
* supportingInfo[+]
  * sequence = 3
  * category = C4BBSupportingInfoType#ambulancetransportreason
  * reason = X12AmbulanceTransportReasonCodes#B "Patient was transported for the benefit of a preferred physician"
* supportingInfo[+]
  * sequence = 4
  * category = C4BBSupportingInfoType#transportationdistance
  * valueQuantity
    * value = 21
    * system = "http://unitsofmeasure.org"
    * unit = "[mi_i]"
* supportingInfo[+]
  * sequence = 5
  * category = C4BBSupportingInfoType#transportationdistance
  * valueQuantity
    * value = 22
    * system = "http://unitsofmeasure.org"
    * unit = "[mi_i]"
* supportingInfo[+]
  * sequence = 6
  * category = C4BBSupportingInfoType#roudtrippurpose
  * valueString = "Trip to facility and then back home"
* supportingInfo[+]
  * sequence = 7
  * category = C4BBSupportingInfoType#stretcherpurpose
  * valueString = "Patient could not walk"
* supportingInfo[+]
  * sequence = 8
  * category = C4BBSupportingInfoType#pickuplocation
  * valueString = "Patient home; Pittsburgh; PA,15222"
* supportingInfo[+]
  * sequence = 9
  * category = C4BBSupportingInfoType#dropofflocation
  * valueString = "Orange Medical Group; Pittsburgh; PA,15222"
* supportingInfo[+]
  * sequence = 10
  * category = C4BBSupportingInfoType#pickuplocation
  * valueString = "Orange Medical Group; Pittsburgh; PA,15222"
* supportingInfo[+]
  * sequence = 11
  * category = C4BBSupportingInfoType#dropofflocation
  * valueString = "Patient home; Pittsburgh; PA,15222"
* diagnosis
  * sequence = 1
  * diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#I70.249
  * type = http://terminology.hl7.org/CodeSystem/ex-diagnosistype#principal "Principal Diagnosis"
    * text = "The single medical diagnosis that is most relevant to the patient's chief complaint or need for treatment."
* insurance
  * focal = true
  * coverage = Reference(Coverage1)
* item[0]
  * sequence = 1
  * informationSequence[0] = 2
  * informationSequence[+] = 3
  * informationSequence[+] = 4
  * informationSequence[+] = 6
  * informationSequence[+] = 7
  * informationSequence[+] = 10
  * informationSequence[+] = 11
  * productOrService = https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets#A0428 "Ambulance service, basic life support, non-emergency transport (BLS)"
  * servicedDate = "2022-09-10"
  * locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#41
    * text = "Ambulance - Land"
  * adjudication[0]
    * category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
    * reason = C4BBPayerAdjudicationStatus#innetwork
  * adjudication[+]
    * category = http://terminology.hl7.org/CodeSystem/adjudication#submitted "Submitted Amount"
      * text = "The total submitted amount for the claim or group or line item."
    * amount
      * value = 40.35
      * currency = #USD
  * adjudication[+]
    * category = http://terminology.hl7.org/CodeSystem/adjudication#eligible "Eligible Amount"
      * text = "Amount of the change which is considered for adjudication."
    * amount
      * value = 40.35
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
      * value = 40.35
      * currency = #USD
* item[+]
  * sequence = 2
  * informationSequence[0] = 2
  * informationSequence[+] = 3
  * informationSequence[+] = 5
  * informationSequence[+] = 6
  * informationSequence[+] = 7
  * informationSequence[+] = 8
  * informationSequence[+] = 9
  * productOrService = https://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets#A0428 "Ambulance service, basic life support, non-emergency transport (BLS)"
  * servicedDate = "2022-09-10"
  * locationCodeableConcept = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set#41
    * text = "Ambulance - Land"
  * adjudication[0]
    * category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
    * reason = C4BBPayerAdjudicationStatus#innetwork
  * adjudication[+]
    * category = http://terminology.hl7.org/CodeSystem/adjudication#submitted "Submitted Amount"
      * text = "The total submitted amount for the claim or group or line item."
    * amount
      * value = 42.62
      * currency = #USD
  * adjudication[+]
    * category = http://terminology.hl7.org/CodeSystem/adjudication#eligible "Eligible Amount"
      * text = "Amount of the change which is considered for adjudication."
    * amount
      * value = 42.62
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
      * value = 42.62
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
    * value = 82.97
    * currency = #USD
* total[+]
  * category = http://terminology.hl7.org/CodeSystem/adjudication#eligible "Eligible Amount"
    * text = "Amount of the change which is considered for adjudication."
  * amount
    * value = 82.97
    * currency = #USD
* total[+]
  * category = http://terminology.hl7.org/CodeSystem/adjudication#benefit "Benefit Amount"
    * text = "Amount payable under the coverage"
  * amount
    * value = 82.97
    * currency = #USD
* total[+]
  * category = C4BBAdjudication#memberliability "Member liability"
    * text = "The amount of the member's liability."
  * amount
    * value = 0
    * currency = #USD
```