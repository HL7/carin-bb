<h4 class="x_MsoNormal">Notes on Fields</h4>
<ul>
<li class="x_MsoNormal">The Organization FHIR Resource defines a comprehensive set of data elements.&nbsp; Many of them are not relevant to this use case.&nbsp; When reviewing the Profile Snapshot, several data elements previously hidden are now exposed.&nbsp; Fields intended for consideration to be provided in the API are marked as <a href="General_Guidance.html#must-support">Must Support</a>; i.e., a red <span style="color: #ffffff; background-color: #ff0000;">S</span> or have a minimum cardinality of 1.&nbsp; All other data elements are not expected to be sent by a Requestor; if they are sent a Responder can choose to ignore them.</li>
<li class="x_MsoNormal">Payers may decide to provide either the data that was in effect as of the date of service or the current data<strong>.&nbsp;</strong></li>
<li class="x_MsoNormal">.identifier[NPI]:&nbsp; Value is conditional depending on the Referring Resource.&nbsp; Populate Service Facility NPI with the value 'NPI has not been assigned' if an NPI has not been assigned to the Service Location Organization</li>
<li class="x_MsoNormal">.address:&nbsp; Enter address of the location where the services were rendered.&nbsp; If the location is a component of the Billing Provider, do not populate this data element</li>
<li class="x_MsoNormal">.meta.lastUpdated:&nbsp;Payers SHALL provide the last time the data was updated or the date of creation in the payer’s system of record, whichever comes last.  Apps will use the meta.lastUpdated value to determine if the Reference resources are as of the current date or date of service. </li>
<li class="x_MsoNormal">The numbers, e.g. (1), following the data element descriptions correlate to the MapID in the <a href="CPCDSDataDictionary.docx">CPCDS Data Dictionary</a> and the <a href="CPCDStoFHIRProfilesMapping.xlsx">Mapping Worksheet</a>&nbsp;as described&nbsp;<a href="Common_Payer_Consumer_Data_Set.html">here.</a></li>
</ul>
<p>&nbsp;</p>
