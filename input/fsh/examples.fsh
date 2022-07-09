
Instance: MLParameterRequestExample
InstanceOf: MLParameterRequest
Description: "Example of MlParameter - Obstetrics"
Title: "Example of MlParameter - Obstetrics"
Usage: #example

* parameter[APRESENTACAO_31].valueCoding = #cefálica
* parameter[APRESENTACAO_28].valueCoding = #None
//* parameter[ESTIMATIVA_PESO_ECO_39].valueInteger = 
* parameter[APRESENTACAO_30].valueCoding = #None
* parameter[APRESENTACAO_37].valueCoding = #None
* parameter[GRUPO_ROBSON].valueCoding = #1
* parameter[BISHOP_SCORE].valueCoding = #None
* parameter[PESO_INICIAL].valueInteger = 57
//* parameter[ESTIMATIVA_PESO_ECO_32].valueInteger = 
* parameter[IDADE_MATERNA].valueInteger = 36
* parameter[APRESENTACAO_35].valueCoding = #None
* parameter[IMC].valueDecimal = 19.7
* parameter[APRESENTACAO_32].valueCoding = #None
* parameter[APRESENTACAO_26].valueCoding = #None
//* parameter[ESTIMATIVA_PESO_ECO_24].valueInteger
* parameter[APRESENTACAO_34].valueCoding = #None
//* parameter[ESTIMATIVA_PESO_ECO_40].valueInteger
* parameter[APRESENTACAO_33].valueCoding = #None
* parameter[APRESENTACAO_NO_PARTO].valueCoding = #"Cefálica de vértice"
* parameter[NUMERO_CONSULTAS_PRE_NATAL].valueInteger = 14
* parameter[APRESENTACAO_38].valueCoding = #None
* parameter[APRESENTACAO_29].valueCoding = #None
//* parameter[ESTIMATIVA_PESO_ECO_41].valueInteger
* parameter[APRESENTACAO_ADMISSAO].valueCoding = #-1
* parameter[BISHOP_EXTINCAO].valueCoding = #None
* parameter[APRESENTACAO_27].valueCoding = #None
//* parameter[ESTIMATIVA_PESO_ECO_33].valueInteger
//* parameter[CESARIANAS_ANTERIOR].valueInteger
* parameter[APRESENTACAO_36].valueCoding = #None
//* parameter[ESTIMATIVA_PESO_ECO_37].valueInteger
* parameter[TRAB_PARTO_ENTRADA_ESPONTANEO].valueCoding = #None
//* parameter[ESTIMATIVA_PESO_ECO_38].valueInteger
* parameter[part_mcdt_ctgs].valueCoding = #0
* parameter[apres_feto_34].valueCoding = #0
* parameter[tparto_rpm].valueCoding = #0
* parameter[rn_ucin].valueCoding = #0
* parameter[part_vig].valueCoding = #0
* parameter[grav_feto_altcf].valueCoding = #0
* parameter[tparto_esp].valueCoding = #1
* parameter[apres_feto_34_pelve].valueCoding = #0
* parameter[parto_comp].valueCoding = #0
* parameter[ciru_laqt].valueCoding = #0
* parameter[puer_comp_cica].valueCoding = #0
* parameter[tparto_rpm_espo].valueCoding = #0
* parameter[grav_plac].valueCoding = #0
* parameter[parto_23P].valueCoding = #0
* parameter[card_dhta].valueCoding = #0
* parameter[parto_comp_cervical].valueCoding = #0
* parameter[part_aep].valueCoding = #1


Instance: OBSCDSSInitializerExample
InstanceOf: OBSCDSSInitializer
Description: "Example of Request for prediction"
Title: "Example of Request for prediction"
Usage: #example

* meta.profile = "http://hl7.org/fhir/StructureDefinition/obscdss-initializer"

* identifier.value = "OBSCDSSInitializerExample"
* occurrenceDateTime = "2020-01-01T00:00:00Z"
* payload.contentReference = Reference(MLParameterRequestExample)

Instance: MessageHeaderCDSSExampleRequest
InstanceOf: MessageHeaderCDSS
Description: "Example of Request for MessageForRequest"
Title: "Example of Request for MessageForRequest"
Usage: #example

* eventCoding = #obs-cds
* destination.name = "CDSS-System"
* destination.endpoint = "127.0.0.1"

* source.name = "request-system"
* source.endpoint = "127.0.0.1"


Instance: MessageForCDSSRequest
InstanceOf: MessageForCDSS
Description: "Example of Request for MessageForRequest"
Title: "Example of Request for MessageForRequest"
Usage: #example

* timestamp = "2020-01-01T00:00:00Z"

* entry[messageheader].resource = MessageHeaderCDSSExampleRequest 
* entry[request].resource = OBSCDSSInitializerExample
* entry[parameter].resource = MLParameterRequestExample



//// ----------------------------------------///


Instance: PredictionExample
InstanceOf: OBSCDSSFinalizer
Description: "Example of Request for MessageForRequest"
Title: "Example of Request for MessageForRequest"
Usage: #example

* sent = "2020-01-01T00:00:00Z"
* id = "sss"
* status = #completed
* category = #instruction
* received = "2020-01-01T00:00:00Z"
* sender = Reference(MLModelExample)
* payload.contentReference = Reference(MLParameterResponseExample)


Instance: MLModelExample
InstanceOf: MLModel
Description: "Example of Request for MessageForRequest"
Title: "Example of Request for MessageForRequest"
Usage: #example

* id = "sss"
* identifier.value = "sss"
* status = #completed
* type = MlTypesCS#LGBM
* version.value = "1"


Instance: MessageHeaderCDSSExampleResponse
InstanceOf: MessageHeaderCDSS
Description: "Example of response for MessageForRequest"
Title: "Example of response for CDSS"
Usage: #example

* eventCoding = #obs-cds
* destination.name = "Requester"
* destination.endpoint = "127.0.0.1"

* source.name = "CDSS-system"
* source.endpoint = "127.0.0.1"

Instance: MLParameterResponseExample
InstanceOf: MLParameterResponse
Description: "Example of MlParameter - Obstetrics"
Title: "Example of MlParameter - Obstetrics"
Usage: #example

* parameter[result].valueCoding = #Vaginal
* parameter[outcome].valueCoding = #None
* parameter[decision].valueCoding = #None


Instance: MessageForCDSSResponse
InstanceOf: MessageForCDSS
Description: "Example of Request for MessageForRequest"
Title: "Example of Request for MessageForRequest"
Usage: #example

* timestamp = "2020-01-01T00:00:00Z"
* entry[messageheader].resource = MessageHeaderCDSSExampleResponse 
* entry[request].resource = PredictionExample
* entry[parameter].resource = MLParameterResponseExample