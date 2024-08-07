
<a name="considerations-for-improving-interoperability"></a>

### Considerations for Improving Interoperability
Many of the codes used in this guide are proprietary with [licensing requirements](Terminology_Licensure.html). While it is recommended that consumer apps acquire the necessary licenses to show descriptions for these codes, not all app developers may be in a position to do so. Because of this, payers **MAY** choose to provide a concept text `[CodeableConcept].text` or the coding display `[CodeableConcept].coding.display. It is the responsibility of the payer to make sure that the descriptions provided are correct.

If the 'display' element is populated, the string used in `display` **SHALL** be one of the display strings defined for that code by the code system (code systems may define multiple display strings for a single code). If the code description available is not known to be an exact match of a display string defined by the code system, the  `[CodeableConcept].text` should be used in place of the `[CodeableConcept].coding.display`.

Payers **MAY** choose to also provide resource level text to enable consumers apps to render resources in a manner that the payer would like to have the data presented. The `[Resource].text` is a Narrative datatype that has a `div` element that is an xhtml datatype. This element **MAY** be used to provide an easily renderable version of the resource that is meant for human viewing. This capability may be of particular interest to payers for ExplanationOfBenefit resources and can be used to enable the rendering of the Explanation of Benefit data in a fashion similar to their mailed or portal accessible Explanation of Benefit documents.

Explanation of Benefit information can be complex. Many of the data elements in this guide go beyond what is commonly included in printed Explanation of Benefit documents today. Payers may also provide additional data elements beyond what is in this guide. As part of their API documentation, Payers **SHOULD** include descriptions of the data elements they provide, particularly for data elements not covered in this guide, and may consider providing a display mapping like can be found in the [Example Printed Explanation Of Benefit Mapping](#example-printed-eob-mapping) section of this implementation guide.

<a name="example-printed-eob-mapping"></a>

### Printed Example Explanation Of Benefit Mapping

Explanation Of Benefits documents that are either mailed in a physical form or downloaded through a member portal vary widely from payer to payer. There is no such thing as a standardized Explanation Of Benefits document format. There are some common elements across many of these documents, such as how much was charged by a provider and how much is covered by the insurance, but the manner in which this data is presented is determined by the individual payer.

The information found in payer Explanation Of Benefits documents represent only a subset of the data that may be available through the use of the profiles defined in this implementation guide. Printed Explanation of Benefits documents usually present a member friendly overview of services, charges, cost sharing, and benefits and do not usually contain the claim details or other more detailed codified and discrete data made available through this implementation guide's profiles.

Below is an example generic Explanation Of Benefits document that represents some of the information one might find from payers. This example is not exhaustive, but does present some common information found on these documents. As shown in this example document, payers may include more than one claim on a single explanation of benefit document. The ExplanationOfBenefit profiles in this guide address a single claim. In this example there would be two ExplanationOfBenefit resources, one for each claim, that both relate to this one "printed" document. Below is an example mapping from these informational elements to CPCDS data elements and specific resource data element paths. This mapping can be used by app developers as guidance to understanding how information found on EOB documents relate to the profiles in this guide. This mapping can also be used by payers as guidance for how they could further develop their API documentation to enable client apps connecting to their API.

<p><img style="float: none; align: middle;" src="EOBRender.png"/></p>

<table border="1">
<colgroup>
<col style="background-color:#ED7D32;text-align:center"/>
<col/>
<col/>
</colgroup>
<thead>
<tr style="background-color:#4471C4;color:white"><th style="text-align:center;font-weight:bold" valign="middle">CPCDS Element ID</th><th style="text-align:center;font-weight:bold" valign="middle">CPCDS Element Description</th><th style="text-align:center;font-weight:bold" valign="middle">Resource/Profile Paths</th></tr>
</thead>
<tbody>
<tr><td style="text-align:center;font-weight:bold;color:white">175</td><td>Claim Payer Name</td><td>ExplanationOfBenefit.insurer.reference-&gt; Organization.name</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">179</td><td>Adjudication Date</td><td>ExplanationOfBenefit.created</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">130</td><td>Patient Name</td><td>ExplanationOfBenefit.patient.reference-&gt;Patient.name</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">1</td><td>Member Id</td><td>ExplanationOfBenefit.patient.reference-&gt;Patient.identifier:memberid</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">132</td><td>Subscriber Id</td><td>ExplanationOfBenefit.insurance.coverage.reference-&gt;Coverage.subscriberId</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">135</td><td>Group Name</td><td>ExplanationOfBenefit.insurance.coverage.reference-&gt;Coverage.class:group.name</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">134</td><td>Group Id</td><td>ExplanationOfBenefit.insurance.coverage.reference-&gt;Coverage.class:group.value</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">155</td><td>Plan Name</td><td>ExplanationOfBenefit.insurance.coverage.reference-&gt;Coverage.class:plan.name</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">154</td><td>Plan Id</td><td>ExplanationOfBenefit.insurance.coverage.reference-&gt;Coverage.class:plan.value</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">177</td><td>Statement From Date</td><td>ExplanationOfBenefit.billablePeriod.start</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">178</td><td>Statement Through Date</td><td>ExplanationOfBenefit.billablePeriod.end</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">35</td><td>Payer Claim Unique Identifier</td><td>ExplanationOfBenefit.identifier[type.coding.code = ‘uc’].value</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">167</td><td>Claim Billing Provider Name</td><td>ExplanationOfBenefit.provider.reference-&gt;Organization.name<br/> &nbsp; <i>or</i><br/>Practitioner.name</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">101</td><td>Claim Billing Provider Networking Status (If claim is not adjudicated in alignment with network status, an process note is typically provided)</td><td>ExplanationOfBenefit.adjudication<br/> &nbsp; :adjudicationamounttype[category.coding.code=billingnetworkcontractingstatus]<br/> &nbsp; .reason</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">94</td><td>Claim Billing Provider NPI</td><td>ExplanationOfBenefit.provider.reference-&gt;Organization.identifier[NPI]<br/> &nbsp; <i>or</i><br/>Practitioner.identifier[NPI]</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">121</td><td>Claim Payee</td><td>ExplanationOfBenefit.payee.party.reference-&gt;Organization.name<br/> &nbsp; <i>or</i><br/>Practitioner.name<br/> &nbsp; <i>or</i><br/>Patient.name</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">36</td><td>Line Number</td><td>ExplanationOfBenefit.item.sequence</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">90</td><td>Service (From Date) (Outpatient &amp; Pharmacy)</td><td>ExplanationOfBenefit.item.ServicedDate<br/> &nbsp; <i>or</i><br/>ExplanationOfBenefit.item.ServicedPeriod.start</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">118</td><td>Service From Date (Professional &amp; Oral EOB)</td><td>ExplanationOfBenefit.item.ServicedDate<br/> &nbsp; <i>or</i><br/>ExplanationOfBenefit.item.ServicedPeriod.start</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">86</td><td>Revenue Center Code (IG requires codes only, a display/text may not be provided)</td><td>ExplanationOfBenefit.item.revenue</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">20a</td><td>Line Submitted Amount</td><td>ExplanationOfBenefit.item.adjudication:adjudicationamounttype<br/> &nbsp; [category.coding.code=’submitted’].amount</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">20b</td><td>Line Eligible Amount</td><td>ExplanationOfBenefit.item.adjudication:adjudicationamounttype<br/> &nbsp; [category.coding.code=’eligible’].amount</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">20c</td><td>Line Discount Amount</td><td>ExplanationOfBenefit.item.adjudication:adjudicationamounttype<br/> &nbsp; [category.coding.code=’discount’].amount</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">20d</td><td>Line Copay Amount or Line Co-insurance Amount</td><td>ExplanationOfBenefit.item.adjudication:adjudicationamounttype<br/> &nbsp; [category.coding.code=’copay’].amount<br/> &nbsp; <i>or</i><br/>ExplanationOfBenefit.item.adjudication:adjudicationamounttype<br/> &nbsp; [category.coding.code=’coinsurance’].amount</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">20e</td><td>Line Patient Deductible</td><td>ExplanationOfBenefit.item.adjudication:adjudicationamounttype<br/> &nbsp; [category.coding.code=’deductible’].amount</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">20f</td><td>Sum of<br/> &nbsp; - Line Amount Paid to Provider<br/> &nbsp; - Line Member Reimbursement</td><td>ExplanationOfBenefit.item.adjudication:adjudicationamounttype<br/> &nbsp; [category.coding.code=’paidtoprovider’].amount<br/> &nbsp; +<br/>ExplanationOfBenefit.item.adjudication:adjudicationamounttype<br/> &nbsp; [category.coding.code=’paidtopatient’].amount</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">20g</td><td>Line Member Liability</td><td>ExplanationOfBenefit.item.adjudication:adjudicationamounttype<br/> &nbsp; [category.coding.code=’memberliability’].amount</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">148a</td><td>Claim Submitted Amount</td><td>ExplanationOfBenefit.adjudication:adjudicationamounttype<br/> &nbsp; [category.coding.code=’submitted’].amount</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">148b</td><td>Claim Eligible Amount</td><td>ExplanationOfBenefit.adjudication:adjudicationamounttype<br/> &nbsp; [category.coding.code=’eligible’].amount</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">148c</td><td>Claim Discount Amount</td><td>ExplanationOfBenefit.adjudication:adjudicationamounttype<br/> &nbsp; [category.coding.code=’discount’].amount</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">148d</td><td>Copay Amount or Co-insurance Liability Amount</td><td>ExplanationOfBenefit.adjudication:adjudicationamounttype<br/> &nbsp; [category.coding.code=’copay’].amount<br/> &nbsp; <i>or</i><br/>ExplanationOfBenefit.adjudication:adjudicationamounttype<br/> &nbsp; [category.coding.code=’coinsurance’].amount</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">148e</td><td>Member Paid Deductible</td><td>ExplanationOfBenefit.adjudication:adjudicationamounttype<br/> &nbsp; [category.coding.code=’deductible’].amount</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">148f</td><td>Sum of<br/> &nbsp; - Claim Amount Paid to Provider<br/> &nbsp; - Member Reimbursement</td><td>ExplanationOfBenefit.adjudication:adjudicationamounttype<br/> &nbsp; [category.coding.code=’paidtoprovider’].amount<br/> &nbsp; +<br/>ExplanationOfBenefit.adjudication:adjudicationamounttype<br/> &nbsp; [category.coding.code=’paidtopatient’].amount</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">148g</td><td>Member Liability</td><td>ExplanationOfBenefit.adjudication:adjudicationamounttype<br/> &nbsp; [category.coding.code=’memberliability’].amount</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">92</td><td>Line Payment Denial Code (In EOB Documents, this is a payer defined code. These codes are not included in the IG. Instead, this IG uses <a href="ValueSet-X12ClaimAdjustmentReasonCodesCMSRemittanceAdviceRemarkCodes.html">CARC and RARC codes</a>. Payers may include their own codes and descriptions in process note – 181)</td><td>ExplanationOfBenefit.item.adjudication:denialreason.reason</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">40</td><td>Procedure Code (IG requires codes only, display/text may not be provided)</td><td>ExplanationOfBenefit.item.productOrService</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">181</td><td>Payment Member Explanation</td><td>ExplanationOfBenefit.processNote.text[number = ExplanationOfBenefit.item.noteNumber]</td></tr>
<tr><td style="text-align:center;font-weight:bold;color:white">*</td><td>Remark codes are payer specific and not defined by this IG. These remarks are generally included in the process note, which can be linked by the noteNumber</td><td>ExplanationOfBenefit.item.noteNumber</td></tr>
</tbody>
</table>

### U.S. Core Data for Interoperability and 2015 Edition Common Clinical Data Set

<p>The US Core Profiles were originally designed to meet the 2015 Edition certification criterion for Patient Selection 170.315(g)(7), and Application Access - Data Category Request 170.315(g)(8). They were created for each item in the&nbsp;<a href="https://www.healthit.gov/sites/default/files/ccds_reference_document_v1_1.pdf">2015 Edition Common Clinical Data Set (CCDS).&nbsp;</a>The 3.1.1 version of the US Core Profiles IG includes requirements from a previous ONC rule including U.S. Core Data for Interoperability(USCDI) v1 and the more recent 6.1.0 version of the US Core Profiles IG includes requirements from a more recent ONC rule including USCDI v3</a></p>
