Instance: Obs1
InstanceOf: Observation
Description: "Example of Request for MessageForRequest"
Title: "Example of Request for MessageForRequest"
Usage: #example

* status = #final
* code =  MyCS#IDADE_MATERNA
* valueInteger = 37

Instance: MessageHeaderCDSSExampleRequest
InstanceOf: MessageHeaderCDSS
Description: "Example of Request for MessageForRequest"
Title: "Example of Request for MessageForRequest"
Usage: #example

* eventCoding = #obs-cds
* destination.name = "CDSS-System"
//* destination.endpoint = "http://127.0.0.1"

* source.name = "request-system"
//* source.endpoint = "http://127.0.0.1"


Instance: MessageForCDSSRequest
InstanceOf: MessageForCDSS
Description: "Example of Request for MessageForRequest"
Title: "Example of Request for MessageForRequest"
Usage: #example

* timestamp = "2023-01-01T00:00:00Z"

* entry[messageheader].resource = MessageHeaderCDSSExampleRequest 
* entry[data].resource = Obs1


Instance: MLModelExample
InstanceOf: MLModel
Description: "Example of Request for MessageForRequest"
Title: "Example of Request for MessageForRequest"
Usage: #example

* identifier.value = "1"
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
//* destination.endpoint = "127.0.0.1"

* source.name = "CDSS-system"
//* source.endpoint = "127.0.0.1"




Instance: MessageForCDSSResponse
InstanceOf: MessageForCDSS
Description: "Example of Request for MessageForRequest"
Title: "Example of Request for MessageForRequest"
Usage: #example

* timestamp = "2020-01-01T00:00:00Z"
* entry[messageheader].resource = MessageHeaderCDSSExampleResponse 

* entry[data].resource = Obs1