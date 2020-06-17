

**Consumer-directed health insurance data exchange**
Consumer-directed exchange occurs when a consumer or an authorized caregiver invokes their HIPAA Individual Right of Access (45 CFR  164.524) and requests their digital health information from a HIPAA covered entity (CE) via an application or other third-party data steward.

**Use Case**: Consumer Access to their Claims Data

<table><tr><td><img src="Screen Shot 2019-12-13 at 3.31.56 PM.png" /></td></tr></table>

Actors:
* Consumer (aka Beneficiary, Patient, or Authorized Caregiver)
* Consumer App- A digital third-party application selected by and primarily for the Consumer with a consumer-facing user interface
* Patient Portal / Identity Provider
* Health Plan API (aka Health Plan, Commercial Payer, Covered Entity)

Normal Flow:
* Consumer downloads or accesses the application of their choice
* Consumer authorizes the application to access their digital claims data (thereby invoking their Individual Right of Access under HIPAA) via the SMART on FHIR authorization flow
* Application connects to a FHIR API to download their digital claims data and requests the health plan send the data to the application 
* Application displays or otherwise uses digital claims data to the benefit of the Consumer



