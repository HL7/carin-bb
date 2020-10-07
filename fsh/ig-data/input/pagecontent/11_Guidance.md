<h3 id="actors">Actors</h3>
<p>The following actors are part of the CARIN IG for Blue Button®:</p>
<ul>
<ul>
<li>CARIN IG for Blue Button® Requestor: An application that initiates a data access request to retrieve patient data. This can be thought of as the client in a client-server interaction.</li>
<li>CARIN IG for Blue Button® Responder: A product that responds to the data access request providing patient data. This can be thought of as the server in a client-server interaction.</li>
</ul>
</ul>
<h3 id="conformance-verbs">Conformance Verbs</h3>
<p>The conformance verbs - <strong>SHALL, SHOULD, MAY</strong> - used in this guide are defined in <a style="font-size: 14px;" href="http://hl7.org/fhir/R4/conformance-rules.html">FHIR Conformance Rules.</a></p>
<h3 id="must-support">Must Support</h3>
<p>For profiles defined in other IGs, the meaning of Must Support is established in the defining IG. Note that the Must Support requirements for this IG are modeled after the US Core implementation guide, with the requirements for CARIN Server APIs modeled on those for US Core Responders, and the requirements for CARIN Consumer Apps modeled on those for US Core Requestors.&nbsp; When querying and reading CARIN IG for Blue Button® Profiles, *Must Support* on any profile data element <strong>SHALL</strong> be interpreted as follows:&nbsp;</p>
<ul>
<li>Health Plan API actors <strong>SHALL</strong>&nbsp;be capable of populating all data elements as part of the query results as specified by the CARINBlueButtonHealthPlanAPICapabilityStatement.</li>
<li>Consumer App actors <strong>SHALL</strong> be capable of processing resource instances containing the data elements without generating an error or causing the application to fail.</li>
<li>Consumer App actors <strong>SHALL</strong> be capable of displaying the data elements for human use.</li>
<li>Consumer App actors <strong>SHOULD</strong> be capable of storing the information for other purposes.</li>
<li>In situations where information on a particular data element is not present and the reason for absence is unknown, Health Plan API actors <strong>SHALL NOT</strong> include the data elements in the resource instance returned as part of the query results.</li>
<li>When querying Health Plan API actors, Consumer App actors <strong>SHALL</strong> interpret missing data elements within resource instances as data not present in the Health Plan API actors system.</li>
<li>In situations where information on a particular data element is missing and the Health Plan API actor knows the precise reason for the absence of data, Health Plan API actors <strong>SHALL</strong> send the reason for the missing information using values (such as nullFlavors) from the value set where they exist or use the dataAbsentReason extension.</li>
<li>Consumer App actors <strong>SHALL</strong> be able to process resource instances containing data elements asserting missing information.NOTE: The above definition of *Must Support* is derived from HL7v2 concept Required but may be empty - RE described in HL7v2 V28_CH02B_Conformance.doc.</li>
</ul>
<p>NOTE: Readers are advised to understand <a href="http://hl7.org/fhir/R4/terminologies.html">FHIR Terminology</a> requirements, <a href="http://hl7.org/fhir/R4/http.html">FHIR RESTful API</a> based on the HTTP protocol, along with <a href="http://hl7.org/fhir/R4/datatypes.html">FHIR Data Types</a>, <a href="http://hl7.org/fhir/R4/search.html">FHIR Search</a> and <a href="http://hl7.org/fhir/R4/resource.html">FHIR Resource</a> formats before implementing CARIN IG for Blue Button® requirements.</p>
<h3 id="missing-data">Missing Data</h3>
<p>If the source system does not have data for a *Must Support* data element with minimum cardinality = 0, the data element is omitted from the resource. If the source system does not have data for a required data element (in other words, where the minimum cardinality is &gt; 0), follow guidance defined in the core FHIR specification and summarized in the&nbsp;<a href="http://hl7.org/fhir/us/core/general-guidance.html#missing-data">US Core.</a></p>
<h3 id="conformance-to-us-core-profiles">Conformance to US Core Profiles</h3>
<p>Any actor acting as a Health Plan API actor in this IG <strong>SHALL</strong>:</p>
<ul>
<li>Be able to populate all profile data elements that have a minimum cardinality &gt;= 1 and/or flagged as *Must Support* as defined by that profiles StructureDefinition.</li>
<li>Conform to the US Core Server Capability Statement expectations for that profile's type.</li>
</ul>
<p>Any actor acting a FHIR Client in this IG <strong>SHALL</strong>:</p>
<ul>
<li>Be able to process and retain all profile data elements that have a minimum cardinality &gt;= 1 and/or flagged as Must Support as defined by that profiles StructureDefinition.</li>
<li>Conform to the US Core Client Capability Statement expectations for that profiles type.</li>
</ul>
<h3 id="common-clinical-data-set">U.S. Core Data for Interoperability and 2015 Edition Common Clinical Data Set</h3>
<p>The US Core Profiles were originally designed to meet the 2015 Edition certification criterion for Patient Selection 170.315(g)(7), and Application Access - Data Category Request 170.315(g)(8). They were created for each item in the&nbsp;<a href="https://www.healthit.gov/sites/default/files/ccds_reference_document_v1_1.pdf">2015 Edition Common Clinical Data Set (CCDS).&nbsp;</a>The 3.1.0 version of the US Core Profiles IG includes new requirements from the latest proposed ONC&nbsp;<a href="https://www.healthit.gov/topic/laws-regulation-and-policy/notice-proposed-rulemaking-improve-interoperability-health">U.S. Core Data for Interoperability(USCDI)&nbsp;</a>and includes all the&nbsp;<a href="https://www.healthit.gov/isa/api-resource-collection-health-arch">API Resource Collection in Health (ARCH)</a>resources.</p>