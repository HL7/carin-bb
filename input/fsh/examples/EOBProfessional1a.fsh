Instance: EOBProfessional1a
InstanceOf: C4BBExplanationOfBenefitProfessionalNonClinician
Description: "EOB Professional  Example1"
Usage: #example
//* id = "1234-234-1243-12345678901-20190101-20191031"
//* meta.profile = Canonical(C4BBExplanationOfBenefitProfessionalNonClinician)
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* status = #active
* identifier.type = $C4BBIdentifierTypeCS#uc
* identifier.value = "AW123412341234123412341234123413"
* identifier.system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* type = $HL7ClaimTypeCS#professional
* type.text = "Professional"
* use = #claim
* created = "2019-07-02T00:00:00+00:00"
* insurer = Reference(OrganizationPayer1)
* insurer.display = "XXX Health Plan"
* patient = Reference(Patient1)
* billablePeriod.start = "2019-01-01"
* billablePeriod.end = "2019-10-31"
* provider = Reference(OrganizationProvider1)
* provider.display = "XXX Health Plan"
* outcome = #partial
* diagnosis[0].diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#S06.0X1A
* diagnosis[0].type = $HL7DiagnosisType#principal
* diagnosis[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage[0] = Reference(Coverage1)

* adjudication[billingnetworkcontractingstatus].category = C4BBAdjudicationDiscriminator#billingnetworkcontractingstatus
* adjudication[billingnetworkcontractingstatus].reason = C4BBPayerAdjudicationStatus#contracted
* adjudication[renderingnetworkcontractingstatus].category = C4BBAdjudicationDiscriminator#renderingnetworkcontractingstatus
* adjudication[renderingnetworkcontractingstatus].reason = C4BBPayerAdjudicationStatus#contracted
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
/*Testing for DAR*/
//* item[0].productOrService = $HL7DataAbsentReason#not-applicable "Not Applicable"
* item[0].productOrService = $CPT#97110 "Physical Therapy"
* item[0].sequence = 1
* item[0].servicedDate = "2019-07-02"
* item[0].locationCodeableConcept = $CMSPlaceofServiceCodes#11 "Office"
* item[0].adjudication[adjudicationamounttype][0].category = $HL7AdjudicationCS#submitted
* item[0].adjudication[adjudicationamounttype][0].amount.value = 1000.00
* item[0].adjudication[adjudicationamounttype][0].amount.currency = #USD
* item[0].adjudication[benefitpaymentstatus][0].category.coding[0] = C4BBPayerAdjudicationStatus#other
* supportingInfo[clmrecvddate].category = C4BBSupportingInfoType#clmrecvddate
* supportingInfo[clmrecvddate].timingDate = 2011-05-30
* supportingInfo[clmrecvddate].sequence = 3
* supportingInfo[servicefacility].category = C4BBSupportingInfoType#servicefacility
* supportingInfo[servicefacility].sequence = 4
* supportingInfo[servicefacility].valueReference = Reference(OrganizationProvider1)

* supportingInfo[medicalrecordnumber].category  = C4BBSupportingInfoType#medicalrecordnumber
* supportingInfo[medicalrecordnumber].valueString = "1234-234-1243-12345678901m"
* supportingInfo[medicalrecordnumber].sequence = 5
* supportingInfo[patientaccountnumber].category  = C4BBSupportingInfoType#patientaccountnumber
* supportingInfo[patientaccountnumber].valueString = "1234-234-1243-12345678901a"
* supportingInfo[patientaccountnumber].sequence = 6
