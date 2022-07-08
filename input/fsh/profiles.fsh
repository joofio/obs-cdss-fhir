Profile: OBSCDSSInitializer
Title: "Request for prediction"
Description: "The profile for asking for input for a certian CDSS case"
Parent: CommunicationRequest

* meta.profile 1..*
//* identifier 1..1 MS

* status = #in-progress 
* category = #instruction 

* occurrencePeriod 0..0
* occurrenceDateTime 1..1

* payload 1..1  MS
* payload.contentAttachment 0..0
* payload.contentString 0..0
* payload.contentReference  only Reference(MLParameterRequest) 
* payload.contentReference 1..1 MS

Profile: MessageForRequest
Parent: Bundle
Title: "Message for request"
Description: "The message for requesting a certain CDSS case"

* identifier MS
* type = #message
* timestamp 1..1 MS
* entry 3..3 MS
* entry ^slicing.discriminator.type = #value
* entry ^slicing.discriminator.path = "name"
* entry ^slicing.rules = #open
* entry contains messageheader 1..1 MS and request 1..1 MS and  parameter 1..1 MS  

* entry[messageheader].resource only MessageHeaderCDSS

* entry[request].resource only OBSCDSSInitializer

* entry[parameter].resource only MLParameterRequest

Profile: OBSCDSSFinalizer
Title: "Prediction"
Description: "The profile for sending the response for a certain CDSS case"
Parent: Communication

* meta.profile 1..*
//* identifier 1..1 MS
* status = #completed
* category = #instruction
* inResponseTo 0..1 MS
* sent 1..1
* received 1..1
* sender 1..1 MS
* sender only Reference(MLModel)
* payload.contentString 1..1 MS

//* payload.contentCodeableConcept 1..1 MS
//* payload.contentCodeableConcept from ml-response-vs

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

Profile: MLParameterRequest
Parent: Parameters
Title: "Machine Learning Parameters for obstetrics"
Description: "Inputs for machine learning model"
* parameter 49..49 MS
* parameter.part 0..0 
* parameter.resource 0..0 
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter contains
    APRESENTACAO_31 1..1 MS and  APRESENTACAO_28 1..1 MS and 
    ESTIMATIVA_PESO_ECO_39 1..1 MS and APRESENTACAO_30 1..1 MS and 
    APRESENTACAO_37 1..1 MS and GRUPO_ROBSON 1..1 MS and 
    BISHOP_SCORE 1..1 MS and PESO_INICIAL 1..1 MS and 
    ESTIMATIVA_PESO_ECO_32 1..1 MS and IDADE_MATERNA 1..1 MS and 
    APRESENTACAO_35 1..1 MS and IMC 1..1 MS and 
    APRESENTACAO_32 1..1 MS and APRESENTACAO_26 1..1 MS and 
    ESTIMATIVA_PESO_ECO_24 1..1 MS and APRESENTACAO_34 1..1 MS and 
    ESTIMATIVA_PESO_ECO_40 1..1 MS and APRESENTACAO_33 1..1 MS and 
    APRESENTACAO_NO_PARTO 1..1 MS and NUMERO_CONSULTAS_PRE_NATAL 1..1 MS and 
    APRESENTACAO_38 1..1 MS and APRESENTACAO_29 1..1 MS and 
    ESTIMATIVA_PESO_ECO_41 1..1 MS and APRESENTACAO_ADMISSAO 1..1 MS and 
    BISHOP_EXTINCAO 1..1 MS and APRESENTACAO_27 1..1 MS and 
    ESTIMATIVA_PESO_ECO_33 1..1 MS and CESARIANAS_ANTERIOR 1..1 MS and 
    APRESENTACAO_36 1..1 MS and  ESTIMATIVA_PESO_ECO_37 1..1 MS and 
    TRAB_PARTO_ENTRADA_ESPONTANEO 1..1 MS and ESTIMATIVA_PESO_ECO_38 1..1 MS and 
    part_mcdt_ctgs 1..1 MS and apres_feto_34 1..1 MS and 
    tparto_rpm 1..1 MS and rn_ucin 1..1 MS and
    part_vig 1..1 MS and grav_feto_altcf 1..1 MS and
    tparto_esp 1..1 MS and apres_feto_34_pelve 1..1 MS and
    parto_comp 1..1 MS and ciru_laqt 1..1 MS and
    puer_comp_cica 1..1 MS and tparto_rpm_espo 1..1 MS and
    grav_plac 1..1 MS and parto_23P 1..1 MS and
    card_dhta 1..1 MS and  parto_comp_cervical 1..1 MS and
    part_aep 1..1 MS 
* parameter[APRESENTACAO_31].name =  "APRESENTACAO_31"
* parameter[APRESENTACAO_31].value[x] only Coding

* parameter[APRESENTACAO_28].name =  "APRESENTACAO_28"
* parameter[APRESENTACAO_28].value[x] only Coding

* parameter[ESTIMATIVA_PESO_ECO_39].name =  "ESTIMATIVA_PESO_ECO_39"
* parameter[ESTIMATIVA_PESO_ECO_39].value[x] only integer

* parameter[APRESENTACAO_30].name =  "APRESENTACAO_30"
* parameter[APRESENTACAO_30].value[x] only Coding

* parameter[APRESENTACAO_37].name =  "APRESENTACAO_37"
* parameter[APRESENTACAO_37].value[x] only Coding

* parameter[GRUPO_ROBSON].name =  "GRUPO_ROBSON"
* parameter[GRUPO_ROBSON].value[x] only Coding

* parameter[BISHOP_SCORE].name =  "BISHOP_SCORE"
* parameter[BISHOP_SCORE].value[x] only Coding

* parameter[PESO_INICIAL].name =  "PESO_INICIAL"
* parameter[PESO_INICIAL].value[x] only integer

* parameter[ESTIMATIVA_PESO_ECO_32].name =  "ESTIMATIVA_PESO_ECO_32"
* parameter[ESTIMATIVA_PESO_ECO_32].value[x] only integer

* parameter[IDADE_MATERNA].name =  "IDADE_MATERNA"
* parameter[IDADE_MATERNA].value[x] only integer

* parameter[APRESENTACAO_35].name =  "APRESENTACAO_35"
* parameter[APRESENTACAO_35].value[x] only Coding

* parameter[IMC].name =  "IMC"
* parameter[IMC].value[x] only decimal

* parameter[APRESENTACAO_32].name =  "APRESENTACAO_32"
* parameter[APRESENTACAO_32].value[x] only Coding

* parameter[APRESENTACAO_26].name =  "APRESENTACAO_26"
* parameter[APRESENTACAO_26].value[x] only Coding

* parameter[ESTIMATIVA_PESO_ECO_24].name =  "ESTIMATIVA_PESO_ECO_24"
* parameter[ESTIMATIVA_PESO_ECO_24].value[x] only integer

* parameter[APRESENTACAO_34].name =  "APRESENTACAO_34"
* parameter[APRESENTACAO_34].value[x] only Coding

* parameter[ESTIMATIVA_PESO_ECO_40].name =  "ESTIMATIVA_PESO_ECO_40"
* parameter[ESTIMATIVA_PESO_ECO_40].value[x] only integer

* parameter[APRESENTACAO_33].name =  "APRESENTACAO_33"
* parameter[APRESENTACAO_33].value[x] only Coding

* parameter[APRESENTACAO_NO_PARTO].name =  "APRESENTACAO_NO_PARTO"
* parameter[APRESENTACAO_NO_PARTO].value[x] only Coding

* parameter[NUMERO_CONSULTAS_PRE_NATAL].name =  "NUMERO_CONSULTAS_PRE_NATAL"
* parameter[NUMERO_CONSULTAS_PRE_NATAL].value[x] only integer

* parameter[APRESENTACAO_38].name =  "APRESENTACAO_38"
* parameter[APRESENTACAO_38].value[x] only Coding

* parameter[APRESENTACAO_29].name =  "APRESENTACAO_29"
* parameter[APRESENTACAO_29].value[x] only Coding

* parameter[ESTIMATIVA_PESO_ECO_41].name =  "ESTIMATIVA_PESO_ECO_41"
* parameter[ESTIMATIVA_PESO_ECO_41].value[x] only integer

* parameter[APRESENTACAO_ADMISSAO].name =  "APRESENTACAO_ADMISSAO"
* parameter[APRESENTACAO_ADMISSAO].value[x] only Coding

* parameter[BISHOP_EXTINCAO].name =  "BISHOP_EXTINCAO"
* parameter[BISHOP_EXTINCAO].value[x] only Coding

* parameter[APRESENTACAO_27].name =  "APRESENTACAO_27"
* parameter[APRESENTACAO_27].value[x] only Coding

* parameter[ESTIMATIVA_PESO_ECO_33].name =  "ESTIMATIVA_PESO_ECO_33"
* parameter[ESTIMATIVA_PESO_ECO_33].value[x] only integer

* parameter[CESARIANAS_ANTERIOR].name =  "CESARIANAS_ANTERIOR"
* parameter[CESARIANAS_ANTERIOR].value[x] only integer

* parameter[APRESENTACAO_36].name =  "APRESENTACAO_36"
* parameter[APRESENTACAO_36].value[x] only Coding

* parameter[ESTIMATIVA_PESO_ECO_37].name =  "ESTIMATIVA_PESO_ECO_37"
* parameter[ESTIMATIVA_PESO_ECO_37].value[x] only integer

* parameter[TRAB_PARTO_ENTRADA_ESPONTANEO].name =  "TRAB_PARTO_ENTRADA_ESPONTANEO"
* parameter[TRAB_PARTO_ENTRADA_ESPONTANEO].value[x] only Coding

* parameter[ESTIMATIVA_PESO_ECO_38].name =  "ESTIMATIVA_PESO_ECO_38"
* parameter[ESTIMATIVA_PESO_ECO_38].value[x] only integer

* parameter[part_mcdt_ctgs].name =  "part.mcdt.ctgs"
* parameter[part_mcdt_ctgs].value[x] only Coding

* parameter[apres_feto_34].name =  "apres.feto.34"
* parameter[apres_feto_34].value[x] only Coding

* parameter[tparto_rpm].name =  "tparto.rpm"
* parameter[tparto_rpm].value[x] only Coding

* parameter[rn_ucin].name =  "rn.ucin"
* parameter[rn_ucin].value[x] only Coding

* parameter[part_vig].name =  "part.vig"
* parameter[part_vig].value[x] only Coding

* parameter[grav_feto_altcf].name =  "grav.feto.altcf"
* parameter[grav_feto_altcf].value[x] only Coding

* parameter[tparto_esp].name =  "tparto.esp"
* parameter[tparto_esp].value[x] only Coding

* parameter[apres_feto_34_pelve].name =  "apres.feto.34.pelve"
* parameter[apres_feto_34_pelve].value[x] only Coding

* parameter[parto_comp].name =  "parto.comp"
* parameter[parto_comp].value[x] only Coding

* parameter[ciru_laqt].name =  "ciru.laqt"
* parameter[ciru_laqt].value[x] only Coding

* parameter[puer_comp_cica].name =  "puer.comp.cica"
* parameter[puer_comp_cica].value[x] only Coding

* parameter[tparto_rpm_espo].name =  "tparto.rpm.espo"
* parameter[tparto_rpm_espo].value[x] only Coding

* parameter[grav_plac].name =  "grav.plac"
* parameter[grav_plac].value[x] only Coding

* parameter[parto_23P].name =  "parto.23P"
* parameter[parto_23P].value[x] only Coding

* parameter[card_dhta].name =  "card.dhta"
* parameter[card_dhta].value[x] only Coding

* parameter[parto_comp_cervical].name =  "parto.comp.cervical"
* parameter[parto_comp_cervical].value[x] only Coding

* parameter[part_aep].name =  "part.aep"
* parameter[part_aep].value[x] only Coding


Profile: MLParameterResponse
Parent: Parameters
Title: "Machine Learning Parameters for obstetrics"
Description: "Outputs for machine learning model"
* parameter 2..3 MS
* parameter.part 0..0 
* parameter.resource 0..0 
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter contains
    result 1..1 MS and  outcome 1..1 MS  and decision 0..1 MS 

* parameter[result].name =  "result"
* parameter[result].value[x] only Coding

* parameter[outcome].name =  "outcome"
* parameter[outcome].value[x] only Coding

* parameter[decision].name =  "decision"
* parameter[decision].value[x] only Coding


Profile: MessageForCDSS
Parent: Bundle
Title: "Message for response"
Description: "The message for response"

* identifier MS
* type = #message
* timestamp 1..1 MS
* entry 3..3 MS
* entry ^slicing.discriminator.type = #value
* entry ^slicing.discriminator.path = "name"
* entry ^slicing.rules = #open
* entry contains messageheader 1..1 MS and request 1..1 MS and  parameter 1..1 MS  

* entry[messageheader].resource only MessageHeaderCDSS

* entry[request].resource only OBSCDSSInitializer or OBSCDSSFinalizer

* entry[parameter].resource only MLParameterRequest or MLParameterResponse

Profile: MessageHeaderCDSS
Parent: MessageHeader
Title: "Message for response"
Description: "The message for response"

* eventCoding 1..1
* destination.name 1..1 MS
* destination.endpoint 1..1 MS
* source.name 1..1 MS
