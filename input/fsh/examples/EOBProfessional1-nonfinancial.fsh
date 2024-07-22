Instance: BB-EOBProfessional1-nonfinancial
InstanceOf: C4BBExplanationOfBenefitProfessionalNonClinicianBasis
Description: "EOB Professional Example 1 - Nonfinancial"
Title: "EOB Professional - Example 1 - Nonfinancial"
Usage: #example
//* id = "1234-234-1243-12345678901-20190101-20191031"
* meta.profile[+] = Canonical(C4BBExplanationOfBenefitProfessionalNonClinicianBasis|2.1.0-snapshot1)
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
* item[+].productOrService = $CPT#97110 "Therapeutic procedure, 1 or more areas, each 15 minutes; therapeutic exercises to develop strength and endurance, range of motion and flexibility"
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
