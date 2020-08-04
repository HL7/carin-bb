
<h3>The CARIN Alliance</h3>
The <a href="https://www.carinalliance.com/our-work/health-plan/">CARIN Alliance Health Plan Workgroup</a> was organized to develop a FHIR-based API that could be implemented by a consumer-facing application.

The CARIN for Blue Button Framework was designed to answer the challenge for health plans to ‘meet or exceed’ the <a href="https://bluebutton.cms.gov/">CMS Blue Button 2.0</a> capabilities. The CMS Blue Button 2.0 project provides over 53 million Medicare fee-for-service beneficiaries access to their electronic claims information.

The goal of the CARIN Alliance Health Plan Workgroup is to develop an agreed upon set of data fields to exchange with consumers and a FHIR-based implementation guide for health plans to use to implement the API.

<b>Work-in-progress:Add some text about FHIR Accelerators here. </b>  

The CARIN health plan workgroup was organized to develop a FHIR‐based API that could be implemented by a consumer‐facing application.
<h3>Consumer-directed exchange</h3>
Consumer-directed exchange occurs when a consumer or an individual authorized by a Payer to access another person’s information, invokes their <a href="https://www.govregs.com/regulations/title45_chapterA_part164_subpartE_section164.524">HIPAA Individual Right of Access (45 CFR 164.524) </a> and requests their digital health information from a HIPAA covered entity (CE) via an application or other third-party data steward.

<h3>CMS Patient Access and Interoperability Rules</h3>
Although the following is out of scope for this Implementation Guide, it is provided as background.  

Data from health plans is not currently available to a consumer through an open API framework and therefore is not accessible by third party applications authorized by the consumer.

The Centers for Medicare & Medicaid Services (CMS) released March 9, 2020 and finalized May 1, 2020 On May 1st, 2020, its <a href="https://www.federalregister.gov/documents/2020/05/01/2020-05050/medicare-and-medicaid-programs-patient-protection-and-affordable-care-act-interoperability-and">
Interoperability and Patient Access Final Rule</a> on patient access to health data. Under the final rule, Medicare Advantage (MA) plans, state Medicaid and Children’s Health Insurance Program (CHIP) agencies, Medicaid and CHIP managed care plans, and qualified health plan (QHP) issuers in the federally-facilitated exchanges (FFEs) must meet certain requirements regarding patient access to their health care information, including requirements related to application programming interfaces (APIs).  

The proposed rule includes four types of information for dissemination:
<ul>
<li>Adjudicated claims, appealed payment decisions, provider remittances, enrollee cost sharing within (1) business day after the claim is processed</li>
<li>Standardized encounter data within (1) business day</li>
<li>Provider directory data, including names, addresses, phone numbers, and specialties no later than 30 days after changes are made</li>
<li>Clinical data, including lab results, if available no later than (1) business day after received</li>
</ul>

The CARIN Alliance defined the Consumer Directed Payer Data Exchange (CARIN BB) Implementation Guide to meet CMS requirements to provide adjudicated claims and encounter data.  Provisioning provider directory data and clinical data are defined by the <a href="http://hl7.org/fhir/us/davinci-pdex-plan-net/">DaVinci Payer Network (PDex Plan Net)</a> and <a href="http://hl7.org/fhir/us/davinci-pdex-plan-net/">ayer Data Exchange (PDex) Implementation Guides.  

The implementation date is January 1, 2021.

<h3>Patient Protection</h3>
<h4>Health Care Payers and HIPAA </h4>
<h4>Patients Sharing Their Health Information With Third Parties</h4>
Payers must educate patients about sharing their health information with third parties
<ul>
<li>Among the patient disclosures, plans are encouraged to provide information on:</li>
<ul>
<li>How an individual can safeguard their online privacy; and </li>
<li>Factors to consider when choosing a consumer-facing application.</li>
<li>How a consumer can submit complaints to the Office of Civil Rights (OCR) or the Federal Trade Commission (FTC); </li>
<li>CMS cites the CARIN Alliance Code of Conduct and the ONC Model Privacy Notice as best practices to meet these needs.</li>
</ul>
<li>Payers may not limit access to information for a patient through an application that fails to voluntarily attest to specific statements or if an enrollee chooses to disregard warnings about data use.</li>
</ul>
The implementation date is January 1, 2021.  Patient education is out of scope for this Implementation Guide.  
<h3>CARIN Alliance Code of Conduct</h3>
<h3>CARIN BB IG Relation to other IGs</h3>
<h4>US Core</h4>
CARIN BB uses the ExplanationOfBenefit Resource as its primary resource.  Reference Resources are Coverage, Patient, Practitioner, PractitionerRole, Organization and Location.

Since the ExplanationOfBenefit and Coverage profiles are not included in the US Core, there is no alignment requirement for these profiles.  Patient, Practitioner, PractitionerRole, Organization and Location are US Core Profiles. Since these are supporting / reference profiles (rather than a focus profile) in CARIN BB, the alignment with the US Core is on the content of these profiles, but not on the search parameters. 

The following diagram provides a high-level view of the relationships between resources used in this IG. It does not necessarily reflect all of the relationships/references between resources.
<img style="width:100%;height:auto;float:none;align:middle;" src="CARINBBResources.png"/>

<h4>SMART Application Launch</h4>

The Consumer-Directed Payer Data Exchange IG requires the use of the SMART App Launch Framework’s standalone launch sequence.  Data holders SHALL support the use of the launch/Patient scope. The use of the launch/Patient scope will make it clear to an application the patient context that must be used for the duration of the connection. The authorization sequence supports the ability for data holders to provide a patient selection widget that can be used to enable delegated access to member information. Details about the SMART App Launch Framework and standalone launch sequence can be found <a href="http://www.hl7.org/fhir/smart-app-launch/#standalone-launch-sequence">here</a>.

The SMART App IG provides guidance on how to configure OAuth 2.0 servers to mediate access based on a set of rules configured to enforce institutional policy, which may include requesting end-user authorization. The SMART App IG does not dictate the institutional policies that are implemented in the authorization server. Security mechanisms, such as those mandated by HIPAA in the US (end-user authentication, session time-out, security auditing, and accounting of disclosures) are outside the scope of this profile.

The SMART App IG also provides guidance on how to handle authentication. If the app needs to authenticate the identity of the end-user, it should include two OpenID Connect scopes: openid and fhirUser. When these scopes are requested, and the request is granted, the app will receive an id_token along with the access token. For details, see the description <a href ="http://hl7.org/fhir/smart-app-launch/scopes-and-launch-context/index.html">here</a>. 

<h4>PDEX</h4>
CMS Guidance defines two sets of data be made available by payers in the Patient Access API: Claims and Encounter Data and Clinical data. They provide links to specific implementations guides for the Patient Access API to provide guidance. Use of these implementation guides is not required, but if used these guides will provide information payers can use to meet the requirements of the policies being finalized.
This IG defines how Claims and Encounter Data are to be provided; the DaVinci <a href="http://build.fhir.org/ig/HL7/davinci-epdx/">PDEX</a> (Payer Data Exchange) and <a href="http://hl7.org/fhir/us/core/STU3/index.html">US Core</a> Implementation Guides define how Clinical Data is to be provided.
<h4>RTPBC</h4>
Using the <a href="http://build.fhir.org/ig/HL7/carin-rtpbc">RTPBC</a> (Real Time Pharmacy Benefit Check), a patient can learn the cost and insurance coverage related to medications they’ve been prescribed.  A person would typically use the RTPBC prior to the dispensing of the prescription and the filing of the claim.  CARIIN BB provides the capability to access how pharmacy (and medical) benefits have been applied by the payer as a result of a claim filed by the pharmacy.  

<h3>Guide Overview</h3>
<h4>How to Read This Guide</h4>
<h4>Actors</h4>
The following actors are part of the CARIN BB IG:
<ul>
<li>CARIN BB Requestor: An application that initiates a data access request to
 retrieve patient data. This can be thought of as the client in a client-server
 interaction.</li>
 <li>CARIN BB Responder: A product that responds to the data access request
 providing patient data. This can be thought of as the server in a client-server
 interaction.</li>
 </ul>
<h4>Conformance Requirementse</h4>
