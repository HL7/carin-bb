---
title: Use Case
layout: default
active: Use Case
---

**Consumer-directed health insurance data exchange**
Consumer-directed exchange occurs when a consumer or an authorized caregiver invokes their HIPAA Individual Right of Access (45 CFR  164.524) and requests their digital health information from a HIPAA covered entity (CE) via an application or other third-party data steward.

**Use Case 1**: Access Claims Data

Actors:
* Consumer (aka Beneficiary, Patient, or Authorized Caregiver)
* Payer (aka Health Plan, Commercial Payer, Covered Entity)
* App - a digital application selected by the Consumer; this application may be supplied by the Payer or by a third-party (to include other Covered Entities)

Normal Flow:
* Consumer authorizes an App to access their digital health information
* Consumer invokes their HIPAA Individual Right of Access
* Consumer requests their digital claims data from a Payer via the App
* App submits requests for digital claims data to the Payer
* Payer sends digital claims data back to the App
* App displays digital claims data to Consumer
* Consumer chooses to share data for a specific set of purposes via the App

