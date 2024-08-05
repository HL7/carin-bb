Invariant: patient-meta-profile-version
Description: "Patient: meta.profile with canonical and major.minor. version required."
Expression: "meta.profile.exists($this.startsWith('http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Patient|2.1'))"
Severity: #warning

Invariant: relatedperson-meta-profile-version
Description: "RelatedPerson: meta.profile with canonical and major.minor. version required."
Expression: "meta.profile.exists($this.startsWith('http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-RelatedPerson|2.1'))"
Severity: #warning

Invariant: practitioner-meta-profile-version
Description: "Practitioner: meta.profile with canonical and major.minor. version required."
Expression: "meta.profile.exists($this.startsWith('http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Practitioner|2.1'))"
Severity: #warning

Invariant: organization-meta-profile-version
Description: "Organization: meta.profile with canonical and major.minor. version required."
Expression: "meta.profile.exists($this.startsWith('http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Organization|2.1'))"
Severity: #warning

Invariant: coverage-meta-profile-version
Description: "Coverage: meta.profile with canonical and major.minor. version required."
Expression: "meta.profile.exists($this.startsWith('http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-Coverage|2.1'))"
Severity: #warning

Invariant: EOB-institutional-inpatient-meta-profile-version
Description: "Institutional Inpatient EOB: meta.profile with canonical and major.minor. version required."
Expression: "meta.profile.exists($this.startsWith('http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Inpatient-Institutional|2.1'))"
Severity: #warning

Invariant: EOB-institutional-outpatient-meta-profile-version
Description: "Institutional Outpatient EOB: meta.profile with canonical and major.minor. version required."
Expression: "meta.profile.exists($this.startsWith('http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Outpatient-Institutional|2.1'))"
Severity: #warning

Invariant: EOB-professional-nonclinician-meta-profile-version
Description: "Professional and Nonclinician EOB: meta.profile with canonical and major.minor. version required."
Expression: "meta.profile.exists($this.startsWith('http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Professional-NonClinician|2.1'))"
Severity: #warning

Invariant: EOB-pharmacy-meta-profile-version
Description: "Pharmacy EOB: meta.profile with canonical and major.minor. version required."
Expression: "meta.profile.exists($this.startsWith('http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Pharmacy|2.1'))"
Severity: #warning

Invariant: EOB-oral-meta-profile-version
Description: "Oral EOB: meta.profile with canonical and major.minor. version required."
Expression: "meta.profile.exists($this.startsWith('http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Oral|2.1'))"
Severity: #warning
