Instance: predict
InstanceOf: OperationDefinition
Usage: #definition
* url = "http://hl7.pt/fhir/OperationDefinition/predict"
* name = "predict"
* title = "predict"
* status = #active
* kind = #operation
* description = ""


* affectsState = false
* code = #predict
* system = true
* type = false
* instance = false


* parameter[+].name = #parameters
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Set of parameters"
* parameter[=].type = #Bundle


* parameter[+].name = #prediction
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Prediction"
* parameter[=].type = #Bundle


Instance: quality-check
InstanceOf: OperationDefinition
Usage: #definition
* url = "http://hl7.pt/fhir/OperationDefinition/quality_check"
* name = "quality_check"
* title = "quality_check"
* status = #active
* kind = #operation
* description = ""


* affectsState = false
* code = #quality_check
* system = true
* type = false
* instance = false


* parameter[+].name = #parameters
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Set of parameters"
* parameter[=].type = #Bundle


* parameter[+].name = #score
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Prediction"
* parameter[=].type = #Bundle
