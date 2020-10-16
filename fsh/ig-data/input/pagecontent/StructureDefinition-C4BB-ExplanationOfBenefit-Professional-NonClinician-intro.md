<h4 class="x_MsoNormal">Notes on Fields</h4>
<ul>
<li>.diagnosis.sequence rule:&nbsp; diagnosis.sequence values do not necessarily indiate any order in which the diagnosis was reported or identified.&nbsp; client app implementations should not assign any significance to the sequence values.&nbsp; client app implementations should use the values of diagnosis.type to identify primary, secondary, etc.&nbsp;</li>
<li>.diagnosis.sequence: &nbsp;sequentially numbers all diagnoses at the header-level. Item-level are referenced from an item using this sequence number</li>
<li>.supportingInfo[servicefacility]:&nbsp; Service Facility Location information conveys the name, full address and identifier of the facility where services were rendered when that is different from the Billing/Rendering Provider.</li>
<li>.item.&nbsp;diagnosisSequence:&nbsp; References the sequence number of the associated diagnosis entered above</li>
<li>item.productOrService:&nbsp; CPT / HCPCS procedure codes are defined as CodeableConcepts</li>
<li>item.adjudication[inoutnetwork]:&nbsp;&nbsp;in network or out of network payment status for the line</li>
<li>.item.adjudication.amount: &nbsp;Eligible amount = submitted amount - the noncovered amount - discount.&nbsp; The subscriber pays the member liability = deductible + coinsurance + copay + noncovered.&nbsp; (part of the member liability may have already been paid to the provider as paidbypatient). The eligible amount - the member liability is the payment amount to the provider (paidtoprovider) or the subscriber (paidtopatient)</li>
<li>.item.adjudication[inoutnetwork]:&nbsp; place in network or out of network payment status here</li>
<li>.total.amount:&nbsp; Eligible amount = submitted amount - the noncovered amount - discount.&nbsp; The subscriber pays the member liability = deductible + coinsurance + copay + noncovered.&nbsp; (part of the member liability may have already been paid to the provider as paidbypatient). The eligible amount - the member liability is the payment amount to the provider (paidtoprovider) or the subscriber (paidtopatient)</li>
</ul>
<p>&nbsp;</p>
<p>&nbsp;</p>