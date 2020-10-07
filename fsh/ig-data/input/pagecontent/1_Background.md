<h3 id="the-carin-alliance">The CARIN Alliance</h3>
<p>The <a href="https://www.carinalliance.com/our-work/health-plan/">CARIN Alliance Health Plan Workgroup</a> was organized to develop a FHIR-based API that could be implemented by a consumer-facing application. The CARIN for Blue Button Framework was designed to answer the challenge for health plans to &lsquo;meet or exceed&rsquo; the <a href="https://bluebutton.cms.gov/">CMS Blue Button 2.0</a> capabilities. The CMS Blue Button 2.0 project provides over 53 million Medicare fee-for-service beneficiaries access to their electronic claims information. The goal of the CARIN Alliance Health Plan Workgroup is to develop an agreed upon set of data fields to exchange with consumers and a FHIR-based implementation guide for health plans to use to implement the API. <strong>Work-in-progress:Add some text about FHIR Accelerators here. </strong> The CARIN health plan workgroup was organized to develop a FHIR‐based API that could be implemented by a consumer‐facing application.</p>
<h3>Consumer-directed exchange</h3>
<p>Consumer-directed exchange occurs when a consumer or an individual authorized by a Payer to access another person&rsquo;s information, invokes their <a href="https://www.govregs.com/regulations/title45_chapterA_part164_subpartE_section164.524">HIPAA Individual Right of Access (45 CFR 164.524) </a> and requests their digital health information from a HIPAA covered entity (CE) via an application or other third-party data steward.</p>
<h3>CMS Patient Access and Interoperability Rules</h3>
<p>Data from health plans is not currently available to a consumer through an open API framework and therefore is not accessible by third party applications authorized by the consumer. The Centers for Medicare &amp; Medicaid Services (CMS) finalized on May 1st, 2020,its <a href="https://www.federalregister.gov/documents/2020/05/01/2020-05050/medicare-and-medicaid-programs-patient-protection-and-affordable-care-act-interoperability-and"> Interoperability and Patient Access Final Rule</a> on patient access to health data. Under the final rule, Medicare Advantage (MA) plans, state Medicaid and Children&rsquo;s Health Insurance Program (CHIP) agencies, Medicaid and CHIP managed care plans, and qualified health plan (QHP) issuers in the federally-facilitated exchanges (FFEs) must meet certain requirements regarding patient access to their health care information, including requirements related to application programming interfaces (APIs). CMS provides <a href="https://www.cms.gov/Regulations-and-Guidance/Guidance/Interoperability/index">Implementation Guidance</a> for the following types of information for dissemination:</p>
<p>Patient Access API:</p>
<ul>
<li>Claims &amp; Encounter Data</li>
<li>Clinical Data</li>
<li>Plan Coverage and Formularies</li>
</ul>
<p>The Consumer Directed Payer Data Exchange Implementation Guide was defined by the CARIN Alliance to meet CMS requirements to provide Claims and Encounter data. <br /><br />Provisioning Clinical Data is defined by the DaVinci Payer Data Exchange (PDex) and US Core Implementation Guides. <br /><br />Provisioning Plan Coverage and Formularies is defined by the DaVinci Payer Data Exchange US Drug Formulary Implementation Guide. <br /><br />The implementation date is January 1, 2021.</p>
<h3 id="patient-protection">Patient Protection</h3>
<h4>Health Care Payers and HIPAA</h4>
<h4>Patients Sharing Their Health Information With Third Parties</h4>
<p>The CMS final rule states: &ldquo;An MA organization must provide in an easily accessible location on its public website and through other appropriate mechanisms through which it ordinarily communicates with current and former enrollees seeking to access their health information held by the MA organization, educational resources in non-technical, simple and easy-to-understand language." Therefore, providing member educational materials is outside the scope of this IG and the responsibility of each payer.&nbsp; Although it&rsquo;s outside the scope of the IG, the CARIN Alliance is encouraging payers to have applications self-attest to the CARIN Code of Conduct to ensure there is consistency in how apps are getting informed, proactive consent from members and consistency in how apps use, share, and store a member&rsquo;s health information.</p>
<p>The <a href="https://www.cms.gov/files/document/patient-privacy-and-security-resources.pdf">CMS Patient Privacy and Security</a> resources directs that payers must educate patients about sharing their health information with third parties.</p>
<ul>
<li>Among the patient disclosures, plans are encouraged to provide information on:
<ul>
<li>How an individual can safeguard their online privacy; and</li>
<li>Factors to consider when choosing a consumer-facing application.</li>
<li>How a consumer can submit complaints to the Office of Civil Rights (OCR) or the Federal Trade Commission (FTC);</li>
<li>CMS cites the CARIN Alliance Code of Conduct and the ONC Model Privacy Notice as best practices to meet these needs.</li>
</ul>
</li>
<li>Payers may not limit access to information for a patient through an application that fails to voluntarily attest to specific statements or if an enrollee chooses to disregard warnings about data use.</li>
</ul>
<p>The implementation date is January 1, 2021. Patient education is out of scope for this Implementation Guide.</p>
<h3>CARIN Alliance Code of Conduct</h3>
<h3 id="relation-to-other-IGs">CARIN IG for Blue Button® Relation to other IGs</h3>
<h4>US Core</h4>
<p>CARIN BB uses the ExplanationOfBenefit Resource as its primary resource. Reference Resources are Coverage, Patient, Practitioner, PractitionerRole, Organization and Location. Since the ExplanationOfBenefit and Coverage profiles are not included in the US Core, there is no alignment requirement for these profiles. Patient, Practitioner, PractitionerRole, Organization and Location are US Core Profiles. Since these are supporting / reference profiles (rather than a focus profile) in CARIN BB, the alignment with the US Core is on the content of these profiles, but not on the search parameters. The following diagram provides a high-level view of the relationships between resources used in this IG. It does not necessarily reflect all of the relationships/references between resources. <img style="width: 100%; float: none; align: middle;" src="CARINBBResources.png" /></p>
<h4>SMART Application Launch</h4>
<p>The Consumer-Directed Payer Data Exchange IG requires the use of the SMART App Launch Framework&rsquo;s standalone launch sequence. Data holders SHALL support the use of the launch/Patient scope. The use of the launch/Patient scope will make it clear to an application the patient context that must be used for the duration of the connection. The authorization sequence supports the ability for data holders to provide a patient selection widget that can be used to enable delegated access to member information. Details about the SMART App Launch Framework and standalone launch sequence can be found here. The SMART App IG provides guidance on how to configure OAuth 2.0 servers to mediate access based on a set of rules configured to enforce institutional policy, which may include requesting end-user authorization. The SMART App IG does not dictate the institutional policies that are implemented in the authorization server. Security mechanisms, such as those mandated by HIPAA in the US (end-user authentication, session time-out, security auditing, and accounting of disclosures) are outside the scope of this profile. The SMART App IG also provides guidance on how to handle authentication. If the app needs to authenticate the identity of the end-user, it should include two OpenID Connect scopes: openid and fhirUser. When these scopes are requested, and the request is granted, the app will receive an id_token along with the access token. For details, see the description <a href="http://hl7.org/fhir/smart-app-launch/scopes-and-launch-context/index.html">here</a>.</p>
<h4>PDex</h4>
<p>There are two parallel paths pursued by the CARIN Alliance and the Da Vinci Project related to providing health plan data to various stakeholders.&nbsp; CARIN Alliance approaches the issue primarily from a financial (claims) perspective, with some limited associated clinical data. Da Vinci Project approaches the issue primarily from a clinical perspective and leaves most financial data out of scope</p>
<p>The CARIN Alliance focused on replicating the CMS Blue Button 2.0 solution directed at providing beneficiaries access to claims information for Medicare Fee For Service (FFS) in the form of a FHIR based ExplanationOfBenefits (EOB). The CARIN Alliance Consumer-Directed Payer Data Exchange (CARIN IG for Blue Button&reg;) solution was intended to provide the same information based on commercial payer databases, at a least for Medicare Advantage products. The CMS Interoperability and Patient Access Final Rule expanded the scope of a Blue Button 2.0 equivalent to include not just Medicare Advantage but also Medicaid HMO, CHIP HMO and QHP's in the federal marketplace.</p>
<p>The Da Vinci Payer Data Exchange (PDex) solution started with the goal of providing payer sourced information to providers in the form of FHIR resources consistent with US Core profiles for FHIR Release 4 (R4). The CMS Interoperability Final Rule directs covered payers (as noted above) to make encounter information and clinical data available to members through an API defined by the ONC 21<sup>st</sup> Century Cures Act Final Rule for, at a minimum, information defined in USCDI release 1.1. Since PDex was already focused on making the same information available through a compliant API, Da Vinci expanded the scope of PDex to include not only payer to provider exchange at the request of the provider but also payer to third party application exchange at the request of the member.</p>
<p>In addition, the CMS Interoperability Final Rule requires a covered plan, at the member&rsquo;s request, to make their information (as defined by USCDI release 1.1, at a minimum) available to any other plan as directed by the member. This ability must exist for up to 5 years after the member leaves the plan. Da Vinci expanded the scope of the PDex Implementation Guide to support this exchange.</p>
<p>At this point we have two solutions that provide an overlapping but different set of information for the members of a health plan. The first is the CARIN IG for Blue Button&reg; which is focused on providing claims information, including the adjudication information, in the form of a FHIR EOB.&nbsp; The second solution is to provide all payer information related to the clinical condition and care of the patient using US Core profiles on FHIR R4 resources. In the latter case, information coming from claims is represented as USCDI V1.1 information and includes, at a minimum: encounters, providers, organizations, locations, dates of service, diagnoses (conditions), procedures and observations. This information would also include clinical information from sources other than claims maintained by the payer, such as:</p>
<ul>
<li>laboratory results received via HL7 V2 ORU transactions,</li>
<li>clinical data from HL7 consolidated CDAs,</li>
<li>information derived from HL7 V2 ADT transactions,</li>
<li>information received or extracted from immunization registries,</li>
<li>information related to medication administration from pharmacy benefit managers in pharmacy networks,</li>
<li>FHIR resources, and any other source of clinical information related to the member.</li>
</ul>
<p>Unlike the US Core 3.1.0 Implementation Guide, PDex provides guidance to payers on how to make the following information available via the Patient Access API:</p>
<ul>
<li>provenance appropriate for payer data exchange (USCDI/US Core profiles are not sufficient)</li>
<li>dispensed medications (not covered in US Core)</li>
<li>medical devices that are not implantable devices (not covered in US Core)</li>
<li>CPCDS data set to US Core and PDex profiles to satisfy the requirement for exchange of USCDI V1.1 information</li>
<li>clinical data received by payers (e.g. laboratory results) from multiple sources (e.g. claims, HL7 V2, CDA) to the appropriate FHIR US Core and PDex profile data elements</li>
</ul>
<p><img style="width: 100%; float: none; align: middle;" src="PDexVsCARINBB.png" /></p>
<h4>RTPBC</h4>
<p>Using the RTPBC (Real Time Pharmacy Benefit Check), a patient can learn the cost and insurance coverage related to medications they&rsquo;ve been prescribed. A person would typically use the RTPBC prior to the dispensing of the prescription and the filing of the claim. CARIN BB provides the capability to access how pharmacy (and medical) benefits have been applied by the payer as a result of a claim filed by the pharmacy.</p>
<h3 id="guide-overview">Guide Overview</h3>
<h4>How to Read This Guide</h4>
<h4>Actors</h4>
<p>The following actors are part of the CARIN BB IG:</p>
<ul>
<li>CARIN BB Requestor: An application that initiates a data access request to retrieve patient data. This can be thought of as the client in a client-server interaction.</li>
<li>CARIN BB Responder: A product that responds to the data access request providing patient data. This can be thought of as the server in a client-server interaction.</li>
</ul>