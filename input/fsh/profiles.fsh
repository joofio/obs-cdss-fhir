
Profile: OBSCDSSInitializer
Title: "[Profile] - Communication Request"
Description: "The profile for asking for input for a certian CDSS case"
Parent: CommunicationRequest
* meta.profile 1..*
* identifier MS
* status = #completed
* category = #instruction

* occurrencePeriod 0..0
* occurrenceDateTime 1..1

* about ^slicing.discriminator.type = #value
* about ^slicing.discriminator.path = "type"
* about ^slicing.rules = #open
* about contains
    ModelVersion 1..1 MS 
* about[ModelVersion] only Reference(Device)

