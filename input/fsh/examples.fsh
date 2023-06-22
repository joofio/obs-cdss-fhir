Instance: MessageForCDSSRequest
InstanceOf: MessageForCDSS
Usage: #example
* meta.profile = "https://joofio.github.io/obs-cdss-fhir/StructureDefinition/MessageForCDSS"
* type = #message
* timestamp = "2023-01-01T00:00:00Z"
* entry[0].resource = MessageHeaderCDSSExampleRequest
* entry[+].resource = Obs1
* entry[+].resource = Obs2
* entry[+].resource = Obs3
* entry[+].resource = Obs4
* entry[+].resource = Obs5
* entry[+].resource = Obs6
* entry[+].resource = Obs7
* entry[+].resource = Obs8
* entry[+].resource = Obs9
* entry[+].resource = Obs10
* entry[+].resource = Obs11
* entry[+].resource = Obs12
* entry[+].resource = Obs13
* entry[+].resource = Obs14
* entry[+].resource = Obs15
* entry[+].resource = Obs16
* entry[+].resource = Obs17
* entry[+].resource = Obs18
* entry[+].resource = Obs19
* entry[+].resource = Obs20
* entry[+].resource = Obs21
* entry[+].resource = Obs22
* entry[+].resource = Obs23
* entry[+].resource = Obs24
* entry[+].resource = Obs25
* entry[+].resource = Obs26
* entry[+].resource = Obs27
* entry[+].resource = Obs28
* entry[+].resource = Obs29
* entry[+].resource = Obs30

Instance: MessageHeaderCDSSExampleRequest
InstanceOf: MessageHeaderCDSS
Usage: #inline
* meta.profile = "https://joofio.github.io/obs-cdss-fhir/StructureDefinition/MessageHeaderCDSS"
* eventCoding.code = #obs-cds
* destination.name = "CDSS-System"
* source.name = "request-system"

Instance: Obs1
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#IDENTIFICADOR "IDENTIFICADOR"
* valueInteger = 106401

Instance: Obs2
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#DATA_PARTO "DATA PARTO"
* valueString = "10/10/2022"

Instance: Obs3
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#IDADE_MATERNA "IDADE MATERNA"
* valueQuantity.value = 32

Instance: Obs4
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#GS "GS"
* valueString = "B,RH_POSITIVO"

Instance: Obs5
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#PESO_INICIAL "PESO INICIAL"
* valueQuantity.value = 45

Instance: Obs6
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#IMC "IMC"
* valueQuantity.value = 17.6

Instance: Obs7
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#CIGARROS "CIGARROS"
* valueString = "SIM"

Instance: Obs8
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#A_GESTA "A GESTA"
* valueInteger = 1

Instance: Obs9
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#TIPO_GRAVIDEZ "TIPO GRAVIDEZ"
* valueString = "ESPONTANEA"

Instance: Obs10
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#VIGIADA "VIGIADA"
* valueString = "S"

Instance: Obs11
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#NUMERO_CONSULTAS_PRE_NATAL "NUMERO CONSULTAS PRE NATAL"
* valueQuantity.value = 11

Instance: Obs12
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#VIGIADA_HOSPITAL "VIGIADA HOSPITAL"
* valueString = "Sim"

Instance: Obs13
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#VIGIADA_CENTRO_SAUDE "VIGIADA CENTRO SAUDE"
* valueString = "Sim"

Instance: Obs14
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#VIGIADA_NESTE_HOSPITAL "VIGIADA NESTE HOSPITAL"
* valueString = "Sim"

Instance: Obs15
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#ESTIMATIVA_PESO_ECO_31 "ESTIMATIVA PESO ECO 31"
* valueQuantity.value = 1533

Instance: Obs16
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#ESTIMATIVA_PESO_ECO_35 "ESTIMATIVA PESO ECO 35"
* valueQuantity.value = 2214

Instance: Obs17
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#ESTIMATIVA_PESO_ECO_37 "ESTIMATIVA PESO ECO 37"
* valueQuantity.value = 2743

Instance: Obs18
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#APRESENTACAO_37 "APRESENTACAO 37"
* valueQuantity.value = 1

Instance: Obs19
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#APRESENTACAO_35 "APRESENTACAO 35"
* valueQuantity.value = 1

Instance: Obs20
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#APRESENTACAO_31 "APRESENTACAO 31"
* valueQuantity.value = 1

Instance: Obs21
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#G_TERAPEUTICA "G TERAPEUTICA"
* valueString = "Ferrum-fol 1-> 1+1, iodo; sal iodado,, sal iodado; Inicia voltrex (1000)  1 cp 8/8 horas;  Ferro EV 300+ 300- venofer"

Instance: Obs22
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#NUM_RN "NUM RN"
* valueInteger = 1

Instance: Obs23
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#APRESENTACAO_ADMISSAO "APRESENTACAO ADMISSAO"
* valueString = "-1"

Instance: Obs24
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#IDADE_GESTACIONAL_ADMISSAO "IDADE GESTACIONAL ADMISSAO"
* valueQuantity.value = 39.4

Instance: Obs25
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#TRAB_PARTO_ENTRADA_ESPONTANEO "TRAB PARTO ENTRADA ESPONTANEO"
* valueString = "SIM"

Instance: Obs26
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#TIPO_PARTO "TIPO PARTO"
* valueString = "Parto eutócico cefálico"

Instance: Obs27
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#APRESENTACAO_NO_PARTO "APRESENTACAO NO PARTO"
* valueString = "Cefálica de vértice"

Instance: Obs28
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#TRAB_PARTO_NO_PARTO "TRAB PARTO NO PARTO"
* valueString = "Espontâneo"

Instance: Obs29
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#SEMANAS_GESTACAO_PARTO "SEMANAS GESTACAO PARTO"
* valueQuantity.value = 39.4

Instance: Obs30
InstanceOf: Observation
Usage: #inline
* status = #final
* code = $my-cs#GRUPO_ROBSON "GRUPO ROBSON"
* valueString = "1"



/////////////////// Response ///////////


Instance: 448492b8-0911-11ee-8a5c-2e8ac521fb46
InstanceOf: Bundle
Usage: #example
* meta.profile = "https://joofio.github.io/obs-cdss-fhir/StructureDefinition/MessageForRequest"
* type = #message
* entry[0].fullUrl = "http://localhost:8080/fhir/MessageHeader/44849290-0911-11ee-8a5c-2e8ac521fb46"
* entry[=].resource = Inline-Instance-for-448492b8-0911-11ee-8a5c-2e8ac521fb46-1
* entry[+].fullUrl = "http://localhost:8080/fhir/Observation/44849114-0911-11ee-8a5c-2e8ac521fb46"
* entry[=].resource = Inline-Instance-for-448492b8-0911-11ee-8a5c-2e8ac521fb46-2
* entry[+].fullUrl = "http://localhost:8080/fhir/Observation/448491f0-0911-11ee-8a5c-2e8ac521fb46"
* entry[=].resource = Inline-Instance-for-448492b8-0911-11ee-8a5c-2e8ac521fb46-3
* entry[+].fullUrl = "http://localhost:8080/fhir/Observation/4484920e-0911-11ee-8a5c-2e8ac521fb46"
* entry[=].resource = Inline-Instance-for-448492b8-0911-11ee-8a5c-2e8ac521fb46-4
* entry[+].fullUrl = "http://localhost:8080/fhir/Device/MLModelExample"
* entry[=].resource = MLModelExample


Instance: Inline-Instance-for-448492b8-0911-11ee-8a5c-2e8ac521fb46-1
InstanceOf: MessageHeaderCDSS
Usage: #inline
* id = "44849290-0911-11ee-8a5c-2e8ac521fb46"
* eventCoding.code = #obs-cds
* destination.name = "Requester"
* source.name = "CDSS-system"

Instance: Inline-Instance-for-448492b8-0911-11ee-8a5c-2e8ac521fb46-2
InstanceOf: Observation
Usage: #inline
* id = "44849114-0911-11ee-8a5c-2e8ac521fb46"
* status = #final
* code = $my-cs#PREDICTION "PREDICTION"
* valueCodeableConcept = $my-cs#Vaginal

Instance: Inline-Instance-for-448492b8-0911-11ee-8a5c-2e8ac521fb46-3
InstanceOf: Observation
Usage: #inline
* id = "448491f0-0911-11ee-8a5c-2e8ac521fb46"
* status = #final
* code = $my-cs#Pvag "Percentage Vaginal"
* valueQuantity.value = 84

Instance: Inline-Instance-for-448492b8-0911-11ee-8a5c-2e8ac521fb46-4
InstanceOf: Observation
Usage: #inline
* id = "4484920e-0911-11ee-8a5c-2e8ac521fb46"
* status = #final
* code = $my-cs#Pcsec "Percentage C-section"
* valueQuantity.value = 16


Instance: MLModelExample
InstanceOf: MLModel
Description: "Example of Request for MessageForRequest"
Title: "Example of Request for MessageForRequest"
Usage: #inline

* identifier.value = "1"
* status = #active
* type = MlTypesCS#LGBM
* version.value = "1"