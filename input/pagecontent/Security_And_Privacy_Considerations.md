[//]: #  ## Security, Privacy, and Consent 

### General Considerations

The CARIN Consumer-Directed Payer Data Exchange involves a patient’s claim and encounter information communicated through a member directed exchange. This data includes the Protected Health Information (PHI), Personally Identifiable Information (PII), and personal financial data. Members need to be able to direct the communication of this information through authenticated, authorized, and secure channels.

Exchange of this information needs to be protected with proper security and privacy protections to avoid malicious or unintentional exposure of such information. All consumer-directed payer data exchanges must be appropriately secured in transit and access limited only to authorized individuals.

#### Legal and Regulatory Requirements

Implementers must ensure that APIs fully and successfully implement privacy and security features such as, but not limited to, those required to comply with HIPAA privacy and security requirements and other applicable law protecting the privacy and security of protected health information. Note that the HIPAA Privacy Rule applies only to HIPAA covered entities. The HIPAA Privacy Rule applies to HIPAA covered entities. After information leave the control of a HIPAA covered entity, the HIPAA Privacy Rule does not apply.  FTC consumer protection laws and state privacy laws may apply.

### Security/Privacy Related Technologies Including Explicit Consent and Security Labels
1. While past ONC regulations did have optional rules for data labeling and consent directives, as of May 2020, ONC has elected to not establish rules for either data labeling and consent directives as part of the [Final Rule for the 21st Century Cures Act](https://www.federalregister.gov/documents/2020/05/01/2020-07419/21st-century-cures-act-interoperability-information-blocking-and-the-onc-health-it-certification).
2. At present there is no explicit regulatory requirement for the use of these technologies in conjunction with this guide.
3. However, to meet the statutes, regulations, and guiding principles above, consent directives and security labels MAY be considered and used.
4. Organizations which plan to take advantage of these additional capabilities are responsible for negotiating support for these mechanisms between trading partners. The FHIR implementation guide defining the recommended standard is the [FHIR Data Segmentation for Privacy IG](http://hl7.org/fhir/uv/security-label-ds4p).

#### Security Considerations and Guidance
All implementers of the CARIN Consumer-Directed Payer Data Exchange Implementation Guide (IG) should follow the FHIR Security guidance, Security and Privacy Module, and the FHIR Implementer’s Safety Checklist guidance as defined in the FHIR standard where applicable and not otherwise superseded by this section of the IG.


1.	The FHIR Security specification provides guidance related to communication security, authentication, authorization/access control, audit, digital signatures, attachments, labels, narrative, and input validation. The FHIR security specification is available [here]({{site.data.fhir.path}}security.html).
2.	The FHIR Security and Privacy Module describes access control and authorization considerations to protect a FHIR server, how to document permissions granted, and how to keep records of performed events. The FHIR Security and privacy module can be found [here]({{site.data.fhir.path}}secpriv-module.html).
3.	The FHIR Implementer’s Safety Checklist helps implementers be sure that they have considered all the parts of FHIR that impact their system design regarding privacy, security, provenance, and safety. The FHIR safety check list is available [here]({{site.data.fhir.path}}safety.html).

### Security Requirements
For the purposes of information exchange defined by this IG, additional security conformance requirements are as follows:



#### Exchange Security
1.	The exchange of  information **SHOULD** use the current version and **SHALL** use either current or the immediately prior release of Transport Level Security (TLS) as specified by the current release of NIST guidelines (SP 800-52).
2.	Implementers of this Implementation Guide **SHOULD** support SMART on FHIR Authorization best practices [Transport Security section](https://docs.smarthealthit.org/authorization/best-practices/#11--transport-security).

### Authentication and Authorization Requirements
1.	Implementations **SHALL** support the FHIR US Core [Patient Privacy and Security requirements](https://www.hl7.org/fhir/us/core/security.html).
2.	Server systems **SHALL** publish their authorization and token endpoints for discovery in accordance with the SMART App Launch framework and publicly publish the [Well-Known Uniform Resource Identifiers (URIs)](https://hl7.org/fhir/smart-app-launch/conformance/index.html#using-well-known) JSON file with scopes defined in the `scopes_supported` property.
3.	Implementations **SHOULD** consider the SMART on FHIR Best Practices in Authorization found [here](https://docs.smarthealthit.org/authorization/best-practices/).
4.	Server implementation **SHALL** support the following [“SMART Core Capabilities”](http://hl7.org/fhir/smart-app-launch/conformance/index.html#core-capabilities) and **MAY** support additional capabilities:
    1.	`launch-standalone`: support for SMART’s Standalone Launch mode
    2.	`client-public`: support for SMART’s public client profile (no client authentication)
    3.	`client-confidential-symmetric`: support for SMART’s confidential client profile 
    4.	`sso-openid-connect`: support for SMART’s OpenID Connect profile
    5.	`context-standalone-patient`: support for patient-level launch context (requested by launch/patient scope, conveyed via patient token parameter)
    6.	`permission-offline`: support for refresh tokens (requested by offline_access scope)
    7.	`permission-patient`: support for patient-level scopes (e.g. patient Observation.read)
    8.	`permission-user`: support for user-level scopes (e.g. user/Appointment.read)
5.	Server implementations of this Implementation Guide **SHALL** support, at a minimum, the following requested authorization scopes:
    1.	openid
    2.	fhirUser
    3.	launch/patient
    4.  patient/ExplanationOfBenefit.read
    5.	patient/Coverage.read
    6.	patient/Patient.read
    7.	patient/Organization.read
    8.	patient/Practitioner.read
    9.	patient/Coverage.read
    10.	user/ExplanationOfBenefit.read
    11.	user/Coverage.read
    12.	user/Patient.read
    13.	user/Organization.read
    14.	user/Practitioner.read

6.	MAY support the [Security for Scalable Registration, Authentication, and Authorization](http://hl7.org/fhir/us/udap-security/2021Sep/) 0.1.0 or later for registration of client applications and (authentication and authorization of client applications or users)
    1.  If UDAP is supported, then all server systems and client applications that can protect private cryptographic keys and all systems of record **SHOULD** support UDAP JWT-Based Client Authentication for the authentication of client applications using asymmetric cryptography.



### Audit Logging and Provenance
1.	Relevant audit and provenance events SHALL be recorded.
2.  Server implementations **SHOULD** record IG related data access using the [AuditEvent]({{site.data.fhir.path}}auditevent.html) resource.
3.	Server implementations **SHOULD** support the ability to directly record and/or enable clients to assert (store) provenance associated with advance directive information using the [Provenance]({{site.data.fhir.path}}provenance.html) resource.

