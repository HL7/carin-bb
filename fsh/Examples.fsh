Instance: Patient1
InstanceOf: C4BBPatient
Description: "Patient Example1"
Usage: #example
//* id = "1234-234-1243-12345678901"
* meta.profile = Canonical(C4BBPatient)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* id = "Patient1"
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
* identifier[memberid].type = $IdentifierType#MB
* identifier[memberid].value = "1234-234-1243-12345678901"
* identifier[memberid].system = "https://www.xxxhealthplan.com/fhir/memberidentifier"
* identifier[medrecnum].type = $IdentifierType#MR
* identifier[medrecnum].value = "1234-234-1243-12345678901m"
* identifier[medrecnum].system = "https://www.xxxhealthplan.com/fhir/medicalrecordnumber"
* identifier[uniquememberid].type = C4BBIdentifierType#um
* identifier[uniquememberid].value = "1234-234-1243-12345678901u"
* identifier[uniquememberid].system = "https://www.xxxhealthplan.com/fhir/iniquememberidentifier"
* identifier[patacctnum].type = C4BBIdentifierType#pat
* identifier[patacctnum].value = "1234-234-1243-12345678901a"
* identifier[patacctnum].system = "https://www.xxxhealthplan.com/fhir/patacctnum"

Instance: Coverage1
InstanceOf: C4BBCoverage
Description: "Coverage Example1"
Usage: #example
//* id = "1234-234-1243-12345678901-20190101-20191031"
* id = "Coverage1"
* meta.profile = Canonical(C4BBCoverage)
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
* period.start = "2019-01-01T00:00:00+00:00"
* period.end = "2019-10-31T00:00:00+00:00"

* class[group][0].type = http://terminology.hl7.org/CodeSystem/coverage-class#group 
* class[group][0].type.text = "An employee group"
* class[group][0].value = "021890"
* class[group][0].name = "Acme Corporation"
* class[plan][0].type = http://terminology.hl7.org/CodeSystem/coverage-class#plan
* class[plan][0].type.text = "Plan"
* class[plan][0].value = "XYZ123"
* class[plan][0].name = "XYZ123-UPMC CONSUMER ADVA"
* class[0].type = http://terminology.hl7.org/CodeSystem/coverage-class#subgroup 
* class[0].type.text = "A subgroup of an employee group"
* class[0].value = "300"
* class[0].name = "ACME HSA PPO 1500"
* network = "XYZ123-UPMC CONSUMER ADVA"
* relationship = http://terminology.hl7.org/CodeSystem/subscriber-relationship#self
* payor = Reference(OrganizationPayer1)

Instance: EOBInpatient1
InstanceOf: C4BBExplanationOfBenefitInpatientInstitutional
Description: "EOB Inpatient Example1"
Usage: #example
* id = "EOBInpatient1"
//* id = "1234-234-1243-12345678901-20190101-20191031"
* meta.profile = Canonical(C4BBExplanationOfBenefitInpatientInstitutional)
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* status = #active
* identifier.type = C4BBIdentifierType#uc
* identifier.value = "AW123412341234123412341234123412"
* identifier.system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* type = $HL7ClaimTypeCS#institutional
* type.text = "Inpatient Institution"
* use = #claim 
* created = "2019-07-02T00:00:00+00:00"
* insurer = Reference(OrganizationPayer1)
* insurer.display = "XXX Health Plan"
* patient = Reference(Patient1)
* billablePeriod.start = "2019-01-01T00:00:00+00:00"
* billablePeriod.end = "2019-10-31T00:00:00+00:00"
* provider = Reference(OrganizationProvider1)
* provider.display = "XXX Health Plan"
* outcome = #partial
* diagnosis[0].diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#S06.0x1A
* diagnosis[0].type = http://terminology.hl7.org/CodeSystem/ex-diagnosistype#principal 
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
* total[inoutnetwork][0].category = C4BBPayerAdjudicationStatus#innetwork 
* total[inoutnetwork][0].amount.value = 0.00
* total[inoutnetwork][0].amount.currency = #USD
//* adjudication[inoutnetwork].category = C4BBAdjudication#innetwork 


Instance: EOBOutpatientInstitutional1
InstanceOf: C4BBExplanationOfBenefitOutpatientInstitutional
Description: "EOB Outpatient Example1"
Usage: #example
* id = "EOBOutpatientInstitutional1"
//* id = "1234-234-1243-12345678901-20190101-20191031"
* meta.profile = Canonical(C4BBExplanationOfBenefitOutpatientInstitutional)
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* status = #active
* identifier.type = C4BBIdentifierType#uc
* identifier.value = "AW123412341234123412341234123412"
* identifier.system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* type = $HL7ClaimTypeCS#institutional
* type.text = "Outpatient Institution"
* use = #claim 
* created = "2019-07-02T00:00:00+00:00"
* insurer = Reference(OrganizationPayer1)
* insurer.display = "XXX Health Plan"
* patient = Reference(Patient1)
* billablePeriod.start = "2019-01-01T00:00:00+00:00"
* billablePeriod.end = "2019-10-31T00:00:00+00:00"
* provider = Reference(OrganizationProvider1)
* provider.display = "XXX Health Plan"
* outcome = #partial
* diagnosis[0].diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#S06.0x1A
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
* total[inoutnetwork][0].category = C4BBPayerAdjudicationStatus#innetwork
* total[inoutnetwork][0].amount.value = 0.00
* total[inoutnetwork][0].amount.currency = #USD
//* adjudication[inoutnetwork].category = C4BBAdjudication#other

Instance: EOBProfessional1a
InstanceOf: C4BBExplanationOfBenefitProfessionalNonClinician 
Description: "EOB Professional  Example1"
Usage: #example
* id = "EOBProfessional1a"
//* id = "1234-234-1243-12345678901-20190101-20191031"
* meta.profile = Canonical(C4BBExplanationOfBenefitProfessionalNonClinician)
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* status = #active
* identifier.type = $C4BBIdentifierTypeCS#uc
* identifier.value = "AW123412341234123412341234123413"
* identifier.system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* type = $HL7ClaimTypeCS#professional
* type.text = "Outpatient Institution"
* use = #claim 
* created = "2019-07-02T00:00:00+00:00"
* insurer = Reference(OrganizationPayer1)
* insurer.display = "XXX Health Plan"
* patient = Reference(Patient1)
* billablePeriod.start = "2019-01-01T00:00:00+00:00"
* billablePeriod.end = "2019-10-31T00:00:00+00:00"
* provider = Reference(OrganizationProvider1)
* provider.display = "XXX Health Plan"
* outcome = #partial
* diagnosis[0].diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#S06.0x1A
* diagnosis[0].type = $C4BBClaimDiagnosisTypeCS#principal
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
// * total[inoutnetwork][0].category = C4BBPayerAdjudicationStatus#innetwork
// * total[inoutnetwork][0].amount.value = 0.00
// * total[inoutnetwork][0].amount.currency = #USD

Instance: EOBPharmacy1
InstanceOf: C4BBExplanationOfBenefitPharmacy
Description: "EOB PHarmacy Example1"
Usage: #example
* id = "EOBPharmacy1"
//* id = "1234-234-1243-12345678901-20190101-20191031"
* meta.profile = Canonical(C4BBExplanationOfBenefitPharmacy)
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
* billablePeriod.start = "2019-01-01T00:00:00+00:00"
* billablePeriod.end = "2019-10-31T00:00:00+00:00"
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
* total[inoutnetwork].category = C4BBPayerAdjudicationStatus#innetwork 
* total[inoutnetwork].amount.value = 0.00
* total[inoutnetwork].amount.currency = #USD
//* adjudication[inoutnetwork].category = C4BBAdjudication#other
* item[0].productOrService = $FDANationalDrugCode#0777-3105-02 "100-count bottle of Prozac 20 mg"
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


Instance: OrganizationPayer1
InstanceOf: C4BBOrganization
Description: "Payer1"
Usage: #example
* id = "Payer1"
* meta.profile = Canonical(C4BBOrganization)
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* identifier[NPI].type = $C4BBIdentifierTypeCS#npi
* identifier[NPI].value = "345678"
* identifier[payerid].type = $C4BBIdentifierTypeCS#payerid
* identifier[payerid].value = "901234"
* name = "Payer 1"
* active = true 

Instance: OrganizationProvider1
InstanceOf: C4BBOrganization
Description: "Provider 1"
Usage: #example
* meta.profile = Canonical(C4BBOrganization)
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* identifier[NPI].type = $C4BBIdentifierTypeCS#npi
* identifier[NPI].value = "345678"
* identifier[tax].type = $IdentifierType#TAX
* identifier[tax].value = "123-45-6789"
* name = "Provider 1"
* active = true 

