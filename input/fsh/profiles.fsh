Profile: OBSCDSSInitializer
Title: "[Profile] - Ask for prediction"
Description: "The profile for asking for input for a certian CDSS case"
Parent: CommunicationRequest

* meta.profile 1..*
* identifier MS

* status = #in-progress 
* category = #instruction 

* occurrencePeriod 0..0
* occurrenceDateTime 1..1

* payload 1..*  MS
* payload.contentAttachment 0..0
* payload.contentString 0..0
* payload.contentReference  only Reference(Parameters) 
* payload.contentReference 1..1 MS

Profile: OBSCDSSFinalizer
Title: "[Profile] - Prediction"
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

//* payload.contentCodeableConcept 1..1 MS
//* payload.contentCodeableConcept from ml-response-vs

Profile: MLModel
Title: "[Profile] - Machine Learning Model"
Description: "The profile for Defining Machine Learning Models for CDSS"
Parent: Device
* meta.profile 1..*
* identifier 1..* MS
* status 1..1 MS
* type from ml-type-vs (extensible)
* type 1..1 MS
* version.value 1..1 MS

Profile: Parameter1
Parent: Parameters

Title: "[Profile] - Machine Learning Parameters"
Description: "Inputs for machine learning model"

* parameter.name = "parameter1"
* parameter.value[x] only Coding
* parameter.value[x] 1..1 MS

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
