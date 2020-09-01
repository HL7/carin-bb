<table border="1"><tr><td><b>Field</b></td><td><b>Value</b></td></tr>
<tr><td>resourceType</td><td>
"ExplanationOfBenefit"
</td></tr>
<tr><td>id</td><td>
"BBEobOutpatientFacility"
</td></tr>
<tr><td>meta.profile[0]</td><td>"http://hl7.org/fhir/us/carin-bb/StructureDefinition/CARIN-BB-ExplanationOfBenefit-Outpatient-Facility"</td>
<tr><td>meta.versionId</td><td>
"1"
</td></tr>
<tr><td>meta.lastUpdated</td><td>
"2020-07-23T16:04:04.584-04:00"
</td></tr>
<tr><td>meta.source</td><td>
"#2Htk0DNoUEbccjg0"
</td></tr>
<tr><td>type.coding[0].code</td><td>
#institutional
</td></tr>
<tr><td>type.coding[0].system</td><td>
"http://terminology.hl7.org/CodeSystem/claim-type"
</td></tr>
<tr><td>type.coding[0].display</td><td>
"INSTITUTIONAL"
</td></tr>
<tr><td>use</td><td>
"claim"
</td></tr>
<tr><td>identifier[0].value</td><td>
8ceaca46-ba97-4748-bbf7-80a4d54dc978
</td></tr>
<tr><td>identifier[0].system</td><td>
"https://bluebutton.cms.gov/resources/variables/clm_id"
</td></tr>
<tr><td>identifier[0].use</td><td>
"official"
</td></tr>
<tr><td>identifier[0].type.coding[0].code</td><td>
#cn
</td></tr>
<tr><td>identifier[0].type.coding[0].system</td><td>
"http://hl7.org/fhir/us/carin-bb/CodeSystem/IdentifierTypeCS"
</td></tr>
<tr><td>status</td><td>
"active"
</td></tr>
<tr><td>patient.reference</td><td>
"Patient/1656"
</td></tr>
<tr><td>patient.display</td><td>
"Bobbie Dawn Avery"
</td></tr>
<tr><td>billablePeriod.start</td><td>
"2019-01-08T08:40:00-05:00"
</td></tr>
<tr><td>billablePeriod.end</td><td>
"2020-01-08T08:40:00-05:00"
</td></tr>
<tr><td>created</td><td>
"2019-01-08T09:00:00-05:00"
</td></tr>
<tr><td>insurer.reference</td><td>
"Organization/9"
</td></tr>
<tr><td>insurer.display</td><td>
"SilverCaid"
</td></tr>
<tr><td>payee.type.coding[0].system</td><td>
"http://terminology.hl7.org/CodeSystem/payeetype"
</td></tr>
<tr><td>payee.type.coding[0].code</td><td>
#provider
</td></tr>
<tr><td>payee.type.coding[0].display</td><td>
"Provider"
</td></tr>
<tr><td>payee.party.reference</td><td>
"Organization/2348"
</td></tr>
<tr><td>payee.party.display</td><td>
"Bay Area Family Practice"
</td></tr>
<tr><td>claim.reference</td><td>
"Claim/2744"
</td></tr>
<tr><td>claim.display</td><td>
"Claim for Bobbie Dawn Avery"
</td></tr>
<tr><td>claimResponse.reference</td><td>
"ClaimResponse/2745"
</td></tr>
<tr><td>claimResponse.display</td><td>
"Bobbie Dawn Avery ClaimResponse"
</td></tr>
<tr><td>careTeam[0].sequence</td><td>
1
</td></tr>
<tr><td>careTeam[0].provider.reference</td><td>
"Practitioner/2584"
</td></tr>
<tr><td>careTeam[0].provider.identifier.system</td><td>
"http://hl7.org/fhir/sid/us-npi"
</td></tr>
<tr><td>careTeam[0].provider.identifier.value</td><td>
9999992908
</td></tr>
<tr><td>careTeam[0].provider.display</td><td>
"Larry Calvin Kirk MD"
</td></tr>
<tr><td>careTeam[0].responsible</td><td>
"true"
</td></tr>
<tr><td>careTeam[0].role.coding[0].code</td><td>
#performing
</td></tr>
<tr><td>careTeam[0].role.coding[0].system</td><td>
"http://terminology.hl7.org/CodeSystem/claimcareteamrole"
</td></tr>
<tr><td>careTeam[0].role.coding[0].display</td><td>
"Performing Provider"
</td></tr>
<tr><td>careTeam[0].qualification.coding[0].system</td><td>
"http://nucc.org/provider-taxonomy"
</td></tr>
<tr><td>careTeam[0].qualification.coding[0].code</td><td>
#207QA0000X
</td></tr>
<tr><td>careTeam[0].qualification.coding[0].display</td><td>
"Adolescent Medicine"
</td></tr>
<tr><td>careTeam[1].sequence</td><td>
2
</td></tr>
<tr><td>careTeam[1].provider.reference</td><td>
"Practitioner/2585"
</td></tr>
<tr><td>careTeam[1].provider.identifier.system</td><td>
"http://hl7.org/fhir/sid/us-npi"
</td></tr>
<tr><td>careTeam[1].provider.identifier.value</td><td>
9999992909
</td></tr>
<tr><td>careTeam[1].provider.display</td><td>
"Jane Kirk MD"
</td></tr>
<tr><td>careTeam[1].responsible</td><td>
"false"
</td></tr>
<tr><td>careTeam[1].role.coding[0].code</td><td>
#performing
</td></tr>
<tr><td>careTeam[1].role.coding[0].system</td><td>
"http://terminology.hl7.org/CodeSystem/claimcareteamrole"
</td></tr>
<tr><td>careTeam[1].role.coding[0].display</td><td>
"Performing Provider"
</td></tr>
<tr><td>careTeam[1].qualification.coding[0].system</td><td>
"http://joesgarage.org/taxonomy"
</td></tr>
<tr><td>careTeam[1].qualification.coding[0].code</td><td>
#207QA0000X
</td></tr>
<tr><td>careTeam[1].qualification.coding[0].display</td><td>
"Adolescent Medicine"
</td></tr>
<tr><td>careTeam[2].sequence</td><td>
3
</td></tr>
<tr><td>careTeam[2].provider.reference</td><td>
"Practitioner/2586"
</td></tr>
<tr><td>careTeam[2].provider.identifier.system</td><td>
"http://hl7.org/fhir/sid/us-npi"
</td></tr>
<tr><td>careTeam[2].provider.identifier.value</td><td>
9999992910
</td></tr>
<tr><td>careTeam[2].provider.display</td><td>
"Captain Kirk MD"
</td></tr>
<tr><td>careTeam[2].responsible</td><td>
"false"
</td></tr>
<tr><td>careTeam[2].role.coding[0].code</td><td>
#performing
</td></tr>
<tr><td>careTeam[2].role.coding[0].system</td><td>
"http://terminology.hl7.org/CodeSystem/claimcareteamrole"
</td></tr>
<tr><td>careTeam[2].role.coding[0].display</td><td>
"Performing Provider"
</td></tr>
<tr><td>insurance[0].coverage.reference</td><td>
"Coverage/Coverage1"
</td></tr>
<tr><td>insurance[0].focal</td><td>
"true"
</td></tr>
<tr><td>item[0].sequence</td><td>
1
</td></tr>
<tr><td>item[0].informationSequence[0]</td><td>"1"</td>
<tr><td>item[0].category.coding[0].system</td><td>
"https://bluebutton.cms.gov/resources/variables/line_cms_type_srvc_cd"
</td></tr>
<tr><td>item[0].category.coding[0].code</td><td>
#1
</td></tr>
<tr><td>item[0].category.coding[0].display</td><td>
"Medical care"
</td></tr>
<tr><td>item[0].productOrService.coding[0].system</td><td>
"http://snomed.info/sct"
</td></tr>
<tr><td>item[0].productOrService.coding[0].code</td><td>
#698314001
</td></tr>
<tr><td>item[0].productOrService.coding[0].display</td><td>
"Consultation for treatment"
</td></tr>
<tr><td>item[0].servicedPeriod.start</td><td>
"2019-01-08T08:40:00-05:00"
</td></tr>
<tr><td>item[0].servicedPeriod.end</td><td>
"2019-01-08T09:00:00-05:00"
</td></tr>
<tr><td>item[0].locationCodeableConcept.coding[0].system</td><td>
"49"
</td></tr>
<tr><td>item[0].locationCodeableConcept.coding[0].display</td><td>
"Independent Clinic"
</td></tr>
<tr><td>item[0].quantity.value</td><td>
1
</td></tr>
<tr><td>item[0].unitPrice.value</td><td>
106.39
</td></tr>
<tr><td>item[0].unitPrice.currency</td><td>
#USD
</td></tr>
<tr><td>item[0].net.value</td><td>
106.39
</td></tr>
<tr><td>item[0].net.currency</td><td>
#USD
</td></tr>
<tr><td>item[0].adjudication[0].category.coding[0].code</td><td>
#coinsurance
</td></tr>
<tr><td>item[0].adjudication[0].category.coding[0].system</td><td>
"http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudicationCS"
</td></tr>
<tr><td>item[0].adjudication[0].category.coding[0].display</td><td>
"Beneficiary Coinsurance Amount"
</td></tr>
<tr><td>item[0].adjudication[0].amount.value</td><td>
81.86
</td></tr>
<tr><td>item[0].adjudication[0].amount.currency</td><td>
#USD
</td></tr>
<tr><td>item[0].adjudication[1].category.coding[0].code</td><td>
#paidtoprovider
</td></tr>
<tr><td>item[0].adjudication[1].category.coding[0].system</td><td>
"http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudicationCS"
</td></tr>
<tr><td>item[0].adjudication[1].category.coding[0].display</td><td>
"Paid to provider"
</td></tr>
<tr><td>item[0].adjudication[1].amount.value</td><td>
0
</td></tr>
<tr><td>item[0].adjudication[1].amount.currency</td><td>
#USD
</td></tr>
<tr><td>item[0].adjudication[2].category.coding[0].code</td><td>
#submitted
</td></tr>
<tr><td>item[0].adjudication[2].category.coding[0].system</td><td>
"http://terminology.hl7.org/CodeSystem/adjudication"
</td></tr>
<tr><td>item[0].adjudication[2].category.coding[0].display</td><td>
"Submitted"
</td></tr>
<tr><td>item[0].adjudication[2].amount.value</td><td>
81.86
</td></tr>
<tr><td>item[0].adjudication[2].amount.currency</td><td>
#USD
</td></tr>
<tr><td>payment.amount.value</td><td>
0
</td></tr>
<tr><td>payment.amount.currency</td><td>
#USD
</td></tr>
<tr><td>total[0].category.coding[0].code</td><td>
#innetwork
</td></tr>
<tr><td>total[0].category.coding[0].system</td><td>
"http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudicationCS"
</td></tr>
<tr><td>total[0].amount.value</td><td>
0
</td></tr>
<tr><td>total[0].amount.currency</td><td>
#USD
</td></tr>
<tr><td>total[1].category.coding[0].code</td><td>
#submitted
</td></tr>
<tr><td>total[1].category.coding[0].system</td><td>
"http://terminology.hl7.org/CodeSystem/adjudication"
</td></tr>
<tr><td>total[1].amount.value</td><td>
81.86
</td></tr>
<tr><td>total[1].amount.currency</td><td>
#USD
</td></tr>
<tr><td>provider.display</td><td>
"Bay Area Family Practice"
</td></tr>
<tr><td>outcome</td><td>
"complete"
</td></tr>
<tr><td>diagnosis[0].diagnosisCodeableConcept.coding[0].code</td><td>
#S06.0x1A
</td></tr>
<tr><td>diagnosis[0].diagnosisCodeableConcept.coding[0].system</td><td>
"http://hl7.org/fhir/sid/icd-10-cm"
</td></tr>
<tr><td>diagnosis[0].type[0].coding[0].code</td><td>
#principal
</td></tr>
<tr><td>diagnosis[0].type[0].coding[0].system</td><td>
"http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBClaimDiagnosisType"
</td></tr>
<tr><td>diagnosis[0].sequence</td><td>
1
</td></tr>
<tr><td>supportingInfo[0].category.coding[0].code</td><td>
#billingnetworkcontractingstatus
</td></tr>
<tr><td>supportingInfo[0].category.coding[0].system</td><td>
"http://hl7.org/fhir/us/carin-bb/CodeSystem/ClaimInformationCategoryCS"
</td></tr>
<tr><td>supportingInfo[0].code.coding[0].code</td><td>
#contracted
</td></tr>
<tr><td>supportingInfo[0].code.coding[0].system</td><td>
"http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBAdjudicationCS"
</td></tr>
<tr><td>supportingInfo[0].sequence</td><td>
1
</td></tr>
</table>