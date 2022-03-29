
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
Title: "Medication nested"
Description: "The profile for nesting data in composition's sections"
Parent: Composition
Id: nestedcomposition


* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "type.coding.code"
* section ^slicing.rules = #open
* section contains
    MedRecordTreatment 0..* MS 
* section[MedRecordTreatment].entry only Reference(CarePlan)

* section[MedRecordTreatment].section ^slicing.discriminator.type = #value
* section[MedRecordTreatment].section ^slicing.discriminator.path = "type.coding.code"
* section[MedRecordTreatment].section ^slicing.rules = #open
* section[MedRecordTreatment].section contains     
    MedRecordTreatmentLine 0..* MS
* section[MedRecordTreatment].section[MedRecordTreatmentLine].entry only Reference(MedicationStatement)

* section[MedRecordTreatment].section[MedRecordTreatmentLine].section ^slicing.discriminator.type = #value
* section[MedRecordTreatment].section[MedRecordTreatmentLine].section ^slicing.discriminator.path = "type.coding.code"
* section[MedRecordTreatment].section[MedRecordTreatmentLine].section ^slicing.rules = #open
* section[MedRecordTreatment].section[MedRecordTreatmentLine].section contains     
    detailsRecord 0..* MS
* section[MedRecordTreatment].section[MedRecordTreatmentLine].section[detailsRecord].entry only Reference(MedicationRequest or MedicationDispense or MedicationAdministration or MedicationStatement)
