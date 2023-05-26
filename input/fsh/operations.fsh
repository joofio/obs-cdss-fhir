Instance: predict
InstanceOf: OperationDefinition
Usage: #definition
* url = "http://hl7.eu/fhir/ig/gravitate-health/OperationDefinition/focus"
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
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Set of parameters"
* parameter[=].type = #Bundle


* parameter[+].name = #prediction
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Prediction"
* parameter[=].type = #Bundle


