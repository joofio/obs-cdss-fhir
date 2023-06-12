CodeSystem: MlTypesCS
Id:         ml-type-cs
Title:     "Machine Learning Models code system"
Description: "Machine Learning Models code system"

* #DT
    "Decision Trees"
    "Decision Trees"
* #RF
    "Random Forests"
    "Random Forests"
* #XGBOOST
    "Extreme Gradient Boosting"
    "Extreme Gradient Boosting"
* #LGBM
    "Light Gradient Boosting"
    "Light Gradient Boosting"
* #BAYES
    "Bayesian"
    "Bayesian"


ValueSet: MlTypesVS
Id: ml-type-vs
Title: "Machine Learning Models value set"
Description: "Machine Learning Models value set"
* include codes from system ml-type-cs


CodeSystem: MLResponseCS
Id: ml-response-cs
Title:  "Model Responses Code System"
Description: "Model Responses Code System"

* #OK
    "Level Ok"
    "Level Ok"
* #WARN
    "Warning level 1"
    "Warning level 1"
* #NOK
    "Error level"
    "Error level"

ValueSet: MLResponseVS
Id: ml-response-vs
Title: "Model Responses value set"
Description:  "Model Responses value set"
* include codes from system ml-response-cs


CodeSystem: MyCS
Id:         my-cs
Title:     "Code system"
Description: "Code system"

* #IDADE_MATERNA
    "IDADE_MATERNA"
    "IDADE_MATERNA"


ValueSet: MyVS
Id: my-vs
Title: "value set"
Description:  "value set"
* include codes from system   my-cs

Alias: $my-cs = http://example.org/CodeSystem/my-cs
