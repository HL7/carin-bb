<h4 class="x_MsoNormal">Notes on Fields</h4>
<ul>
<li class="x_MsoNormal">The Patient FHIR Resource defines a comprehensive set of data elements.&nbsp; Many of them are not relevant to this use case.&nbsp; When reviewing the Profile Snapshot, several data elements previously hidden are now exposed.&nbsp; Fields intended for consideration to be provided in the API are marked as <a href="General_Guidance.html#must-support">Must Support</a>; i.e., a red <span style="color: #ffffff; background-color: #ff0000;">S</span> or have a minimum cardinality of 1.&nbsp; All other data elements are not expected to be sent by a Responder; if they are sent a Requestor can choose to ignore them</li>
<li class="x_MsoNormal">The Member Id is the identifier payers assign to a beneficiary for a contract; it may be different for various lines of business; ie. QHP vs MA. The Unique Member Id is a mastered identifier across all lines of business.</li>
<li class="x_MsoNormal">Payers may decide to provide either the data that was in effect as of the date of service or the current data.</li>
<li class="x_MsoNormal">.meta.lastUpdated:&nbsp;Payers SHALL provide the last time the data was updated or the date of creation in the payer’s system of record, whichever comes last.  Apps will use the meta.lastUpdated value to determine if the Reference resources are as of the current date or date of service. </li>
<li class="x_MsoNormal">The numbers, e.g. (1), following the data element descriptions correlate to the MapID in the <a href="CPCDSDataDictionary.docx">CPCDS Data Dictionary</a> and the <a href="CPCDStoFHIRProfilesMapping.xlsx">Mapping Worksheet</a>&nbsp;as described&nbsp;<a href="Common_Payer_Consumer_Data_Set.html">here.</a></li>
</ul>
<p>&nbsp;</p>
