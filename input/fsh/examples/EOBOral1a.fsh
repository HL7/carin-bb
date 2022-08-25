Instance: EOBOral1a
InstanceOf: C4BBExplanationOfBenefitOral
Title: "EOBOral1a"
Description: "EOB Oral Example1"
Usage: #example
* meta.lastUpdated = "2021-03-18T10:23:00-05:00"
* meta.profile[supportedProfile] = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Oral|1.2.0"
* language = #en-US
* identifier.type = $C4BBIdentifierType#uc
* identifier.system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* identifier.value = "210300002"
* status = #active
* type = $claim-type#oral
* type.text = "Oral"
* use = #claim
* patient = Reference(Patient1)
* billablePeriod.start = "2021-03-01"
* billablePeriod.end = "2021-03-31"
* created = "2021-03-18T10:23:00-05:00"
* insurer = Reference(OrganizationDentalPayer1) "XXX Health Plan"
* provider = Reference(PractitionerDentalProvider1) "XXX Dental Plan"
* outcome = #complete
* supportingInfo[benefitpaymentstatus].
  * sequence = 6
  * code = $C4BBPayerAdjudicationStatus#innetwork
* supportingInfo[clmrecvddate].
  * sequence = 4
  * timingDate = "2021-03-18"
* supportingInfo[servicefacility].
  * sequence = 4
  * valueReference = Reference(OrganizationProvider1)
* supportingInfo[patientaccountnumber].
  * sequence = 5
  * valueString = "PATIENTACCTNO3"
* diagnosis.sequence = 1
* diagnosis.diagnosisCodeableConcept = $icd-10-cm#Z01.21 "Encounter for dental examination and cleaning with abnormal findings"
* diagnosis.type = $ex-diagnosistype#principal
* insurance.focal = true
* insurance.coverage = Reference(CoverageDental1)
* item[0].
  * sequence = 1
  * productOrService = $cdt#D1110 "Prophylaxis - Adult"
  * servicedDate = "2021-03-18"
  * locationCodeableConcept = $Place_of_Service_Code_Set#11 "Office"
  * adjudication[adjudicationamounttype]
    * amount.value = 190
    * amount.currency = #USD
    * category = $adjudication#submitted
    * category.text = "Submitted Amount"
  * adjudication[innetwork]
* item[+]
  * sequence = 2
  * productOrService = $cdt#D0120 "Periodic oral evaluation"
  * servicedDate = "2021-03-18"
  * locationCodeableConcept = $Place_of_Service_Code_Set#11 "Office"
  * adjudication[adjudicationamounttype]
    * amount.value = 220
    * amount.currency = #USD
    * category = $adjudication#submitted
    * category.text = "Submitted Amount"
  * adjudication[innetwork]
* adjudication[renderingnetworkcontractingstatus]
  * reason = $C4BBPayerAdjudicationStatus#contracted
* adjudication[billingnetworkcontractingstatus]
  * reason = $C4BBPayerAdjudicationStatus#contracted
* total[adjudicationamounttype][0]
  * category = $adjudication#submitted
  * category.text = "Submitted Amount"
  * amount.value = 410
  * amount.currency = #USD
* total[adjudicationamounttype][+]
  * category = $adjudication#benefit
  * category.text = "Benefit Amount"
  * amount.value = 350
  * amount.currency = #USD
* total[adjudicationamounttype][+]
  * category = $C4BBAdjudication#discount
  * category.text = "Discount Amount"
  * amount.value = 60
  * amount.currency = #USD
* total[adjudicationamounttype][+]
  * category = $C4BBAdjudication#paidtoprovider
  * category.text = "Payment Amount"
  * amount.value = 350
  * amount.currency = #USD