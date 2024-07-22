Instance: BB-EOBPharmacy1-nonfinancial
InstanceOf: C4BBExplanationOfBenefitPharmacyBasis
Description: "EOB Pharmacy Example 1 - Nonfinancial"
Usage: #example
//* id = "1234-234-1243-12345678901-20190101-20191031"
* meta.profile[+] = Canonical(C4BBExplanationOfBenefitPharmacyBasis|2.1.0-snapshot1)
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* status = #active
* identifier[uniqueclaimid].type = $C4BBIdentifierTypeCS#uc
* identifier[uniqueclaimid].value = "AW123412341234123412341234123412"
* identifier[uniqueclaimid].system = "https://www.xxxplan.com/fhir/EOBIdentifier"
* type = $HL7ClaimTypeCS#pharmacy
* type.text = "Pharmacy"
* use = #claim
* created = "2019-07-02T00:00:00+00:00"
* insurer = Reference(Payer1)
* insurer.display = "XXX Health Plan"
* patient = Reference(Patient2)
* billablePeriod.start = "2019-10-30"
* billablePeriod.end = "2019-10-31"
* provider = Reference(ProviderOrganization1)
* provider.display = "XXX Health Plan"
* outcome = #partial
* insurance[0].focal = true
* insurance[0].coverage[0] = Reference(Coverage3)
* adjudication[billingnetworkstatus].category = C4BBAdjudicationDiscriminator#billingnetworkstatus
* adjudication[billingnetworkstatus].reason = C4BBPayerAdjudicationStatus#innetwork
* adjudication[benefitpaymentstatus].category = C4BBAdjudicationDiscriminator#benefitpaymentstatus
* adjudication[benefitpaymentstatus].reason = C4BBPayerAdjudicationStatus#innetwork


//* adjudication[benefitpaymentstatus].category = C4BBAdjudication#other
* item[0].productOrService = $FDANationalDrugCode#0777-3105-02 "Prozac, 100 CAPSULE in 1 BOTTLE (0777-3105-02) (package)"
* item[0].sequence = 1
* item[0].servicedDate = "2019-07-02"

* supportingInfo[brandgenericindicator].category = C4BBSupportingInfoType#brandgenericindicator
* supportingInfo[brandgenericindicator].sequence = 2
* supportingInfo[brandgenericindicator].code = $NCPDPBrandGenericIndicator#2
* supportingInfo[rxoriginCode].category = C4BBSupportingInfoType#rxorigincode
* supportingInfo[rxoriginCode].code = $NCPDPPrescriptionOriginCode#1
* supportingInfo[rxoriginCode].sequence = 3
* supportingInfo[refillNum].category = C4BBSupportingInfoType#refillnum
* supportingInfo[refillNum].valueQuantity.value = 0.0
* supportingInfo[refillNum].sequence = 4

* supportingInfo[refillsAuthorized].category = C4BBSupportingInfoType#refillsauthorized
* supportingInfo[refillsAuthorized].valueQuantity.value = 0.0
* supportingInfo[refillsAuthorized].sequence = 5

* supportingInfo[dawcode].category = C4BBSupportingInfoType#dawcode
* supportingInfo[dawcode].code = $NCPDPDispensedAsWrittenOrProductSelectionCode#7
* supportingInfo[dawcode].sequence = 6
* supportingInfo[clmrecvddate].category = C4BBSupportingInfoType#clmrecvddate
* supportingInfo[clmrecvddate].timingDate = 2019-10-31
* supportingInfo[clmrecvddate].sequence = 7
* supportingInfo[dayssupply].category = C4BBSupportingInfoType#dayssupply
* supportingInfo[dayssupply].sequence = 8
* supportingInfo[dayssupply].valueQuantity.value =  30.0
* supportingInfo[compoundcode].category = C4BBSupportingInfoType#compoundcode
* supportingInfo[compoundcode].code = $NCPDPCompoundCode#Dummy
* supportingInfo[compoundcode].sequence = 9
