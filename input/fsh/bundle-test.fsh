Profile: ContainedBundle
Parent: Bundle
Id: contained-bundle
Title: "Contained Bundle Profile"
Description: "Contained Bundle Profile"
* obeys bundle-observation-device-exists and bundle-observation-device-active


Profile: ContainedObservation
Parent: Observation
Id: contained-observation
Title: "Contained Observation Profile"
Description: "Contained Observation Profile"
* obeys observation-device-exists and observation-device-active


Instance: BundleTest
InstanceOf: ContainedBundle
Title: "Example Bundle"
Description: "Example Bundle"
* type = #collection
* entry[0].fullUrl = "http://www.example.org/observation-entry"
* entry[=].resource = observation-entry

Instance: observation-entry
InstanceOf: ContainedObservation
Title: "Example Bundle entry Observation"
Description: "Example Bundle entry Observation"
Usage: #example
* contained = contained-device
* status = #final
* code = http://loinc.org#94500-6 "SARS-CoV-2 (COVID-19) RNA [Presence] in Respiratory system specimen by NAA with probe detection"
* code.text = "SARS-CoV-2 RNA Resp Ql NAA+probe"
* device = Reference(contained-device)

Instance: contained-device
InstanceOf: Device
Usage: #inline
* deviceName.name = "Observation Contained Device"
* deviceName.type = #user-friendly-name
* status = #active


Invariant: bundle-observation-device-exists
Description: "Bundle Observation Device must resolve"
Severity: #error
Expression: "entry.resource.ofType(Observation).all(device.resolve().exists())"


Invariant: bundle-observation-device-active
Description: "Bundle Observation Devices must be active"
Severity: #error
Expression: "entry.resource.ofType(Observation).all(device.resolve().status = 'active')"


Invariant: observation-device-exists
Description: "Observation Device must resolve"
Severity: #error
Expression: "device.resolve().exists()"


Invariant: observation-device-active
Description: "Observation Devices must be active"
Severity: #error
Expression: "device.resolve().status = 'active'"

