
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



Profile: NestedComposition
Title: "composition nested"
Description: "The profile for nesting data in composition's sections"
Parent: Composition
Id: nestedcomposition


* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "type.coding.code"
* section ^slicing.rules = #open
* section contains
    section 0..* MS 
* section[section].entry only Reference(CarePlan)

* section[section].section ^slicing.discriminator.type = #value
* section[section].section ^slicing.discriminator.path = "type.coding.code"
* section[section].section ^slicing.rules = #open
* section[section].section contains     
    subsection 0..* MS
* section[section].section[subsection].entry only Reference(Patient)

* section[section].section[subsection].section ^slicing.discriminator.type = #value
* section[section].section[subsection].section ^slicing.discriminator.path = "type.coding.code"
* section[section].section[subsection].section ^slicing.rules = #open
* section[section].section[subsection].section contains     
    subsubsection 0..* MS
* section[section].section[subsection].section[subsubsection].entry only Reference(Observation)
