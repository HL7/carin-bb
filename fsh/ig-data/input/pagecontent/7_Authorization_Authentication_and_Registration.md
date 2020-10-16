<div>
<h3 id="smart-on-fhir-application-launch">SMART on FHIR Application Launch</h3>
Client applications and systems of record SHALL support the standalone launch sequence of the SMART App Launch framework for user authorization and client authentication. Systems of record SHALL publish their authorization and token endpoints for discovery in accordance with the SMART App Launch framework.
<h3 id="authorization-and-authentication" >Authorization and Authentication</h3>
Client applications and systems of record MAY support UDAP Dynamic Client Registration for the registration of a client application with a system of record. If supported, systems of records MUST include their registration endpoint URI in their discoverable OAuth metadata. If supported, client applications that have not previously obtained a client_id from a system of record SHOULD attempt registration with the system of record using this profile.
<div>&nbsp;</div>
If supported, client applications that can protect private cryptographic keys and all systems of record SHOULD support (UDAP JWT-Based Client Authentication) for the authentication of client applications using asymmetric cryptography. If supported, client applications SHALL specify a token_endpoint_auth_method of "private_key_jwt" or "client_secret_basic" in their submitted software statement. The "private_key_jwt" value is used for clients intending to authenticate using asymmetric cryptography as per the UDAP JWT-Basic Client Authentication profile. If supported, client applications that cannot protect private cryptographic keys MUST use the "client_secret_basic" value.
<div>&nbsp;</div>
Conforming client applications and systems of record MAY support the <a href="https://www.udap.org/udap-user-auth.html">UDAP Tiered OAuth for User Authentication </a>profile to enable reusable user credentials for end users.
<div>&nbsp;</div>
Additional constraints on the SMART and UDAP profiles listed above for the CARIN Blue Button IG use case can be found <a href="https://docs.google.com/document/d/1HgOlUWMEsZHBChuP4DACRka4ap2S8UwSTkAz4oY6bCo/edit">here</a>.
</p>
</div>
