Instance: EOBProfessional1
InstanceOf: C4BBExplanationOfBenefitProfessionalNonClinician
Description: "EOB Professional Example 1"
Title: "EOB Professional - Example 1"
Usage: #example

* meta.profile[+] = Canonical(C4BBExplanationOfBenefitProfessionalNonClinician|2.0.0)
* insert BaseEOBProfessional1

* item[=].adjudication[adjudicationamounttype][+].category = $HL7AdjudicationCS#submitted
* item[=].adjudication[adjudicationamounttype][=].amount.value = 1000.00
* item[=].adjudication[adjudicationamounttype][=].amount.currency = #USD


* total[adjudicationamounttype][+].category = $C4BBAdjudicationCS#paidtoprovider
* total[adjudicationamounttype][=].category.text = "Payment Amount"
* total[adjudicationamounttype][=].amount.value = 620.00
* total[adjudicationamounttype][=].amount.currency = #USD
* total[adjudicationamounttype][+].category = $HL7AdjudicationCS#submitted
* total[adjudicationamounttype][=].category.text = "Submitted Amount"
* total[adjudicationamounttype][=].amount.value = 2650.00
* total[adjudicationamounttype][=].amount.currency = #USD
* total[adjudicationamounttype][+].category = $C4BBAdjudicationCS#paidbypatient
* total[adjudicationamounttype][=].category.text = "Patient Pay Amount"
* total[adjudicationamounttype][=].amount.value = 0.00
* total[adjudicationamounttype][=].amount.currency = #USD


Instance: EOBProfessionalNonFinancial1
InstanceOf: C4BBExplanationOfBenefitProfessionalNonClinicianNonFinancial
Description: "EOB Professional Non-Financial Example 1"
Title: "EOB Professional Non-Financial - Example 1"
Usage: #example

* meta.profile[+] = Canonical(C4BBExplanationOfBenefitProfessionalNonClinicianNonFinancial|2.0.0)
* insert BaseEOBProfessional1

RuleSet: BaseEOBProfessional1
//* id = "1234-234-1243-12345678901-20190101-20191031"
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* status = #active
* identifier[uniqueclaimid].type = $C4BBIdentifierTypeCS#uc
* identifier[uniqueclaimid].value = "AW123412341234123412341234123413"
* identifier[uniqueclaimid].system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* type = $HL7ClaimTypeCS#professional
* type.text = "Professional"
* use = #claim
* created = "2019-07-02T00:00:00+00:00"
* insurer = Reference(Payer1)
* insurer.display = "XXX Health Plan"
* patient = Reference(Patient2)
* billablePeriod.start = "2019-01-01"
* billablePeriod.end = "2019-10-31"
* provider = Reference(ProviderOrganization1)
* provider.display = "XXX Health Plan"
* outcome = #partial
* diagnosis[+].diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#S06.0X1A
* diagnosis[=].type = $HL7DiagnosisType#principal
* diagnosis[=].sequence = 1
* insurance[+].focal = true
* insurance[=].coverage[+] = Reference(Coverage3)

* adjudication[billingnetworkstatus].category = C4BBAdjudicationDiscriminator#billingnetworkstatus
* adjudication[billingnetworkstatus].reason = C4BBPayerAdjudicationStatus#innetwork
* adjudication[renderingnetworkstatus].category = C4BBAdjudicationDiscriminator#renderingnetworkstatus
* adjudication[renderingnetworkstatus].reason = C4BBPayerAdjudicationStatus#innetwork

/*Testing for DAR*/
//* item[0].productOrService = $HL7DataAbsentReason#not-applicable "Not Applicable"
* item[+].productOrService = $CPT#97110 "Physical Therapy"
* item[=].sequence = 1
* item[=].servicedDate = "2019-07-02"
* item[=].locationCodeableConcept = $CMSPlaceofServiceCodes#11 "Office"

* item[=].adjudication[benefitpaymentstatus][+].category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
* item[=].adjudication[benefitpaymentstatus][=].reason = C4BBPayerAdjudicationStatus#other

* supportingInfo[clmrecvddate].category = C4BBSupportingInfoType#clmrecvddate
* supportingInfo[clmrecvddate].timingDate = 2011-05-30
* supportingInfo[clmrecvddate].sequence = 3
* supportingInfo[servicefacility].category = C4BBSupportingInfoType#servicefacility
* supportingInfo[servicefacility].sequence = 4
* supportingInfo[servicefacility].valueReference = Reference(ProviderOrganization1)

* supportingInfo[medicalrecordnumber].category  = C4BBSupportingInfoType#medicalrecordnumber
* supportingInfo[medicalrecordnumber].valueString = "1234-234-1243-12345678901m"
* supportingInfo[medicalrecordnumber].sequence = 5
* supportingInfo[patientaccountnumber].category  = C4BBSupportingInfoType#patientaccountnumber
* supportingInfo[patientaccountnumber].valueString = "1234-234-1243-12345678901a"
* supportingInfo[patientaccountnumber].sequence = 6
