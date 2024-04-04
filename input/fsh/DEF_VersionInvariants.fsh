/*Invariant: patient-meta-profile-version
Description: "Patient: meta.profile with canonical and major.minor. version required."
Expression: "meta.profile.exists($this.startsWith('http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Patient|2.0.'))"
Severity: #error

Invariant: relatedperson-meta-profile-version
Description: "RelatedPerson: meta.profile with canonical and major.minor. version required."
Expression: "meta.profile.exists($this.startsWith('http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-RelatedPerson|2.0.'))"
Severity: #error

Invariant: practitioner-meta-profile-version
Description: "Practitioner: meta.profile with canonical and major.minor. version required."
Expression: "meta.profile.exists($this.startsWith('http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Practitioner|2.0.'))"
Severity: #error

Invariant: organization-meta-profile-version
Description: "Organization: meta.profile with canonical and major.minor. version required."
Expression: "meta.profile.exists($this.startsWith('http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Organization|2.0.'))"
Severity: #error

Invariant: coverage-meta-profile-version
Description: "Coverage: meta.profile with canonical and major.minor. version required."
Expression: "meta.profile.exists($this.startsWith('http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Coverage|2.0.'))"
Severity: #error

Invariant: EOB-institutional-inpatient-meta-profile-version
Description: "Institutional Inpatient EOB: meta.profile with canonical and major.minor. version required."
Expression: "meta.profile.exists($this.startsWith('http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Inpatient-Institutional|2.0.'))"
Severity: #error

Invariant: EOB-institutional-outpatient-meta-profile-version
Description: "Institutional Outpatient EOB: meta.profile with canonical and major.minor. version required."
Expression: "meta.profile.exists($this.startsWith('http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Outpatient-Institutional|2.0.'))"
Severity: #error

Invariant: EOB-professional-nonclinician-meta-profile-version
Description: "Professional and Nonclinician EOB: meta.profile with canonical and major.minor. version required."
Expression: "meta.profile.exists($this.startsWith('http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Professional-NonClinician|2.0.'))"
Severity: #error

Invariant: EOB-pharmacy-meta-profile-version
Description: "Pharmacy EOB: meta.profile with canonical and major.minor. version required."
Expression: "meta.profile.exists($this.startsWith('http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Pharmacy|2.0.'))"
Severity: #error

Invariant: EOB-oral-meta-profile-version
Description: "Oral EOB: meta.profile with canonical and major.minor. version required."
Expression: "meta.profile.exists($this.startsWith('http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Oral|2.0.'))"
Severity: #error
*/