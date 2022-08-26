Instance: Patient1
InstanceOf: C4BBPatient
Description: "Patient Example1"
Usage: #example
//* id = "1234-234-1243-12345678901"
* meta.profile[+] = Canonical(C4BBPatient|1.2.0)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* id = "Patient1"
* active = true
* name[0].family = "Example1"
* name[0].given[0] = "Johnny"
* telecom[0].system = http://hl7.org/fhir/contact-point-system#phone
* telecom[0].value = "(301)555-1212"
* telecom[0].rank = 1
* telecom[0].system = 	http://hl7.org/fhir/contact-point-system#phone
* telecom[0].value = "(301)666-1212"
* telecom[0].rank = 2
* gender = http://hl7.org/fhir/administrative-gender#male
* birthDate = "1986-01-01"
* address[0].type = http://hl7.org/fhir/address-type#physical
* address[0].line[0] = "123 Main Street"
* address[0].city = "Pittsburgh"
* address[0].state = "PA"
* address[0].postalCode = "12519"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK
* identifier[memberid].type = $IdentifierType#MB
* identifier[memberid].value = "1234-234-1243-12345678901"
* identifier[memberid].system = "https://www.xxxhealthplan.com/fhir/memberidentifier"
//* identifier[medrecnum].type = $IdentifierType#MR
//* identifier[medrecnum].value = "1234-234-1243-12345678901m"
//* identifier[medrecnum].system = "https://www.xxxhealthplan.com/fhir/medicalrecordnumber"
* identifier[uniquememberid].type = C4BBIdentifierType#um
* identifier[uniquememberid].value = "1234-234-1243-12345678901u"
* identifier[uniquememberid].system = "https://www.xxxhealthplan.com/fhir/iniquememberidentifier"
//* identifier[patacctnum].type = C4BBIdentifierType#pat
//* identifier[patacctnum].value = "1234-234-1243-12345678901a"
//* identifier[patacctnum].system = "https://www.xxxhealthplan.com/fhir/patacctnum"
