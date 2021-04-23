
### FHIR Security and Privacy Guidance
Security and privacy are critical aspects to consider with any interface where data, like that described in this Implementation Guide, is shared or otherwise made accessible. Implementers need to make sure their APIs are secure and should consider the guidance found in the <a href="http://hl7.org/fhir/secpriv-module.html">FHIR Security and Privacy Module</a>.

<a name="smart-on-fhir-application-launch"></a>
### SMART on FHIR Application Launch
<p>Client applications and Payers SHALL support the standalone launch sequence (launch/Patient) of the SMART App Launch framework for user authorization and client authentication. Payers SHALL publish their authorization and token endpoints for discovery in accordance with the SMART App Launch framework. If the app needs to authenticate the identity of the end-user, it MAY include two OpenID Connect scopes: openid and fhirUser. When these scopes are requested, and the request is granted, the app MAY receive an id token along with the access token.</p>
<p>&nbsp;</p>
<a name="authorization-and-authentication"></a>
### Authorization and Authentication
<p>Client applications and systems of record MAY support UDAP Dynamic Client Registration for the registration of a client application with a system of record. If supported, systems of records MUST include their registration endpoint URI in their discoverable OAuth metadata. If supported, client applications that have not previously obtained a client_id from a system of record SHOULD attempt registration with the system of record using this profile.</p>
<div>&nbsp;</div>
<p>If supported, client applications that can protect private cryptographic keys and all systems of record SHOULD support (UDAP JWT-Based Client Authentication) for the authentication of client applications using asymmetric cryptography. If supported, client applications SHALL specify a token_endpoint_auth_method of "private_key_jwt" or "client_secret_basic" in their submitted software statement. The "private_key_jwt" value is used for clients intending to authenticate using asymmetric cryptography as per the UDAP JWT-Basic Client Authentication profile. If supported, client applications that cannot protect private cryptographic keys MUST use the "client_secret_basic" value.</p>
<div>&nbsp;</div>
<p>Conforming client applications and systems of record MAY support the <a href="https://www.udap.org/udap-user-auth.html">UDAP Tiered OAuth for User Authentication </a>profile to enable reusable user credentials for end users.</p>
<div>&nbsp;</div>
<p>Additional constraints on the SMART and UDAP profiles listed above for the CARIN Blue Button IG use case can be found <a href="https://docs.google.com/document/d/1HgOlUWMEsZHBChuP4DACRka4ap2S8UwSTkAz4oY6bCo/edit">here</a>.</p>

