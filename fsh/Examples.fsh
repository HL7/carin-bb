Instance: Patient1
InstanceOf: CARINBBPatient
Description: "Patient Example1"
Usage: #example
//* id = "1234-234-1243-12345678901"
* meta.profile = Canonical(CARINBBPatient)
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
* identifier[memberid].type = IdentifierTypeCS#mb
* identifier[memberid].value = "1234-234-1243-12345678901"
* identifier[memberid].system = "https://www.xxxhealthplan.com/fhir/memberidentifier"
* identifier[medrecnum].type = IdentifierTypeCS#mr
* identifier[medrecnum].value = "1234-234-1243-12345678901m"
* identifier[medrecnum].system = "https://www.xxxhealthplan.com/fhir/medicalrecordnumber"
* identifier[uniquememberid].type = IdentifierTypeCS#um
* identifier[uniquememberid].value = "1234-234-1243-12345678901u"
* identifier[uniquememberid].system = "https://www.xxxhealthplan.com/fhir/iniquememberidentifier"
* identifier[patacctnum].type = IdentifierTypeCS#pt
* identifier[patacctnum].value = "1234-234-1243-12345678901a"
* identifier[patacctnum].system = "https://www.xxxhealthplan.com/fhir/patacctnum"

Instance: Coverage1
InstanceOf: CARINBBCoverage
Description: "Coverage Example1"
Usage: #example
//* id = "1234-234-1243-12345678901-20190101-20191031"
* meta.profile = Canonical(CARINBBCoverage)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* status = #active
* identifier[0].type = IdentifierTypeCS#mb
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
* class[group].type = http://terminology.hl7.org/CodeSystem/coverage-class#group 
* class[group].type.text = "An employee group"
* class[group].value = "021890"
* class[group].name = "Acme Corporation"
* class[plan].type = http://terminology.hl7.org/CodeSystem/coverage-class#plan
* class[plan].type.text = "Plan"
* class[plan].value = "XYZ123"
* class[plan].name = "XYZ123-UPMC CONSUMER ADVA"
* class[2].type = http://terminology.hl7.org/CodeSystem/coverage-class#subgroup 
* class[2].type.text = "A subgroup of an employee group"
* class[2].value = "300"
* class[2].name = "ACME HSA PPO 1500"

* network = "XYZ123-UPMC CONSUMER ADVA"
* relationship = http://terminology.hl7.org/CodeSystem/subscriber-relationship#self
* payor = Reference(OrganizationPayer1)

Instance: EOBInpatient1
InstanceOf: CARINBBExplanationOfBenefitInpatientFacility
Description: "EOB Inpatient Example1"
Usage: #example
//* id = "1234-234-1243-12345678901-20190101-20191031"
* meta.profile = Canonical(CARINBBExplanationOfBenefitInpatientFacility)
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* status = #active
* identifier[claimnumber].type = IdentifierTypeCS#cn
* identifier[claimnumber].value = "AW123412341234123412341234123412"
* identifier[claimnumber].system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* type = $HL7ClaimTypeCS#institutional
* type.text = "Inpatient Facility"
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
* diagnosis[0].type = PayerDiagnosisTypeCS#principal
* diagnosis[0].sequence = 1 
* insurance[0].focal = true
* insurance[0].coverage[0] = Reference(Coverage1)
* total[adjudicationamounttype][0].category = PayerAdjudicationCategoryCS#paidtoprovider
* total[adjudicationamounttype][0].category.text = "Payment Amount"
* total[adjudicationamounttype][0].amount.value = 620.00
* total[adjudicationamounttype][0].amount.currency = #USD
* total[adjudicationamounttype][1].category = $HL7AdjudicationCS#submitted
* total[adjudicationamounttype][1].category.text = "Submitted Amount"
* total[adjudicationamounttype][1].amount.value = 2650.00
* total[adjudicationamounttype][1].amount.currency = #USD
* total[adjudicationamounttype][2].category = PayerAdjudicationCategoryCS#paidbypatient
* total[adjudicationamounttype][2].category.text = "Patient Pay Amount"
* total[adjudicationamounttype][2].amount.value = 0.00
* total[adjudicationamounttype][2].amount.currency = #USD
* total[inoutnetwork].category = PayerAdjudicationCategoryCS#innetwork 
* total[inoutnetwork].amount.value = 0.00
* total[inoutnetwork].amount.currency = #USD
//* adjudication[inoutnetwork].category = PayerAdjudicationCategoryCS#innetwork 


Instance: EOBOutpatientFacility1
InstanceOf: CARINBBExplanationOfBenefitOutpatientFacility
Description: "EOB Outpatient Example1"
Usage: #example
//* id = "1234-234-1243-12345678901-20190101-20191031"
* meta.profile = Canonical(CARINBBExplanationOfBenefitOutpatientFacility)
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* status = #active
* identifier[claimnumber].type = IdentifierTypeCS#cn
* identifier[claimnumber].value = "AW123412341234123412341234123412"
* identifier[claimnumber].system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* type = $HL7ClaimTypeCS#institutional
* type.text = "Outpatient Facility"
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
* diagnosis[0].type = PayerDiagnosisTypeCS#principal
* diagnosis[0].sequence = 1 
* insurance[0].focal = true
* insurance[0].coverage[0] = Reference(Coverage1)
* total[adjudicationamounttype][0].category = PayerAdjudicationCategoryCS#paidtoprovider
* total[adjudicationamounttype][0].category.text = "Payment Amount"
* total[adjudicationamounttype][0].amount.value = 620.00
* total[adjudicationamounttype][0].amount.currency = #USD
* total[adjudicationamounttype][1].category = $HL7AdjudicationCS#submitted
* total[adjudicationamounttype][1].category.text = "Submitted Amount"
* total[adjudicationamounttype][1].amount.value = 2650.00
* total[adjudicationamounttype][1].amount.currency = #USD
* total[adjudicationamounttype][2].category = PayerAdjudicationCategoryCS#paidbypatient
* total[adjudicationamounttype][2].category.text = "Patient Pay Amount"
* total[adjudicationamounttype][2].amount.value = 0.00
* total[adjudicationamounttype][2].amount.currency = #USD
* total[inoutnetwork].category = PayerAdjudicationCategoryCS#innetwork
* total[inoutnetwork].amount.value = 0.00
* total[inoutnetwork].amount.currency = #USD
//* adjudication[inoutnetwork].category = PayerAdjudicationCategoryCS#other

Instance: EOBProfessional1
InstanceOf: CARINBBExplanationOfBenefitProfessionalNonClinician 
Description: "EOB Professional  Example1"
Usage: #example
//* id = "1234-234-1243-12345678901-20190101-20191031"
* meta.profile = Canonical(CARINBBExplanationOfBenefitProfessionalNonClinician)
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* status = #active
* identifier[claimnumber].type = IdentifierTypeCS#cn
* identifier[claimnumber].value = "AW123412341234123412341234123413"
* identifier[claimnumber].system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* type = $HL7ClaimTypeCS#professional
* type.text = "Outpatient Facility"
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
* diagnosis[0].type = PayerDiagnosisTypeCS#principal
* diagnosis[0].sequence = 1 
* insurance[0].focal = true
* insurance[0].coverage[0] = Reference(Coverage1)
* total[adjudicationamounttype][0].category = PayerAdjudicationCategoryCS#paidtoprovider
* total[adjudicationamounttype][0].category.text = "Payment Amount"
* total[adjudicationamounttype][0].amount.value = 620.00
* total[adjudicationamounttype][0].amount.currency = #USD
* total[adjudicationamounttype][1].category = $HL7AdjudicationCS#submitted
* total[adjudicationamounttype][1].category.text = "Submitted Amount"
* total[adjudicationamounttype][1].amount.value = 2650.00
* total[adjudicationamounttype][1].amount.currency = #USD
* total[adjudicationamounttype][2].category = PayerAdjudicationCategoryCS#paidbypatient
* total[adjudicationamounttype][2].category.text = "Patient Pay Amount"
* total[adjudicationamounttype][2].amount.value = 0.00
* total[adjudicationamounttype][2].amount.currency = #USD


Instance: EOBPharmacy1
InstanceOf: CARINBBExplanationOfBenefitPharmacy
Description: "EOB PHarmacy Example1"
Usage: #example
//* id = "1234-234-1243-12345678901-20190101-20191031"
* meta.profile = Canonical(CARINBBExplanationOfBenefitPharmacy)
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* status = #active
* identifier[claimnumber].type = IdentifierTypeCS#cn
* identifier[claimnumber].value = "AW123412341234123412341234123412"
* identifier[claimnumber].system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* type = $HL7ClaimTypeCS#pharmacy
* type.text = "Inpatient Facility"
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
* diagnosis[0].type = PayerDiagnosisTypeCS#principal
* diagnosis[0].sequence = 1 
* insurance[0].focal = true
* insurance[0].coverage[0] = Reference(Coverage1)
* total[adjudicationamounttype][0].category = PayerAdjudicationCategoryCS#paidtoprovider
* total[adjudicationamounttype][0].category.text = "Payment Amount"
* total[adjudicationamounttype][0].amount.value = 620.00
* total[adjudicationamounttype][0].amount.currency = #USD
* total[adjudicationamounttype][1].category = $HL7AdjudicationCS#submitted
* total[adjudicationamounttype][1].category.text = "Submitted Amount"
* total[adjudicationamounttype][1].amount.value = 2650.00
* total[adjudicationamounttype][1].amount.currency = #USD
* total[adjudicationamounttype][2].category = PayerAdjudicationCategoryCS#paidbypatient
* total[adjudicationamounttype][2].category.text = "Patient Pay Amount"
* total[adjudicationamounttype][2].amount.value = 0.00
* total[adjudicationamounttype][2].amount.currency = #USD
* total[inoutnetwork].category = PayerAdjudicationCategoryCS#innetwork 
* total[inoutnetwork].amount.value = 0.00
* total[inoutnetwork].amount.currency = #USD
//* adjudication[inoutnetwork].category = PayerAdjudicationCategoryCS#other
* item[0].productOrService = $FDANationalDrugCodeCS#0777-3105-02 "100-count bottle of Prozac 20 mg"
* item[0].sequence = 1 
* item[0].adjudication[adjudicationamounttype][0].category = $HL7AdjudicationCS#submitted
* item[0].adjudication[adjudicationamounttype][0].amount.value = 1000.00
* item[0].adjudication[adjudicationamounttype][0].amount.currency = #USD
* item[0].adjudication[adjudicationamounttype][1].category = $HL7AdjudicationCS#benefit 
* item[0].adjudication[adjudicationamounttype][1].amount.value = 20.00
* item[0].adjudication[adjudicationamounttype][1].amount.currency = #USD
* item[0].adjudication[adjudicationamounttype][2].category = PayerAdjudicationCategoryCS#discount
* item[0].adjudication[adjudicationamounttype][2].amount.value = 900.00
* item[0].adjudication[adjudicationamounttype][2].amount.currency = #USD
* item[0].adjudication[adjudicationamounttype][3].category = PayerAdjudicationCategoryCS#memberliability
* item[0].adjudication[adjudicationamounttype][3].amount.value = 80.00
* item[0].adjudication[adjudicationamounttype][3].amount.currency = #USD
* item[0].adjudication[adjudicationamounttype][4].category = PayerAdjudicationCategoryCS#paidtoprovider
* item[0].adjudication[adjudicationamounttype][4].amount.value = 20.00
* item[0].adjudication[adjudicationamounttype][4].amount.currency = #USD


Instance: OrganizationPayer1
InstanceOf: CARINBBOrganization
Description: "Payer1"
Usage: #example
* meta.profile = Canonical(CARINBBOrganization)
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* identifier[NPI].type = IdentifierTypeCS#npi
* identifier[NPI].value = "345678"
* identifier[payerid].type = IdentifierTypeCS#payerid
* identifier[payerid].value = "901234"
* name = "Payer 1"
* active = true 

Instance: OrganizationProvider1
InstanceOf: CARINBBOrganization
Description: "Provider 1"
Usage: #example
* meta.profile = Canonical(CARINBBOrganization)
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* identifier[NPI].type = IdentifierTypeCS#npi
* identifier[NPI].value = "345678"
* identifier[tax].type = IdentifierTypeCS#tax
* identifier[tax].value = "123-45-6789"
* name = "Provider 1"
* active = true 

Instance: BBEobPharmacy
InstanceOf: CARINBBExplanationOfBenefitPharmacy
Description: "BBEoB from Jeff"
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-23T16:04:04.584-04:00"
* meta.source = "#2Htk0DNoUEbccjg0"
* meta.profile[0] = Canonical(CARINBBExplanationOfBenefitPharmacy)
* identifier[claimnumber][0].value = "7d0c2c7f-8049-445a-a283-41cf91d09a38"
* identifier[claimnumber][0].system = "https://bluebutton.cms.gov/resources/variables/clm_id"
* identifier[claimnumber][0].use = #official
* identifier[claimnumber][0].type = $IdentifierTypeCS#cn 
* use = #claim 
* status = #active
* type.coding[0].system = "http://terminology.hl7.org/CodeSystem/claim-type"
* type.coding[0].code = #pharmacy
* type.coding[0].display = "PHARMACY"
* patient.reference = "Patient/64"
* patient.display = "Alice Dominguez Gibson"
* billablePeriod.start = "2019-01-18T15:40:00-05:00"
* billablePeriod.end = "2020-01-18T15:40:00-05:00"
* created = "2019-01-18T16:00:00-05:00"
* insurer.reference = "Organization/9"
* insurer.display = "SilverCaid"
* payee.type.coding[0].system = "http://terminology.hl7.org/CodeSystem/payeetype"
* payee.type.coding[0].code = #provider
* payee.type.coding[0].display = "Provider"
* payee.party.reference = "Organization/2910"
* payee.party.display = "TrueScript Pharmacy"
* claim.reference = "Claim/2912"
* claim.display = "Claim for Alice Dominguez Gibson"
* claimResponse.reference = "ClaimResponse/2913"
* claimResponse.display = "Alice Dominguez Gibson ClaimResponse"
// * supportingInfo[0].sequence = 1
// * supportingInfo[0].category.coding[0].system = "http://terminology.hl7.org/CodeSystem/claiminformationcategory"
// * supportingInfo[0].category.coding[0].code = #info
// * supportingInfo[0].category.coding[0].display = "Information"
// * supportingInfo[0].code.coding[0].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
// * supportingInfo[0].code.coding[0].code = #860518
// * supportingInfo[0].code.coding[0].display = "24 HR carvedilol phosphate 20 MG Extended Release Oral Capsule [Coreg]"
// * supportingInfo[1].sequence = 2
// * supportingInfo[1].category.coding[0].system = "http://terminology.hl7.org/CodeSystem/claiminformationcategory"
// * supportingInfo[1].category.coding[0].code = #info
// * supportingInfo[1].category.coding[0].display = "Information"
// * supportingInfo[1].code.coding[0].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
// * supportingInfo[1].code.coding[0].code = #104416
// * supportingInfo[1].code.coding[0].display = "amLODIPine Besylate"
// * supportingInfo[2].sequence = 3
// * supportingInfo[2].category.coding[0].system = "http://terminology.hl7.org/CodeSystem/claiminformationcategory"
// * supportingInfo[2].category.coding[0].code = #info
// * supportingInfo[2].category.coding[0].display = "Information"
// * supportingInfo[2].code.coding[0].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
// * supportingInfo[2].code.coding[0].code = #258337
// * supportingInfo[2].code.coding[0].display = "Hydrochlorothiazide / Triamterene"
* insurance[0].coverage.reference = "Coverage/65"
* insurance[0].coverage.display = "Alice Dominguez Gibson Coverage"
* item[0].sequence = 1
* item[0].informationSequence[0] = 1
* item[0].category.coding[0].system = "https://bluebutton.cms.gov/resources/variables/line_cms_type_srvc_cd"
* item[0].category.coding[0].code = #1
* item[0].category.coding[0].display = "Medical care"
// This should be an NDC Code!
* item[0].productOrService.coding[0].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* item[0].productOrService.coding[0].code = #860518
* item[0].productOrService.coding[0].display = "24 HR carvedilol phosphate 20 MG Extended Release Oral Capsule [Coreg]"
* item[0].servicedPeriod.start = "2019-01-18T15:40:00-05:00"
* item[0].servicedPeriod.end = "2019-01-18T16:00:00-05:00"
* item[0].locationCodeableConcept.coding[0].system = "https://bluebutton.cms.gov/resources/variables/line_place_of_srvc_cd"
* item[0].locationCodeableConcept.coding[0].code = #49
* item[0].locationCodeableConcept.coding[0].display = "Independent Clinic"
* item[0].quantity.value = 30
* item[0].unitPrice.value = 81.86
* item[0].unitPrice.currency = #USD
* item[0].net.value = 81.86
* item[0].net.currency = #USD
* item[0].adjudication[adjudicationamounttype][0].category = PayerAdjudicationCategoryCS#coinsurance "Beneficiary Coinsurance Amount"
* item[0].adjudication[adjudicationamounttype][0].amount.value = 81.86
* item[0].adjudication[adjudicationamounttype][0].amount.currency = #USD
* item[0].adjudication[adjudicationamounttype][1].category = PayerAdjudicationCategoryCS#paidtoprovider "Paid to provider"  
* item[0].adjudication[adjudicationamounttype][1].amount.value = 0.0
* item[0].adjudication[adjudicationamounttype][1].amount.currency = #USD
* item[0].adjudication[adjudicationamounttype][2].category = $HL7AdjudicationCS#submitted  "Submitted"
* item[0].adjudication[adjudicationamounttype][2].amount.value = 81.86
* item[0].adjudication[adjudicationamounttype][2].amount.currency = #USD  
// * item[0].adjudication[3].category = PayerAdjudicationCategoryCS#allowed "Allowed"
// * item[0].adjudication[3].amount.value = 81.86
// * item[0].adjudication[3].amount.currency = #USD
// * item[0].adjudication[4].category.coding[0].system = "https://bluebutton.cms.gov/resources/codesystem/adjudication"
// * item[0].adjudication[4].category.coding[0].code = #https://bluebutton.cms.gov/resources/variables/line_prcsg_ind_cd
// * item[0].adjudication[4].category.coding[0].display = "Line Processing Indicator Code"
// * item[0].adjudication[4].reason.coding[0].system = "https://bluebutton.cms.gov/resources/variables/line_prcsg_ind_cd"
// * item[0].adjudication[4].reason.coding[0].code = #A
// * item[0].adjudication[4].reason.coding[0].display = "Allowed"
// * item[0].adjudication[5].category.coding[0].system = "https://bluebutton.cms.gov/resources/codesystem/adjudication"
// * item[0].adjudication[5].category.coding[0].code = #https://bluebutton.cms.gov/resources/variables/line_bene_ptb_ddctbl_amt
// * item[0].adjudication[5].category.coding[0].display = "Line Beneficiary Part B Deductible Amount"
// * item[0].adjudication[5].amount.value = 500.0
// * item[0].adjudication[5].amount.currency = #USD
* item[1].sequence = 2
* item[1].informationSequence[0] = 2
* item[1].category.coding[0].system = "https://bluebutton.cms.gov/resources/variables/line_cms_type_srvc_cd"
* item[1].category.coding[0].code = #1
* item[1].category.coding[0].display = "Medical care"
* item[1].productOrService.coding[0].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* item[1].productOrService.coding[0].code = #104416
* item[1].productOrService.coding[0].display = "amLODIPine Besylate"
* item[1].servicedPeriod.start = "2019-01-18T15:40:00-05:00"
* item[1].servicedPeriod.end = "2019-01-18T16:00:00-05:00"
* item[1].locationCodeableConcept.coding[0].system = "https://bluebutton.cms.gov/resources/variables/line_place_of_srvc_cd"
* item[1].locationCodeableConcept.coding[0].code = #49
* item[1].locationCodeableConcept.coding[0].display = "Independent Clinic"
* item[1].quantity.value = 30
* item[1].unitPrice.value = 11.43
* item[1].unitPrice.currency = #USD
* item[1].net.value = 11.43
* item[1].net.currency = #USD
* item[1].adjudication[adjudicationamounttype][0].category = PayerAdjudicationCategoryCS#coinsurance "Beneficiary Coinsurance Amount"
* item[1].adjudication[adjudicationamounttype][0].amount.value = 11.43
* item[1].adjudication[adjudicationamounttype][0].amount.currency = #USD
* item[1].adjudication[adjudicationamounttype][1].category = PayerAdjudicationCategoryCS#paidtoprovider "Paid to provider"  
* item[1].adjudication[adjudicationamounttype][1].amount.value = 0.0
* item[1].adjudication[adjudicationamounttype][1].amount.currency = #USD
* item[1].adjudication[adjudicationamounttype][2].category = $HL7AdjudicationCS#submitted  "Submitted"
* item[1].adjudication[adjudicationamounttype][2].amount.value = 11.43
* item[1].adjudication[adjudicationamounttype][2].amount.currency = #USD   
// * item[2].adjudication[adjudicationamounttype][3].category = PayerAdjudicationCategoryCS#allowed "Allowed"
// * item[1].adjudication[3].amount.value = 11.43
// * item[1].adjudication[3].amount.currency = #USD
// * item[1].adjudication[4].category.coding[0].system = "https://bluebutton.cms.gov/resources/codesystem/adjudication"
// * item[1].adjudication[4].category.coding[0].code = #https://bluebutton.cms.gov/resources/variables/line_prcsg_ind_cd
// * item[1].adjudication[4].category.coding[0].display = "Line Processing Indicator Code"
// * item[1].adjudication[4].reason.coding[0].system = "https://bluebutton.cms.gov/resources/variables/line_prcsg_ind_cd"
// * item[1].adjudication[4].reason.coding[0].code = #A
// * item[1].adjudication[4].reason.coding[0].display = "Allowed"
// * item[1].adjudication[5].category.coding[0].system = "https://bluebutton.cms.gov/resources/codesystem/adjudication"
// * item[1].adjudication[5].category.coding[0].code = #https://bluebutton.cms.gov/resources/variables/line_bene_ptb_ddctbl_amt
// * item[1].adjudication[5].category.coding[0].display = "Line Beneficiary Part B Deductible Amount"
// * item[1].adjudication[5].amount.value = 500.0
// * item[1].adjudication[5].amount.currency = #USD
* item[2].sequence = 3
* item[2].informationSequence[0] = 3
* item[2].category.coding[0].system = "https://bluebutton.cms.gov/resources/variables/line_cms_type_srvc_cd"
* item[2].category.coding[0].code = #1
* item[2].category.coding[0].display = "Medical care"
* item[2].productOrService.coding[0].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* item[2].productOrService.coding[0].code = #258337
* item[2].productOrService.coding[0].display = "Hydrochlorothiazide / Triamterene"
* item[2].servicedPeriod.start = "2019-01-18T15:40:00-05:00"
* item[2].servicedPeriod.end = "2019-01-18T16:00:00-05:00"
* item[2].locationCodeableConcept.coding[0].system = "https://bluebutton.cms.gov/resources/variables/line_place_of_srvc_cd"
* item[2].locationCodeableConcept.coding[0].code = #49
* item[2].locationCodeableConcept.coding[0].display = "Independent Clinic"
* item[2].quantity.value = 30
* item[2].unitPrice.value = 4.08
* item[2].unitPrice.currency = #USD
* item[2].net.value = 4.08
* item[2].net.currency = #USD
* item[2].adjudication[adjudicationamounttype][0].category = PayerAdjudicationCategoryCS#coinsurance "Beneficiary Coinsurance Amount"
* item[2].adjudication[adjudicationamounttype][0].amount.value = 4.08
* item[2].adjudication[adjudicationamounttype][0].amount.currency = #USD
* item[2].adjudication[adjudicationamounttype][1].category = PayerAdjudicationCategoryCS#paidtoprovider "Paid to provider"  
* item[2].adjudication[adjudicationamounttype][1].amount.value = 0.0
* item[2].adjudication[adjudicationamounttype][1].amount.currency = #USD
* item[2].adjudication[adjudicationamounttype][2].category = $HL7AdjudicationCS#submitted  "Submitted"
* item[2].adjudication[adjudicationamounttype][2].amount.value = 4.08
* item[2].adjudication[adjudicationamounttype][2].amount.currency = #USD   
// * item[1].adjudication[3].category = PayerAdjudicationCategoryCS#allowed "Allowed"
// * item[1].adjudication[3].amount.value = 4.08
// * item[1].adjudication[3].amount.currency = #USD
// * item[2].adjudication[4].category.coding[0].system = "https://bluebutton.cms.gov/resources/codesystem/adjudication"
// * item[2].adjudication[4].category.coding[0].code = #https://bluebutton.cms.gov/resources/variables/line_prcsg_ind_cd
// * item[2].adjudication[4].category.coding[0].display = "Line Processing Indicator Code"
// * item[2].adjudication[4].reason.coding[0].system = "https://bluebutton.cms.gov/resources/variables/line_prcsg_ind_cd"
// * item[2].adjudication[4].reason.coding[0].code = #A
// * item[2].adjudication[4].reason.coding[0].display = "Allowed"
// * item[2].adjudication[5].category.coding[0].system = "https://bluebutton.cms.gov/resources/codesystem/adjudication"
// * item[2].adjudication[5].category.coding[0].code = #https://bluebutton.cms.gov/resources/variables/line_bene_ptb_ddctbl_amt
// * item[2].adjudication[5].category.coding[0].display = "Line Beneficiary Part B Deductible Amount"
// * item[2].adjudication[5].amount.value = 500.0
// * item[2].adjudication[5].amount.currency = #USD
* total[adjudicationamounttype].category = $HL7AdjudicationCS#submitted
* total[adjudicationamounttype].amount.value = 97.37
* total[adjudicationamounttype].amount.currency = #USD
* total[inoutnetwork].category = PayerAdjudicationCategoryCS#innetwork 
* total[inoutnetwork].amount.value = 0.00
* total[inoutnetwork].amount.currency = #USD
* payment.amount.value = 0.0
* payment.amount.currency = #USD
// Added since these were missing and required from original example
//* adjudication[inoutnetwork].category = PayerAdjudicationCategoryCS#innetwork 
* provider.display = "Minute Pharmacy"
* insurance[0].focal = true
* insurance[0].coverage[0] = Reference(Coverage1)
* outcome = #complete 
// added as embellishments
//* supportingInfo[0].sequence = 1
* supportingInfo[0].category = ClaimInformationCategoryCS#billingnetworkcontractingstatus
* supportingInfo[0].code = #contracted 
* supportingInfo[0].sequence = 1
* supportingInfo[1].category = ClaimInformationCategoryCS#brandgenericcode   
* supportingInfo[1].code = #generic 
* supportingInfo[1].sequence = 2
* supportingInfo[2].category = ClaimInformationCategoryCS#refillnum
* supportingInfo[2].valueQuantity.value = 10
* supportingInfo[2].sequence = 3
* supportingInfo[3].category = ClaimInformationCategoryCS#dawcode       
* supportingInfo[3].code = #brandOnly 
* supportingInfo[3].sequence = 4
* supportingInfo[4].category = ClaimInformationCategoryCS#clmrecvddate
* supportingInfo[4].timingDate = "2019-01-18"
* supportingInfo[4].sequence = 5
* supportingInfo[5].category = ClaimInformationCategoryCS#dayssupply
// Why doesn't this work?
//* supportingInfo[dayssupply][5].valueQuantity.value = 30
* supportingInfo[5].valueQuantity.value = 30
* supportingInfo[5].sequence = 6

