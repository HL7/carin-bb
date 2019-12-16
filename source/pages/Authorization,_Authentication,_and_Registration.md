---
title: Authorization, Authentication, and Registration
layout: default
active: Authorization, Authentication, and Registration
---

[Previous Page](Mapping_from_CPCDS_to_FHIR_Resources.html)

Client applications and systems of record SHALL support the standalone launch sequence of the [SMART App Launch framework](http://www.hl7.org/fhir/smart-app-launch/) for user authorization and client authentication. Systems of record SHALL publish their authorization and token endpoints for discovery in accordance with the SMART App Launch framework.

Client applications and systems of record SHOULD support [UDAP Dynamic Client Registration](http://www.udap.org/udap-dynamic-client-registration.html) for the registration of a client application with a system of record. If supported, systems of records MUST include their registration endpoint URI in their discoverable OAuth metadata. Client applications that have not previously obtained a client_id from a system of record SHOULD attempt registration with the system of record using this profile.

Client applications that can protect private cryptographic keys and all systems of record SHOULD support [UDAP JWT-Based Client Authentication](http://www.udap.org/udap-jwt-client-auth.html) for the authentication of client applications using asymmetric cryptography. Client applications SHALL specify a token_endpoint_auth_method of "private_key_jwt" or "client_secret_basic" in their submitted software statement. The "private_key_jwt" value is used for clients intending to authenticate using asymmetric cryptography as per the UDAP JWT-Basic Client Authentication profile. Client applications that cannot protect private cryptographic keys MUST use the "client_secret_basic" value. 
 
Conforming client applications and systems of record MAY support the [UDAP Tiered OAuth for User Authentication](http://www.udap.org/udap-user-auth.html) profile to enable reusable user credentials for end users.

Additional constraints on the SMART and UDAP profiles listed above for the CARIN Blue Button IG use case can be found at [URI TBD](http://).

[Next Page](Search_Parameters.html)