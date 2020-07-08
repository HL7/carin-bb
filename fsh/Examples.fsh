Instance: CarinBBPatientExample1
InstanceOf: CARINBBPatient
Description: "Patient Example1"
Usage: #example
* id = "1234-234-1243-12345678901"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/CARIN-BB-Patient"
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* name[0].family = "Example1"
* name[0].given[0] = "Johnny"
* telecom[0].system = http://hl7.org/fhir/ValueSet/contact-point-system#phone
* telecom[0].value = "(301)555-1212"
* telecom[0].rank = 1
* telecom[0].system = 	http://hl7.org/fhir/ValueSet/contact-point-system#phone
* telecom[0].value = "(301)666-1212"
* telecom[0].rank = 2
* gender = http://hl7.org/fhir/ValueSet/administrative-gender#male
* birthDate = "1986-01-01"
* address[0].type = http://hl7.org/fhir/address-type#physical
* address[0].line[0] = "123 Main Street"
* address[0].city = "Pittsburgh"
* address[0].state = "PA"
* address[0].postalCode = "12519"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK
* identifier[0].type = IdentifierTypeCS#mb
* identifier[0].value = "1234-234-1243-12345678901"
* identifier[0].system = "https://www.xxxhealthplan.com/fhir/memberidentifier"
* identifier[1].type = IdentifierTypeCS#mr
* identifier[1].value = "1234-234-1243-12345678901m"
* identifier[1].system = "https://www.xxxhealthplan.com/fhir/medicalrecordnumber"
* identifier[2].type = IdentifierTypeCS#um
* identifier[2].value = "1234-234-1243-12345678901u"
* identifier[2].system = "https://www.xxxhealthplan.com/fhir/iniquememberidentifier"
* identifier[3].type = IdentifierTypeCS#pt
* identifier[3].value = "1234-234-1243-12345678901a"
* identifier[3].system = "https://www.xxxhealthplan.com/fhir/patacctnum"

Instance: CarinBBCoverageExample1
InstanceOf: CARINBBCoverage
Description: "Coverage Example1"
Usage: #example
* id = "1234-234-1243-12345678901-20190101-20191031"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/CARIN-BB-Coverage"
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* status = #active
* identifier[0].type = IdentifierTypeCS#mb
* identifier[0].value = "1234-234-1243-12345678901"
* identifier[0].system = "https://www.xxxhealthplan.com/fhir/memberidentifier"
* type = http://terminology.hl7.org/CodeSystem/coverage-selfpay#HIP
* type.text = "health insurance plan policy"
* policyHolder.reference = "Patient/1234-234-1243-12345678901"
* subscriber.reference = "Patient/1234-234-1243-12345678901"
* beneficiary.reference = "Patient/1234-234-1243-12345678901"
* subscriberId = "12345678901"  
* dependent = "01"
* period.start = "2019-01-01T00:00:00+00:00"
* period.end = "2019-10-31T00:00:00+00:00"
* class[0].type = http://terminology.hl7.org/CodeSystem/coverage-class#group 
* class[0].type.text = "An employee group"
* class[0].value = "021890"
* class[0].name = "Acme Corporation"
* class[1].type = http://terminology.hl7.org/CodeSystem/coverage-class#subgroup 
* class[1].type.text = "A subgroup of an employee group"
* class[1].value = "300"
* class[1].name = "ACME HSA PPO 1500"
* class[2].type = http://terminology.hl7.org/CodeSystem/coverage-class#plan
* class[2].type.text = "Plan"
* class[2].value = "XYZ123"
* class[2].name = "XYZ123-UPMC CONSUMER ADVA"
* network = "XYZ123-UPMC CONSUMER ADVA"
* relationship = http://terminology.hl7.org/CodeSystem/subscriber-relationship#self
* payor.reference = "Organization/Payer1"

Instance: CarinBBInpatientEOBExample1
InstanceOf: CARINBBExplanationOfBenefitInpatientFacility
Description: "EOB Inpatient Example1"
Usage: #example
* id = "1234-234-1243-12345678901-20190101-20191031"
* meta.profile = "http://hl7.org/fhir/us/carin-bb/StructureDefinition/CARIN-BB-ExplanationOfBenefit-Inpatient-Facility"
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* status = #active
* identifier[0].type = IdentifierTypeCS#cn
* identifier[0].value = "AW123412341234123412341234123412"
* identifier[0].system = "https://www.upmchealthplan.com/fhir/EOBIdentifier"
* type = $HL7ClaimTypeCS#institutional
* type.text = "Inpatient Facility"
* use = #claim 
* created = "2019-07-02T00:00:00+00:00"
* insurer.reference = "Organization/1"
* insurer.display = "XXX Health Plan"
* patient.reference = "Patient/1234-234-1243-12345678901"
* billablePeriod.start = "2019-01-01T00:00:00+00:00"
* billablePeriod.end = "2019-10-31T00:00:00+00:00"
* provider.reference = "Organization/1"
* provider.display = "XXX Health Plan"
* outcome = #partial
* diagnosis[0].diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#S06.0x1A
* diagnosis[0].type = PayerDiagnosisTypeCS#principal
* diagnosis[0].sequence = 1 
* insurance[0].focal = true
* insurance[0].coverage[0].reference = "Coverage/1234-234-1243-12345678901-20190101-20191031"
* total[0].category = ClaimAdjudicationCategoryCS#paymentamount
* total[0].category.text = "Payment Amount"
* total[0].amount.value = 620.00
* total[0].amount.currency = #USD
* total[1].category = ClaimAdjudicationCategoryCS#submittedamount
* total[1].category.text = "Submitted Amount"
* total[1].amount.value = 2650.00
* total[1].amount.currency = #USD
* total[2].category = ClaimAdjudicationCategoryCS#patientpayamount
* total[2].category.text = "Patient Pay Amount"
* total[2].amount.value = 0.00
* total[2].amount.currency = #USD
* adjudication[inoutnetwork].category = PayerAdjudicationCategoryCS#other
 