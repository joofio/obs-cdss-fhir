Profile: OBSCDSSInitializer
Title: "[Profile] - Communication Request"
Description: "The profile for asking for input for a certian CDSS case"
Parent: CommunicationRequest
* meta.profile 1..*
* identifier MS
* status = #in-progress
* category = #instruction

* occurrencePeriod 0..0
* occurrenceDateTime 1..1

* about ^slicing.discriminator.type = #value
* about ^slicing.discriminator.path = "type"
* about ^slicing.rules = #open
* about contains
    ModelVersion 0..1 MS 
* about[ModelVersion] only Reference(Device)

Profile: OBSCDSSFinalizer
Title: "[Profile] - Communication"
Description: "The profile for sending the response for a certain CDSS case"
Parent: Communication
* meta.profile 1..*
* identifier MS
* status = #completed
* category = #instruction
* inResponseTo 0..1 MS
* sent 1..1
* received 1..1
* sender 1..1 MS
* payload.contentString 1..1 MS

Profile: MLModel
Title: "[Profile] - Communication Request"
Description: "The profile for asking for input for a certian CDSS case"
Parent: Device
* meta.profile 1..*
* identifier 1..* MS
* status 1..1 MS
* type 1..1 MS
* version.value 1..1 MS

/*
Profile: NestedComposition
Title: "composition nested"
Description: "The profile for nesting data in composition's sections"
Parent: Composition
Id: nestedcomposition


* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code.coding.code"
* section ^slicing.rules = #open
* section contains
    section1 1..1 MS 
* section[section1].entry only Reference(CarePlan)
* section[section1].code = http://loinc.org#33728-7 // "Size.maximum dimension in Tumor"

* section[section1].section ^slicing.discriminator.type = #pattern
* section[section1].section ^slicing.discriminator.path = "code.coding.code"
* section[section1].section ^slicing.rules = #open
* section[section1].section contains     
    subsection 1..1 MS
* section[section1].section[subsection].entry only Reference(Patient)
* section[section1].section[subsection].code = http://loinc.org#33728-7 // "Size.maximum dimension in Tumor"

* section[section1].section[subsection].section ^slicing.discriminator.type = #pattern
* section[section1].section[subsection].section ^slicing.discriminator.path = "code.coding.code"
* section[section1].section[subsection].section ^slicing.rules = #open
* section[section1].section[subsection].section contains     
    subsubsection 1..1 MS
* section[section1].section[subsection].section[subsubsection].entry only Reference(Observation)
* section[section1].section[subsection].section[subsubsection].code = http://loinc.org#33728-7 // "Size.maximum dimension in Tumor"
*/
