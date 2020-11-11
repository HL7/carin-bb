<div>The Common Payer Consumer Data Set (CPCDS) is a logical data set (similar to ONC 2015 Edition Common Clinical Data Set) that meets CMS Blue Button 2.0 API content The CPCDS data elements can be stored and queried as profiled FHIR resources. They define key payer financial health data that <strong>SHALL</strong> be accessible and available to through standards-based APIs. Data <strong>SHALL</strong> conform to specified profiles, vocabulary standards and code sets.
<p>&nbsp;</p>
<h3>Mapping from CPCDS to FHIR Resources</h3>
Based on CPCDS, the mappings define the minimum mandatory elements, extensions and terminology requirements that must be present in the FHIR resource. Additional business rules are also specified.
<div>
<table style="border-color: black;" border="2" cellspacing="0" cellpadding="1">
<tbody>
<tr>
<td><strong>Title</strong></td>
<td><strong>Format</strong></td>
<td><strong>Description</strong></td>
</tr>
<tr>
<td>Profile comparison overview</td>
<td>&nbsp;<a href="CARINforBlueButtonProfileComparisonOverview.pptx">ppt</a></td>
<td>High level profile comparison showing header vs item data elements and value sets requiring licenses.</td>
</tr>
<tr>
<td>&nbsp;Detailed Profile comparison</td>
<td><a  href="CARINforBlueButtonProfileComparison.xlsx">xls</a></td>
<td>A detailed comparison of the profiles defined in this IG with their base resource or profile is shown in the figures on this page.</td>
</tr>
<tr>
<td>CPCDS Data Dictionary</td>
<td><a href="CPCDSDataDictionary.docx">doc</a></td>
<td>Defines key health data that should be accessible and available for exchange.</td>
</tr>
<tr>
<td>CPCDS to FHIR Profiles Mapping</td>
<td><a href="CPCDStoFHIRProfilesMapping.xlsx">xls</a></td>
<td>Mapping Worksheet&nbsp; to aid implementers in understanding the data representation requirements of each EOB Profile and the referenced resources used by these profiles.</td>
</tr>
<tr>
<td>Documentation of CPCDS to FHIR Profiles Mapping</td>
<td><a href="DocumentationOfCPCDSToFHIRProfilesMapping.pptx">ppt</a></td>
<td>Description of the layout of the Mapping Worksheet and how to use it to understand the profiled data mappings to the FHIR resources.</td>
</tr>
</tbody>
</table>
</div>
<p>&nbsp;</p>

<h3>Explanation of Benefits Resource Profiles Definition</h3>
<!-- This implementation guide establishes a set of profiles for the  resource and other referenced FHIR resources. As shown here, the data represented in each of the 4 concrete EOB profiles aligns with claim submission standards adopted by the US Department of Health and Human Services for a specific type of benefit. The fifth EOB profile, not shown in this table, is a design artifact that includes data representation constraints common across all types of EOBs, and this profile should not be used for actual data instances.&nbsp; A side by side comparison of the abstract EOB profile, and the four concrete profiles is shown here. -->
Profiles for Explanation of Benefit (EOB) and other reference resources are defined in this IG. Data elements in each of the EOB profiles aligns with US Department of Health and Human Services claims submission standards. An abstract EOB profile is defined, representing constraints found in all the EOB types. Four profiles define the data constraints for the specific claim type (i.e., inpatient institutional, outpatient institutional, professional and non-clinician and pharmacy).  The profiles use many industry standard codes.  The owners of those codes and an indicator for those requiring licenses is provided.  
A side by side comparison of the abstract EOB profile, and the four concrete profiles is shown here.

<br />&nbsp;<img style="width: 100%; height: auto; float: none; align: middle;" src="SidebySideProfiles.png" /></div>
<br />&nbsp;
A detailed comparison of the profiles defined in this IG with their base resource or profile is shown in the following two figures. 
<div><img style="width: 100%; height: auto; float: none; align: middle;" src="EOBProfileComparison.png" /></div>
<div><img style="width: 100%; height: auto; float: none; align: middle;" src="OtherProfileComparison.png" /></div>
<div>&nbsp;</div>
<div>Additional EOB profiles for Vision and Dental benefits are planned for future versions of this IG.</div>
<div>&nbsp;</div>

