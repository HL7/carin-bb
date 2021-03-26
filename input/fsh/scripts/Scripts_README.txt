Several Scripts exist in this repository. These scripts have to be run in addition to sushi and the FHIR IG Publisher.
In general, these scripts should be run after SUSHI and before the IG Publisher is run.

There are several scripts that have been created before the creation of this README.
This README has started out as an attempt to document the scripts for future use and maintenance.

===Capability Statement Generation===
This script creates a CapabilityStatement for the IG Publisher. 
SUSHI currently does not support the creation of a CapabilityStatement based on profiles and the artifacts from the IG.

To be documented


===Example Note Generation===
This script creates the [Notes] section at the end of rendered example page that provides a table of fields and values that is easier to read for some implementers.

The examples that originate in JSON are in input/examples.
The examples that originate in FSH are in (after running sushi locally) fsh-generated/resources (they start with Coverage, Organization, Patient, and ExplanationOfBenefit).

The ‘easy’ way to handle is to copy all of them to a temporary directory, say ./tmp:
cp fsh-generated/resources/{Coverage*,Organization*,Explanation*,Patient*} tmp
cp input/examples/* tmp

and then run the ruby script that updates the content in the input/pagecontent directory.

So, it would look like:
ruby input/fsh/scripts/jsontofshhtml.rb tmp input/pagecontent
