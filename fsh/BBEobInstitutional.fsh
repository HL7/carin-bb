Instance: BBEobOutpatientInstitutional
InstanceOf: C4BBExplanationOfBenefitOutpatientInstitutional
Description: "BBEoB from Jeff"
* meta.versionId = "1"
* meta.lastUpdated = "2020-07-23T16:04:04.584-04:00"
* meta.source = "#2Htk0DNoUEbccjg0"
* meta.profile[0] = Canonical(C4BBExplanationOfBenefitOutpatientInstitutional)
* identifier.value = "8ceaca46-ba97-4748-bbf7-80a4d54dc978"
* identifier.system = "https://bluebutton.cms.gov/resources/variables/clm_id"
* identifier.use = #official
* identifier.type = IdentifierTypeCS#cn 
* use = #claim 
* status = #active

* type.coding[0].system = "http://terminology.hl7.org/CodeSystem/claim-type"
* type.coding[0].code = #institutional
* type.coding[0].display = "INSTITUTIONAL"
* patient.reference = "Patient/1656"
* patient.display = "Bobbie Dawn Avery"

* billablePeriod.start = "2019-01-08T08:40:00-05:00"
* billablePeriod.end = "2020-01-08T08:40:00-05:00"
* created = "2019-01-08T09:00:00-05:00"
* insurer.reference = "Organization/9"
* insurer.display = "SilverCaid"
* payee.type.coding[0].system = "http://terminology.hl7.org/CodeSystem/payeetype"
* payee.type.coding[0].code = #provider
* payee.type.coding[0].display = "Provider"
* payee.party.reference = "Organization/2348"
* payee.party.display = "Bay Area Family Practice"
* claim.reference = "Claim/2744"
* claim.display = "Claim for Bobbie Dawn Avery"
* claimResponse.reference = "ClaimResponse/2745"
* claimResponse.display = "Bobbie Dawn Avery ClaimResponse"
* careTeam[0].sequence = 1
* careTeam[0].provider.reference = "Practitioner/2584"
* careTeam[0].provider.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* careTeam[0].provider.identifier.value = "9999992908"
* careTeam[0].provider.display = "Larry Calvin Kirk MD"
* careTeam[0].responsible = true
* careTeam[0].role.coding[0] = $CareTeamRoleCodeCS#performing "Performing Provider"
* careTeam[0].qualification.coding[0].system = "http://nucc.org/provider-taxonomy"
* careTeam[0].qualification.coding[0].code = #207QA0000X
* careTeam[0].qualification.coding[0].display = "Adolescent Medicine"
* careTeam[1].sequence = 2
* careTeam[1].provider.reference = "Practitioner/2585"
* careTeam[1].provider.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* careTeam[1].provider.identifier.value = "9999992909"
* careTeam[1].provider.display = "Jane Kirk MD"
* careTeam[1].responsible = false
* careTeam[1].role.coding[0] = $CareTeamRoleCodeCS#performing "Performing Provider"
* careTeam[1].qualification.coding[0].system = "http://joesgarage.org/taxonomy"
* careTeam[1].qualification.coding[0].code = #207QA0000X
* careTeam[1].qualification.coding[0].display = "Adolescent Medicine"
* careTeam[2].sequence = 3
* careTeam[2].provider.reference = "Practitioner/2586"
* careTeam[2].provider.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* careTeam[2].provider.identifier.value = "9999992910"
* careTeam[2].provider.display = "Captain Kirk MD"
* careTeam[2].responsible = false
* careTeam[2].role.coding[0] = $CareTeamRoleCodeCS#performing "Performing Provider"
* insurance[0].coverage.reference = "Coverage/1657"
* insurance[0].coverage.display = "Bobbie Dawn Avery Coverage"
* item[0].sequence = 1
* item[0].informationSequence[0] = 1
* item[0].category.coding[0].system = "https://bluebutton.cms.gov/resources/variables/line_cms_type_srvc_cd"
* item[0].category.coding[0].code = #1
* item[0].category.coding[0].display = "Medical care"
// * item[0].extension[0].url = "https://bluebutton.cms.gov/assets/ig/StructureDefinition-bluebutton-outpatient-rev-cntr-ndc-qty-extension"
// * item[0].extension[0].valueQuantity.value = 0
// * item[0].productOrService.extension[0].url = "https://bluebutton.cms.gov/assets/ig/StructureDefinition-bluebutton-outpatient-rev-cntr-ide-ndc-upc-num-extension"
// * item[0].productOrService.extension[0].valueCoding.system = "https://www.accessdata.fda.gov/scripts/cder/ndc"
// * item[0].productOrService.extension[0].valueCoding.code = #0624
// * item[0].productOrService.extension[0].valueCoding.display = "Dummy"
* item[0].productOrService.coding[0].system = "http://snomed.info/sct"    // Should be from CPTHCPCSProcedureCode
* item[0].productOrService.coding[0].code = #698314001
* item[0].productOrService.coding[0].display = "Consultation for treatment"
* item[0].servicedPeriod.start = "2019-01-08T08:40:00-05:00"
* item[0].servicedPeriod.end = "2019-01-08T09:00:00-05:00"
* item[0].locationCodeableConcept.coding[0].system = $CMS_PlaceofServiceCodes#49
* item[0].locationCodeableConcept.coding[0].display = "Independent Clinic"
* item[0].quantity.value = 1
* item[0].unitPrice.value = 106.39
* item[0].unitPrice.currency = #USD
* item[0].net.value = 106.39
* item[0].net.currency = #USD
// * item[0].adjudication[0].category.coding[0].system = "https://bluebutton.cms.gov/resources/codesystem/adjudication"
// * item[0].adjudication[0].category.coding[0].code = #https://bluebutton.cms.gov/resources/variables/line_coinsrnc_amt
// * item[0].adjudication[0].category.coding[0].display = "Line Beneficiary Coinsurance Amount"
// * item[0].adjudication[0].amount.value = 106.39
// * item[0].adjudication[0].amount.currency = #USD
// * item[0].adjudication[1].category.coding[0].system = "https://bluebutton.cms.gov/resources/codesystem/adjudication"
// * item[0].adjudication[1].category.coding[0].code = #https://bluebutton.cms.gov/resources/variables/line_prvdr_pmt_amt
// * item[0].adjudication[1].category.coding[0].display = "Line Provider Payment Amount"
// * item[0].adjudication[1].amount.value = 0.0
// * item[0].adjudication[1].amount.currency = #USD
// * item[0].adjudication[2].category.coding[0].system = "https://bluebutton.cms.gov/resources/codesystem/adjudication"
// * item[0].adjudication[2].category.coding[0].code = #https://bluebutton.cms.gov/resources/variables/line_sbmtd_chrg_amt
// * item[0].adjudication[2].category.coding[0].display = "Line Submitted Charge Amount"
// * item[0].adjudication[2].amount.value = 106.39
// * item[0].adjudication[2].amount.currency = #USD
// * item[0].adjudication[3].category.coding[0].system = "https://bluebutton.cms.gov/resources/codesystem/adjudication"
// * item[0].adjudication[3].category.coding[0].code = #https://bluebutton.cms.gov/resources/variables/line_alowd_chrg_amt
// * item[0].adjudication[3].category.coding[0].display = "Line Allowed Charge Amount"
// * item[0].adjudication[3].amount.value = 106.39
// * item[0].adjudication[3].amount.currency = #USD
* item[0].adjudication[adjudicationamounttype][0].category = C4BBAdjudicationCS#coinsurance "Beneficiary Coinsurance Amount"
* item[0].adjudication[adjudicationamounttype][0].amount.value = 81.86
* item[0].adjudication[adjudicationamounttype][0].amount.currency = #USD
* item[0].adjudication[adjudicationamounttype][1].category = C4BBAdjudicationCS#paidtoprovider "Paid to provider"  
* item[0].adjudication[adjudicationamounttype][1].amount.value = 0.0
* item[0].adjudication[adjudicationamounttype][1].amount.currency = #USD
* item[0].adjudication[adjudicationamounttype][2].category = $HL7AdjudicationCS#submitted  "Submitted"
* item[0].adjudication[adjudicationamounttype][2].amount.value = 81.86
* item[0].adjudication[adjudicationamounttype][2].amount.currency = #USD  
// * item[0].adjudication[4].category.coding[0].system = "https://bluebutton.cms.gov/resources/codesystem/adjudication"
// * item[0].adjudication[4].category.coding[0].code = #https://bluebutton.cms.gov/resources/variables/line_prcsg_ind_cd
// * item[0].adjudication[4].category.coding[0].display = "Line Processing Indicator Code"
// * item[0].adjudication[5].category.coding[0].system = "https://bluebutton.cms.gov/resources/codesystem/adjudication"
// * item[0].adjudication[5].category.coding[0].code = #https://bluebutton.cms.gov/resources/variables/line_bene_ptb_ddctbl_amt
// * item[0].adjudication[5].category.coding[0].display = "Line Beneficiary Part B Deductible Amount"
// * item[0].adjudication[5].amount.value = 500.0
// * item[0].adjudication[5].amount.currency = #USD
// * item[1].extension[0].url = "https://bluebutton.cms.gov/assets/ig/StructureDefinition-bluebutton-outpatient-rev-cntr-ndc-qty-extension"
// * item[1].extension[0].valueQuantity.value = 0
//***********     Items must be a procedure (HCPCPS Procedure Code), not an RXNorm Code  *************
//***********     So Item two has been struck in its entirety  

* payment.amount.value = 0
* payment.amount.currency = #USD
// Added since these were missing and required from original example
* total[inoutnetwork].category = C4BBAdjudicationCS#innetwork 
* total[inoutnetwork].amount.value = 0.00
* total[inoutnetwork].amount.currency = #USD
* total[adjudicationamounttype][0].category =  $HL7AdjudicationCS#submitted
* total[adjudicationamounttype][0].amount.value = 81.86
* total[adjudicationamounttype][0].amount.currency = #USD
* provider.display = "Bay Area Family Practice"
* insurance[0].focal = true
* insurance[0].coverage[0] = Reference(Coverage1)
* outcome = #complete 
* diagnosis[0].diagnosisCodeableConcept = http://hl7.org/fhir/sid/icd-10-cm#S06.0x1A
* diagnosis[0].type = C4BBClaimDiagnosisType#principal
* diagnosis[0].sequence = 1 
// added as embellishments
//* supportingInfo[0].sequence = 1
* supportingInfo[0].category = ClaimInformationCategoryCS#billingnetworkcontractingstatus
* supportingInfo[0].code = C4BBAdjudicationCS#contracted 
* supportingInfo[0].sequence = 1
