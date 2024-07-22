Instance: BB-EOBInpatient1-nonfinancial
InstanceOf: C4BBExplanationOfBenefitInpatientInstitutionalBasis
Title: "EOB Inpatient Institutional - Example 1 - Nonfinancial"
Description: "EOB Inpatient Institutional - Example 1 - Nonfinancial"
Usage: #example
//* id = "1234-234-1243-12345678901-20190101-20191031"
* meta.profile[+] = Canonical(C4BBExplanationOfBenefitInpatientInstitutionalBasis|2.1.0-snapshot1)

* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* status = #active
* identifier[uniqueclaimid].type = C4BBIdentifierType#uc
* identifier[uniqueclaimid].value = "AW123412341234123412341234123412"
* identifier[uniqueclaimid].system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* type = $HL7ClaimTypeCS#institutional
* type.text = "Institutional"
* subType = C4BBInstitutionalClaimSubType#inpatient
* subType.text = "Inpatient"
* use = #claim
* created = "2019-11-02T00:00:00+00:00"
* insurer = Reference(Payer1)
* insurer.display = "XXX Health Plan"
* patient = Reference(Patient2)
* billablePeriod.start = "2019-01-01"
* billablePeriod.end = "2019-10-31"
* provider = Reference(ProviderOrganization1)
* provider.display = "XXX Health Plan"
* outcome = #partial
* diagnosis[0].diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#S06.0X1A
* diagnosis[0].type = $HL7DiagnosisType#principal
* diagnosis[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage[0] = Reference(Coverage3)

* item[0].sequence = 1
* item[0].productOrService = $HL7DataAbsentReason#not-applicable "Not Applicable"
* item[0].revenue = $AHANUBCRevenueCodes#Dummy
* item[0].servicedDate = "2019-11-02"
* adjudication[billingnetworkstatus].category = C4BBAdjudicationDiscriminator#billingnetworkstatus
* adjudication[billingnetworkstatus].reason = C4BBPayerAdjudicationStatus#innetwork
* adjudication[benefitpaymentstatus].category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
* adjudication[benefitpaymentstatus].reason = C4BBPayerAdjudicationStatus#innetwork


* supportingInfo[admissionperiod].category = C4BBSupportingInfoType#admissionperiod
* supportingInfo[admissionperiod].timingPeriod.start = 2011-05-23
* supportingInfo[admissionperiod].timingPeriod.end = 2011-05-25
* supportingInfo[admissionperiod].sequence = 2
* supportingInfo[clmrecvddate].category  = C4BBSupportingInfoType#clmrecvddate
* supportingInfo[clmrecvddate].timingDate = 2011-05-30
* supportingInfo[clmrecvddate].sequence = 3
* supportingInfo[typeofbill].category  = C4BBSupportingInfoType#typeofbill
* supportingInfo[typeofbill].code = $AHANUBCTypeOfBill#Dummy
* supportingInfo[typeofbill].sequence = 4
* supportingInfo[pointoforigin].category  = C4BBSupportingInfoType#pointoforigin
* supportingInfo[pointoforigin].code = $AHANUBCPointOfOriginForAdmissionOrVisitNonnewborn#Dummy
* supportingInfo[pointoforigin].sequence = 5
* supportingInfo[admtype].category  = C4BBSupportingInfoType#admtype
* supportingInfo[admtype].code = $AHANUBCPriorityTypeOfAdmissionOrVisit#Dummy
* supportingInfo[admtype].sequence = 6
* supportingInfo[discharge-status].category  = C4BBSupportingInfoType#discharge-status
* supportingInfo[discharge-status].code = $AHANUBCPatientDischargeStatus#11
* supportingInfo[discharge-status].sequence = 7

* supportingInfo[medicalrecordnumber].category  = C4BBSupportingInfoType#medicalrecordnumber
* supportingInfo[medicalrecordnumber].valueString = "1234-234-1243-12345678901m"
* supportingInfo[medicalrecordnumber].sequence = 8
* supportingInfo[patientaccountnumber].category  = C4BBSupportingInfoType#patientaccountnumber
* supportingInfo[patientaccountnumber].valueString = "1234-234-1243-12345678901a"
* supportingInfo[patientaccountnumber].sequence = 9
