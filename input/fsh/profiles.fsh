
Profile: MLModel
Title: "Machine Learning Model"
Description: "The profile for Defining Machine Learning Models for CDSS"
Parent: Device
* meta.profile 1..*
* identifier 1..* MS
* status 1..1 MS
* type from ml-type-vs (extensible)
* type 1..1 MS
* version.value 1..1 MS







Invariant:   msg-core-1
Description: "Patient.name.given or Patient.name.family or both SHALL be present"
Expression:  "Bundle.entry.where(resource.resourceType='Observation').exists() and Bundle.entry.where(resource.resourceType='MessageHeader').exists()"
Severity:    #error



Profile: MessageForCDSS
Parent: Bundle
Title: "Message bundle for request or response"
Description: "The message for response or request, containing the prediction/input"
* entry obeys msg-core-1

* identifier MS
* type = #message
* timestamp 1..1 MS
* entry 2..* MS
* entry ^slicing.discriminator.type = #value
* entry ^slicing.discriminator.path = "name"
* entry ^slicing.rules = #open
* entry contains messageheader 1..1 MS     and  data 1..* MS  

* entry[messageheader].resource only MessageHeaderCDSS
* entry[data].resource only Observation or MLModel





Profile: MessageHeaderCDSS
Parent: MessageHeader
Title: "Message Header for request and response"
Description: "Message Header for request and response"

* event[x] only Coding
* destination.name 1..1 MS
* source.name 1..1 MS


