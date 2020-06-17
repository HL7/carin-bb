


The Common Payer Consumer Data Set (CPCDS) is a logical data set (similar to ONC 2015 Edition Common Clinical Data Set) that meets CMS Blue Button 2.0 API content
</p>
<p>
The CPCDS data elements can be stored and queried as profiled FHIR resources.  They define key payer financial health data that <b>SHALL</b> be accessible and available to through standards-based APIs.  Data <b>SHALL</b> conform to specified profiles, vocabulary standards and code sets.  
</p>
<p>
Download your local copy of the CPCDS Data Dictionary  <a download="CARIN Blue Button Framework.pdf" href="CPCDS Data Dictionary and Resource Mapping Tables 0615 2020.pdf"> here </a>. 
<h3>Mapping from CPCDS to FHIR Resources</h3>
Based on CPCDS, the mappings define the minimum mandatory elements, extensions and terminology requirements that must be present in the FHIR resource. Additional business rules are also specified.
<h3>Explanation of Benefits Resource Profiles Definition</h3>
Why is this needed and how does it help?

<h3>CPCDS Data Elements</h3>
<h3>Mapping Worksheet</h3>
A Mapping Worksheet is included with this IG to aid implementers in understanding the data representation requirements of each EOB Profile and the referenced resources used by these profiles.
<p>
​Download your local copy of the CPCDS to FHIR Profiles Mapping Excel worksheet from here.
<a download="CARINMappingtoFHIR.xlsx" href="CARINMappingtoFHIR20191002copy.xlsx"> here </a>

The following documentation describes the layout of the Mapping Worksheet and how to use it to understand the profiled data mappings to the FHIR resources.  The Data Element Index tab of the Mapping Worksheet maps CPCDS CARIN BB data elements to specific FHIR Profiles and further shows the relevant resource data element to where the CPCDS data element is represented. 
<img style="width:100%;height:auto;float:none;align:middle;" src="guide1.png"/>

The Rules tab provides additional background assumptions and the color coding key.  The Mapping Worksheet is designed to support filters that allow implementers to view the mapping information in a variety of ways. Filtering on the CPCDS Data Element Name (Column B) shows which FHIR Profiles include that data element.  Each tab maps the  CPCDS data elements to FHIR for each Profile.   To map their data to CPCDS, payers may filter the MapID, column K, removing spaces and ‘removed from scope’  Many CPCDS data elements are not on all profiles.  To identify the CPCDS data elements applicable to a specific Profile,  payers may filter on the CARIN BB2.X FHIR Profile, column D, selecting the desired profile
Many CPCDS data elements are not on all profiles. Filtering on the FHIR Profile (Column D) shows all the CPCDS data elements required in a particular FHIR Profile.

<img style="width:100%;height:auto;float:none;align:middle;" src="guide2.png"/>

The other tabs in the Mapping Worksheet correspond to each of the FHIR Profiles defined in this IG. The profile related tabs map the FHIR resource being profiled to the CPCDS data elements to be represented in that resource. These tabs begin with a representation of the FHIR resource. The FHIR resource data elements needed to represent the CPCDS data elements identified with the relevant constraint information. The tab shows the data element constraints such as cardinality and value set binding requirements. These data mapping requirements are represented as constraints in the associated machine processible profiles included in the IG. By filtering one of these profile tabs using the data element MapID (Column K) a payer gets a view of the underlying FHIR resource, reduced to focusing on only the parts of the resource structure needed to represent the CPCDS data elements. Value Sets requirements for representing coded concepts are listed in Value Set Comments (Column K).

<img style="width:100%;height:auto;float:none;align:middle;" src="guide3.png"/>

