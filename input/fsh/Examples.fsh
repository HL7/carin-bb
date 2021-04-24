Instance: Patient1
InstanceOf: C4BBPatient
Description: "Patient Example1"
Usage: #example
//* id = "1234-234-1243-12345678901"
//* meta.profile = Canonical(C4BBPatient)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* id = "Patient1"
* active = true
* name[0].family = "Example1"
* name[0].given[0] = "Johnny"
* telecom[0].system = http://hl7.org/fhir/contact-point-system#phone
* telecom[0].value = "(301)555-1212"
* telecom[0].rank = 1
* telecom[1].system = 	http://hl7.org/fhir/contact-point-system#phone
* telecom[1].value = "(301)666-1212"
* telecom[1].rank = 2
* gender = http://hl7.org/fhir/administrative-gender#male
* birthDate = "1986-01-01"
* address[0].type = http://hl7.org/fhir/address-type#physical
* address[0].line[0] = "123 Main Street"
* address[0].city = "Pittsburgh"
* address[0].state = "PA"
* address[0].postalCode = "12519"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK
* identifier[memberid].type = $IdentifierType#MB
* identifier[memberid].value = "1234-234-1243-12345678901"
* identifier[memberid].system = "https://www.xxxhealthplan.com/fhir/memberidentifier"
//* identifier[medrecnum].type = $IdentifierType#MR
//* identifier[medrecnum].value = "1234-234-1243-12345678901m"
//* identifier[medrecnum].system = "https://www.xxxhealthplan.com/fhir/medicalrecordnumber"
* identifier[uniquememberid].type = C4BBIdentifierType#um
* identifier[uniquememberid].value = "1234-234-1243-12345678901u"
* identifier[uniquememberid].system = "https://www.xxxhealthplan.com/fhir/iniquememberidentifier"
//* identifier[patacctnum].type = C4BBIdentifierType#pat
//* identifier[patacctnum].value = "1234-234-1243-12345678901a"
//* identifier[patacctnum].system = "https://www.xxxhealthplan.com/fhir/patacctnum"

Instance: Coverage1
InstanceOf: C4BBCoverage
Description: "Coverage Example1"
Usage: #example
//* id = "1234-234-1243-12345678901-20190101-20191031"
* id = "Coverage1"
//* meta.profile = Canonical(C4BBCoverage)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* status = #active
* identifier[0].type = $IdentifierType#MB
* identifier[0].value = "1234-234-1243-12345678901"
* identifier[0].system = "https://www.xxxhealthplan.com/fhir/memberidentifier"
* type = http://terminology.hl7.org/CodeSystem/v3-ActCode#HIP
* type.text = "health insurance plan policy"
* policyHolder = Reference(Patient1)
* subscriber = Reference(Patient1)
* beneficiary = Reference(Patient1)
* subscriberId = "12345678901"  
* dependent = "01"
* period.start = "2019-01-01"
* period.end = "2019-10-31"

* class[group].type = $CoverageClassCS#group 
* class[group].type.text = "An employee group"
* class[group].value = "021890"
* class[group].name = "Acme Corporation"
* class[plan].type = $CoverageClassCS#plan
* class[plan].type.text = "Plan"
* class[plan].value = "XYZ123"
* class[plan].name = "XYZ123-UPMC CONSUMER ADVA"
// * class[0].type = $CoverageClassCS#subgroup 
// * class[0].type.text = "A subgroup of an employee group"
// * class[0].value = "300"
// * class[0].name = "ACME HSA PPO 1500"
* network = "XYZ123-UPMC CONSUMER ADVA"
* relationship = http://terminology.hl7.org/CodeSystem/subscriber-relationship#self
* payor = Reference(OrganizationPayer1)


Instance: CoverageDental1
InstanceOf: C4BBCoverage
Description: "Dental Coverage Example1"
Usage: #example
//* id = "1234-234-1243-12345678901-20190101-20191031"
* id = "CoverageDental1"
* meta.lastUpdated = "2021-01-01T14:22:01.0314215+00:00"
* language = #en-US
* status = #active
* identifier[0].type = $IdentifierType#MB
* identifier[0].value = "210300002"
* identifier[0].system = "https://www.xxxhealthplan.com/fhir/memberidentifier"
* type = http://terminology.hl7.org/CodeSystem/v3-ActCode#DENTAL
* type.text = "dental care policy"
* policyHolder = Reference(Patient1)
* subscriber = Reference(Patient1)
* beneficiary = Reference(Patient1)
* subscriberId = "10300007"  
* dependent = "01"
* period.start = "2021-01-01"
* period.end = "2021-12-31"

* class[group].type = $CoverageClassCS#group 
* class[group].type.text = "An employee group"
* class[group].value = "10300007"
* class[group].name = "Transcorp - dental"
* class[plan].type = $CoverageClassCS#plan
* class[plan].type.text = "Plan"
* class[plan].value = "66783JJT"
* class[plan].name = "INSURANCE COMPANY XYZ - PRIME"

* network = "INSURANCE COMPANY XYZ - PRIME"
* relationship = http://terminology.hl7.org/CodeSystem/subscriber-relationship#self
* payor = Reference(OrganizationDentalPayer1)


Instance: EOBInpatient1
InstanceOf: C4BBExplanationOfBenefitInpatientInstitutional
Description: "EOB Inpatient Example1"
Usage: #example
* id = "EOBInpatient1"
//* id = "1234-234-1243-12345678901-20190101-20191031"
//* meta.profile = Canonical(C4BBExplanationOfBenefitInpatientInstitutional)
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* status = #active
* identifier.type = C4BBIdentifierType#uc
* identifier.value = "AW123412341234123412341234123412"
* identifier.system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* type = $HL7ClaimTypeCS#institutional
* type.text = "Institutional"
* subType = C4BBClaimSubType#inpatient
* subType.text = "Inpatient"
* use = #claim 
* created = "2019-11-02T00:00:00+00:00"
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
* adjudication[adjudicationamounttype][0].category = $C4BBAdjudicationCS#paidtoprovider
* adjudication[adjudicationamounttype][0].category.text = "Payment Amount"
* adjudication[adjudicationamounttype][0].amount.value = 620.00
* adjudication[adjudicationamounttype][0].amount.currency = #USD
* adjudication[adjudicationamounttype][1].category = $HL7AdjudicationCS#submitted
* adjudication[adjudicationamounttype][1].category.text = "Submitted Amount"
* adjudication[adjudicationamounttype][1].amount.value = 2650.00
* adjudication[adjudicationamounttype][1].amount.currency = #USD
* adjudication[adjudicationamounttype][2].category = $C4BBAdjudicationCS#paidbypatient
* adjudication[adjudicationamounttype][2].category.text = "Patient Pay Amount"
* adjudication[adjudicationamounttype][2].amount.value = 0.00
* adjudication[adjudicationamounttype][2].amount.currency = #USD
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
* total[benefitpaymentstatus][0].category = C4BBPayerAdjudicationStatus#innetwork 
* total[benefitpaymentstatus][0].amount.value = 0.00
* total[benefitpaymentstatus][0].amount.currency = #USD
//* adjudication[benefitpaymentstatus].category = C4BBAdjudication#innetwork 
* supportingInfo[billingnetworkcontractingstatus].category = C4BBSupportingInfoType#billingnetworkcontractingstatus 
* supportingInfo[billingnetworkcontractingstatus].code = C4BBPayerAdjudicationStatus#contracted
* supportingInfo[billingnetworkcontractingstatus].sequence = 1
* supportingInfo[admissionperiod].category = C4BBSupportingInfoType#admissionperiod  
* supportingInfo[admissionperiod].timingPeriod.start = 2011-05-23
* supportingInfo[admissionperiod].timingPeriod.end = 2011-05-25
* supportingInfo[admissionperiod].sequence = 2
* supportingInfo[clmrecvddate].category  = C4BBSupportingInfoType#clmrecvddate
* supportingInfo[clmrecvddate].timingDate = 2011-05-30
* supportingInfo[clmrecvddate].sequence = 3
* supportingInfo[typeofbill].category  = C4BBSupportingInfoType#typeofbill
* supportingInfo[typeofbill].code = AHANUBCTypeOfBill#Dummy
* supportingInfo[typeofbill].sequence = 4
* supportingInfo[pointoforigin].category  = C4BBSupportingInfoType#pointoforigin
* supportingInfo[pointoforigin].code = AHANUBCPointOfOriginForAdmissionOrVisitNonnewborn#Dummy
* supportingInfo[pointoforigin].sequence = 5
* supportingInfo[admtype].category  = C4BBSupportingInfoType#admtype
* supportingInfo[admtype].code = AHANUBCPriorityTypeOfAdmissionOrVisit#Dummy
* supportingInfo[admtype].sequence = 6
* supportingInfo[discharge-status].category  = C4BBSupportingInfoType#discharge-status
* supportingInfo[discharge-status].code = AHANUBCPatientDischargeStatus#11  
* supportingInfo[discharge-status].sequence = 7

* supportingInfo[medicalrecordnumber].category  = C4BBSupportingInfoType#medicalrecordnumber
* supportingInfo[medicalrecordnumber].valueString = "1234-234-1243-12345678901m"
* supportingInfo[medicalrecordnumber].sequence = 8
* supportingInfo[patientaccountnumber].category  = C4BBSupportingInfoType#patientaccountnumber
* supportingInfo[patientaccountnumber].valueString = "1234-234-1243-12345678901a"
* supportingInfo[patientaccountnumber].sequence = 9


Instance: EOBOutpatientInstitutional1
InstanceOf: C4BBExplanationOfBenefitOutpatientInstitutional
Description: "EOB Outpatient Example1"
Usage: #example
* id = "EOBOutpatientInstitutional1"
//* id = "1234-234-1243-12345678901-20190101-20191031"
//* meta.profile = Canonical(C4BBExplanationOfBenefitOutpatientInstitutional)
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* status = #active
* identifier.type = C4BBIdentifierType#uc
* identifier.value = "AW123412341234123412341234123412"
* identifier.system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* type = $HL7ClaimTypeCS#institutional
* type.text = "Institutional"
* subType = C4BBClaimSubType#outpatient
* subType.text = "Outpatient"
* use = #claim 
* created = "2019-11-02T00:00:00+00:00"
* insurer = Reference(OrganizationPayer1)
* insurer.display = "XXX Health Plan"
* patient = Reference(Patient1)
* billablePeriod.start = "2019-01-01"
* billablePeriod.end = "2019-10-31"
* provider = Reference(OrganizationProvider1)
* provider.display = "XXX Health Plan"
* outcome = #partial
* diagnosis[0].diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#S06.0X1A
* diagnosis[0].type = $C4BBClaimDiagnosisTypeCS#patientreasonforvisit
* diagnosis[0].sequence = 1 
* insurance[0].focal = true
* insurance[0].coverage[0] = Reference(Coverage1)
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
* total[benefitpaymentstatus].category = C4BBPayerAdjudicationStatus#innetwork 
* total[benefitpaymentstatus].amount.value = 0.00
* total[benefitpaymentstatus].amount.currency = #USD
* adjudication[adjudicationamounttype][0].category = C4BBAdjudication#paidtoprovider
* adjudication[adjudicationamounttype][0].category.text = "Payment Amount"
* adjudication[adjudicationamounttype][0].amount.value = 620.00
* adjudication[adjudicationamounttype][0].amount.currency = #USD
* adjudication[adjudicationamounttype][1].category = C4BBAdjudication#paidbypatient
* adjudication[adjudicationamounttype][1].category.text = "Patient Pay Amount"
* adjudication[adjudicationamounttype][1].amount.value = 0.00
* total[adjudicationamounttype][2].amount.currency = #USD

* supportingInfo[billingnetworkcontractingstatus].category = C4BBSupportingInfoType#billingnetworkcontractingstatus 
* supportingInfo[billingnetworkcontractingstatus].code = C4BBPayerAdjudicationStatus#contracted
* supportingInfo[billingnetworkcontractingstatus].sequence = 1
* supportingInfo[clmrecvddate].category = C4BBSupportingInfoType#clmrecvddate
* supportingInfo[clmrecvddate].timingDate = 2019-11-30
* supportingInfo[clmrecvddate].sequence = 2
* supportingInfo[typeofbill].category = C4BBSupportingInfoType#typeofbill
* supportingInfo[typeofbill].code = AHANUBCTypeOfBill#Dummy
* supportingInfo[typeofbill].sequence = 3
* supportingInfo[pointoforigin].category = C4BBSupportingInfoType#pointoforigin
* supportingInfo[pointoforigin].code = AHANUBCPointOfOriginForAdmissionOrVisitNonnewborn#Dummy 
* supportingInfo[pointoforigin].sequence = 4 
* supportingInfo[admtype].category = C4BBSupportingInfoType#admtype
* supportingInfo[admtype].code = AHANUBCPriorityTypeOfAdmissionOrVisit#Dummy
* supportingInfo[admtype].sequence = 5 
* supportingInfo[discharge-status].category = C4BBSupportingInfoType#discharge-status
* supportingInfo[discharge-status].code = AHANUBCPatientDischargeStatus#Dummy 
* supportingInfo[discharge-status].sequence = 6 

* supportingInfo[medicalrecordnumber].category  = C4BBSupportingInfoType#medicalrecordnumber
* supportingInfo[medicalrecordnumber].valueString = "1234-234-1243-12345678901m"
* supportingInfo[medicalrecordnumber].sequence = 7
* supportingInfo[patientaccountnumber].category  = C4BBSupportingInfoType#patientaccountnumber
* supportingInfo[patientaccountnumber].valueString = "1234-234-1243-12345678901a"
* supportingInfo[patientaccountnumber].sequence = 8



Instance: EOBProfessional1a
InstanceOf: C4BBExplanationOfBenefitProfessionalNonClinician 
Description: "EOB Professional  Example1"
Usage: #example
* id = "EOBProfessional1a"
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
* item[0].adjudication[adjudicationamounttype][0].category = $HL7AdjudicationCS#submitted
* item[0].adjudication[adjudicationamounttype][0].amount.value = 1000.00
* item[0].adjudication[adjudicationamounttype][0].amount.currency = #USD

* item[0].adjudication[benefitpaymentstatus][0].category = C4BBPayerAdjudicationStatus#other 


* supportingInfo[billingnetworkcontractingstatus].category = C4BBSupportingInfoType#billingnetworkcontractingstatus 
* supportingInfo[billingnetworkcontractingstatus].code = C4BBPayerAdjudicationStatus#contracted
* supportingInfo[billingnetworkcontractingstatus].sequence = 1
* supportingInfo[performingnetworkcontractingstatus].category = C4BBSupportingInfoType#performingnetworkcontractingstatus
* supportingInfo[performingnetworkcontractingstatus].code = C4BBPayerAdjudicationStatus#contracted
* supportingInfo[performingnetworkcontractingstatus].sequence = 2
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



Instance: EOBOral1a
InstanceOf: C4BBExplanationOfBenefitOral
Description: "EOB Oral Example1"
Usage: #example
* id = "EOBOral1a"
//* id = "1234-234-1243-12345678901-20190101-20191031"
//* meta.profile = Canonical(C4BBExplanationOfBenefitOral)
* meta.lastUpdated = "2021-03-18T10:23:00-05:00"
* language = #en-US
* status = #active
* identifier.type = $C4BBIdentifierTypeCS#uc
* identifier.value = "210300002"
* identifier.system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* type = $HL7ClaimTypeCS#oral
* type.text = "Oral" 
* use = #claim 
* created = "2021-03-18T10:23:00-05:00"
* insurer = Reference(OrganizationDentalPayer1)
* insurer.display = "XXX Health Plan"
* patient = Reference(Patient1)
* billablePeriod.start = "2021-03-01"
* billablePeriod.end = "2021-03-31"
* provider = Reference(OrganizationDentalProvider1)
* provider.display = "XXX Dental Plan"
* outcome = #complete
* diagnosis[0].diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#Z01.21 "Encounter for dental examination and cleaning with abnormal findings"
* diagnosis[0].type = $HL7DiagnosisType#principal
* diagnosis[0].sequence = 1 
* insurance[0].focal = true
* insurance[0].coverage[0] = Reference(CoverageDental1)
* total[adjudicationamounttype][0].category = $HL7AdjudicationCS#submitted
* total[adjudicationamounttype][0].category.text = "Submitted Amount"
* total[adjudicationamounttype][0].amount.value = 410.00
* total[adjudicationamounttype][0].amount.currency = #USD
* total[adjudicationamounttype][1].category = $HL7AdjudicationCS#benefit
* total[adjudicationamounttype][1].category.text = "Benefit Amount"
* total[adjudicationamounttype][1].amount.value = 350.00
* total[adjudicationamounttype][1].amount.currency = #USD
* total[adjudicationamounttype][2].category = C4BBAdjudication#discount
* total[adjudicationamounttype][2].category.text = "Discount Amount"
* total[adjudicationamounttype][2].amount.value = 60.00
* total[adjudicationamounttype][2].amount.currency = #USD
* total[adjudicationamounttype][3].category = C4BBAdjudication#paidtoprovider
* total[adjudicationamounttype][3].category.text = "Amount Paid to Provider"
* total[adjudicationamounttype][3].amount.value = 350.00
* total[adjudicationamounttype][3].amount.currency = #USD
* total[benefitpaymentstatus][0].category = C4BBPayerAdjudicationStatus#innetwork
* total[benefitpaymentstatus][0].amount.value = 350.00
* total[benefitpaymentstatus][0].amount.currency = #USD



* item[0].productOrService = ADADentalProcedureCode#D1110 "Prophylaxis - Adult"

* item[0].sequence = 1 
* item[0].adjudication[adjudicationamounttype][0].category = $HL7AdjudicationCS#submitted
* item[0].adjudication[adjudicationamounttype][0].amount.value = 190.00
* item[0].adjudication[adjudicationamounttype][0].amount.currency = #USD

* item[0].adjudication[benefitpaymentstatus][0].category = C4BBPayerAdjudicationStatus#innetwork 


* item[1].productOrService = ADADentalProcedureCode#D0120 "Periodic oral evaluation"

* item[1].sequence = 2
* item[1].adjudication[adjudicationamounttype][0].category = $HL7AdjudicationCS#submitted
* item[1].adjudication[adjudicationamounttype][0].amount.value = 220.00
* item[1].adjudication[adjudicationamounttype][0].amount.currency = #USD

* item[1].adjudication[benefitpaymentstatus][0].category = C4BBPayerAdjudicationStatus#innetwork 


* supportingInfo[billingnetworkcontractingstatus].category = C4BBSupportingInfoType#billingnetworkcontractingstatus 
* supportingInfo[billingnetworkcontractingstatus].code = C4BBPayerAdjudicationStatus#contracted
* supportingInfo[billingnetworkcontractingstatus].sequence = 1
* supportingInfo[performingnetworkcontractingstatus].category = C4BBSupportingInfoType#performingnetworkcontractingstatus
* supportingInfo[performingnetworkcontractingstatus].code = C4BBPayerAdjudicationStatus#contracted
* supportingInfo[performingnetworkcontractingstatus].sequence = 2
* supportingInfo[clmrecvddate].category = C4BBSupportingInfoType#clmrecvddate
* supportingInfo[clmrecvddate].timingDate = 2021-03-18
* supportingInfo[clmrecvddate].sequence = 3
* supportingInfo[servicefacility].category = C4BBSupportingInfoType#servicefacility
* supportingInfo[servicefacility].sequence = 4
* supportingInfo[servicefacility].valueReference = Reference(OrganizationProvider1)


* supportingInfo[patientaccountnumber].category  = C4BBSupportingInfoType#patientaccountnumber
* supportingInfo[patientaccountnumber].valueString = "PATIENTACCTNO3"
* supportingInfo[patientaccountnumber].sequence = 5




Instance: EOBPharmacy1
InstanceOf: C4BBExplanationOfBenefitPharmacy
Description: "EOB PHarmacy Example1"
Usage: #example
* id = "EOBPharmacy1"
//* id = "1234-234-1243-12345678901-20190101-20191031"
//* meta.profile = Canonical(C4BBExplanationOfBenefitPharmacy)
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* status = #active
* identifier.type = $C4BBIdentifierTypeCS#uc
* identifier.value = "AW123412341234123412341234123412"
* identifier.system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* type = $HL7ClaimTypeCS#pharmacy
* type.text = "Pharmacy"
* use = #claim 
* created = "2019-07-02T00:00:00+00:00"
* insurer = Reference(OrganizationPayer1)
* insurer.display = "XXX Health Plan"
* patient = Reference(Patient1)
* billablePeriod.start = "2019-10-30"
* billablePeriod.end = "2019-10-31"
* provider = Reference(OrganizationProvider1)
* provider.display = "XXX Health Plan"
* outcome = #partial
* insurance[0].focal = true
* insurance[0].coverage[0] = Reference(Coverage1)
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
* total[benefitpaymentstatus].category = C4BBPayerAdjudicationStatus#innetwork 
* total[benefitpaymentstatus].amount.value = 0.00
* total[benefitpaymentstatus].amount.currency = #USD
//* adjudication[benefitpaymentstatus].category = C4BBAdjudication#other
* item[0].productOrService = $FDANationalDrugCode#0777-3105-02 "100 CAPSULE in 1 BOTTLE (0777-3105-02)"
* item[0].sequence = 1 
* item[0].adjudication[adjudicationamounttype][0].category = $HL7AdjudicationCS#submitted
* item[0].adjudication[adjudicationamounttype][0].amount.value = 1000.00
* item[0].adjudication[adjudicationamounttype][0].amount.currency = #USD
* item[0].adjudication[adjudicationamounttype][1].category = $HL7AdjudicationCS#benefit 
* item[0].adjudication[adjudicationamounttype][1].amount.value = 20.00
* item[0].adjudication[adjudicationamounttype][1].amount.currency = #USD
* item[0].adjudication[adjudicationamounttype][2].category = $C4BBAdjudicationCS#discount
* item[0].adjudication[adjudicationamounttype][2].amount.value = 900.00
* item[0].adjudication[adjudicationamounttype][2].amount.currency = #USD
* item[0].adjudication[adjudicationamounttype][3].category = $C4BBAdjudicationCS#memberliability
* item[0].adjudication[adjudicationamounttype][3].amount.value = 80.00
* item[0].adjudication[adjudicationamounttype][3].amount.currency = #USD
* item[0].adjudication[adjudicationamounttype][4].category = $C4BBAdjudicationCS#paidtoprovider
* item[0].adjudication[adjudicationamounttype][4].amount.value = 20.00
* item[0].adjudication[adjudicationamounttype][4].amount.currency = #USD 
* supportingInfo[billingnetworkcontractingstatus].category = C4BBSupportingInfoType#billingnetworkcontractingstatus
* supportingInfo[billingnetworkcontractingstatus].sequence = 1 
* supportingInfo[billingnetworkcontractingstatus].code = C4BBPayerAdjudicationStatus#contracted
* supportingInfo[brandgenericindicator].category = C4BBSupportingInfoType#brandgenericindicator   
* supportingInfo[brandgenericindicator].sequence = 2
* supportingInfo[brandgenericindicator].code = NCPDPBrandGenericIndicator#2
* supportingInfo[rxoriginCode].category = C4BBSupportingInfoType#rxorigincode   
* supportingInfo[rxoriginCode].code = NCPDPPrescriptionOriginCode#1
* supportingInfo[rxoriginCode].sequence = 3
* supportingInfo[refillNum].category = C4BBSupportingInfoType#refillnum
* supportingInfo[refillNum].valueQuantity.value = 0.0
* supportingInfo[refillNum].sequence = 4
* supportingInfo[dawcode].category = C4BBSupportingInfoType#dawcode       
* supportingInfo[dawcode].code = NCPDPDispensedAsWrittenOrProductSelectionCode#7
* supportingInfo[dawcode].sequence = 5
* supportingInfo[clmrecvddate].category = C4BBSupportingInfoType#clmrecvddate
* supportingInfo[clmrecvddate].timingDate = 2019-10-31
* supportingInfo[clmrecvddate].sequence = 6
* supportingInfo[dayssupply].category = C4BBSupportingInfoType#dayssupply
* supportingInfo[dayssupply].sequence = 7
* supportingInfo[dayssupply].valueQuantity.value =  30.0
* supportingInfo[compoundcode].category = C4BBSupportingInfoType#compoundcode
* supportingInfo[compoundcode].code = NCPDPCompoundCode#Dummy
* supportingInfo[compoundcode].sequence = 8


Instance: OrganizationPayer1
InstanceOf: C4BBOrganization
Description: "Payer1"
Usage: #example
* id = "Payer1"
//* meta.profile = Canonical(C4BBOrganization)
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* identifier[NPI].type = $C4BBIdentifierTypeCS#npi
* identifier[NPI].value = "345678"
* identifier[payerid].type = $C4BBIdentifierTypeCS#payerid
* identifier[payerid].value = "901234"
* name = "Payer 1"
* active = true 


Instance: OrganizationDentalPayer1
InstanceOf: C4BBOrganization
Description: "Dental Payer1"
Usage: #example
* id = "OrganizationDentalPayer1"
//* meta.profile = Canonical(C4BBOrganization)
* meta.lastUpdated = "2021-01-01T10:23:11+00:00"
* language = #en-US
* identifier[NPI].type = $C4BBIdentifierTypeCS#npi
* identifier[NPI].value = "467678"
* identifier[payerid].type = $C4BBIdentifierTypeCS#payerid
* identifier[payerid].value = "66783JJT"
* name = "INSURANCE COMPANY XYZ"
* active = true 


Instance: OrganizationProvider1
InstanceOf: C4BBOrganization
Description: "Provider 1"
Usage: #example
//* meta.profile = Canonical(C4BBOrganization)
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* identifier[NPI].type = $C4BBIdentifierTypeCS#npi
* identifier[NPI].value = "345678"
* identifier[tax].type = $IdentifierType#TAX
* identifier[tax].value = "123-45-6789"
* name = "Provider 1"
* active = true 


Instance: OrganizationDentalProvider1
InstanceOf: C4BBOrganization
Description: "Dental Provider 1"
Usage: #example
//* meta.profile = Canonical(C4BBOrganization)
* meta.lastUpdated = "2021-01-01T10:23:11+00:00"
* language = #en-US
* identifier[NPI].type = $C4BBIdentifierTypeCS#npi
* identifier[NPI].value = "0025501002"
* name = "Dental Provider 1"
* active = true 

