Instance: EOBOutpatient1
InstanceOf: C4BBExplanationOfBenefitOutpatientInstitutional
Title: "EOB Outpatient Institutional - Example 1"
Description: "EOB Outpatient Institutional - Example 1"
Usage: #example
//* id = "1234-234-1243-12345678901-20190101-20191031"
* meta.profile[+] = Canonical(C4BBExplanationOfBenefitOutpatientInstitutional|2.1.0-snapshot)
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* status = #active
* identifier[uniqueclaimid].type = C4BBIdentifierType#uc
* identifier[uniqueclaimid].value = "AW123412341234123412341234123412"
* identifier[uniqueclaimid].system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* type = $HL7ClaimTypeCS#institutional
* type.text = "Institutional"
* subType = C4BBInstitutionalClaimSubType#outpatient
* subType.text = "Outpatient"
* use = #claim
* created = "2019-11-02T00:00:00+00:00"
* insurer = Reference(Payer1)
* insurer.display = "Organization Payer 1"
* patient = Reference(Patient2)
* billablePeriod.start = "2019-01-01"
* billablePeriod.end = "2019-10-31"
* provider = Reference(ProviderOrganization1)
* provider.display = "Orange Medical Group"
* careTeam[+].sequence = 1
* careTeam[=].provider = Reference(ProviderOrganization1)
* careTeam[=].role = C4BBClaimCareTeamRole#rendering "Rendering provider"
* careTeam[=].qualification = $NUCCProviderTaxonomy#364SX0200X "Oncology Clinical Nurse Specialist"
* outcome = #partial
* diagnosis[0].diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#S06.0X1A
* diagnosis[0].type = $C4BBClaimDiagnosisTypeCS#patientreasonforvisit
* diagnosis[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage[0] = Reference(Coverage3)
* item[0].sequence = 1
* item[0].productOrService = $HL7DataAbsentReason#not-applicable "Not Applicable"
* item[0].revenue = $AHANUBCRevenueCodes#Dummy
* item[0].servicedDate = "2019-11-02"
// Header-Level adjudication only
* adjudication[adjudicationamounttype][0]
  * category = C4BBAdjudication#paidtoprovider
  * category.text = "Payment Amount"
  * amount.value = 620.00
  * amount.currency = #USD
* adjudication[adjudicationamounttype][1]
  * category = C4BBAdjudication#paidbypatient
  * category.text = "Patient Pay Amount"
  * amount.value = 0.00
* adjudication[billingnetworkstatus]
  * reason = C4BBPayerAdjudicationStatus#innetwork
* adjudication[benefitpaymentstatus]
  * reason = C4BBPayerAdjudicationStatus#innetwork

* total[adjudicationamounttype][2].amount.currency = #USD
* total[adjudicationamounttype][0].category = $C4BBAdjudicationCS#paidtoprovider
* total[adjudicationamounttype][0].category.text = "Payment Amount"
* total[adjudicationamounttype][0].amount.value = 620.00
* total[adjudicationamounttype][0].amount.currency = #USD
* total[adjudicationamounttype][1].category = $HL7AdjudicationCS#submitted
* total[adjudicationamounttype][1].category.text = "Submitted Amount"
* total[adjudicationamounttype][1].amount.value = 2650.00
* total[adjudicationamounttype][1].amount.currency = #USD
* total[adjudicationamounttype][2].category = $C4BBAdjudicationCS#paidbypatient
* total[adjudicationamounttype][2].category.text = "Patient Pay Amount"
* total[adjudicationamounttype][2].amount.value = 0.00
* total[adjudicationamounttype][2].amount.currency = #USD
* supportingInfo[clmrecvddate].category = C4BBSupportingInfoType#clmrecvddate
* supportingInfo[clmrecvddate].timingDate = 2019-11-30
* supportingInfo[clmrecvddate].sequence = 2
* supportingInfo[typeofbill].category = C4BBSupportingInfoType#typeofbill
* supportingInfo[typeofbill].code = $AHANUBCTypeOfBill#Dummy
* supportingInfo[typeofbill].sequence = 3
* supportingInfo[pointoforigin].category = C4BBSupportingInfoType#pointoforigin
* supportingInfo[pointoforigin].code = $AHANUBCPointOfOriginForAdmissionOrVisitNonnewborn#Dummy
* supportingInfo[pointoforigin].sequence = 4
* supportingInfo[admtype].category = C4BBSupportingInfoType#admtype
* supportingInfo[admtype].code = $AHANUBCPriorityTypeOfAdmissionOrVisit#Dummy
* supportingInfo[admtype].sequence = 5
* supportingInfo[discharge-status].category = C4BBSupportingInfoType#discharge-status
* supportingInfo[discharge-status].code = $AHANUBCPatientDischargeStatus#Dummy
* supportingInfo[discharge-status].sequence = 6

* supportingInfo[medicalrecordnumber].category  = C4BBSupportingInfoType#medicalrecordnumber
* supportingInfo[medicalrecordnumber].valueString = "1234-234-1243-12345678901m"
* supportingInfo[medicalrecordnumber].sequence = 7
* supportingInfo[patientaccountnumber].category  = C4BBSupportingInfoType#patientaccountnumber
* supportingInfo[patientaccountnumber].valueString = "1234-234-1243-12345678901a"
* supportingInfo[patientaccountnumber].sequence = 8
