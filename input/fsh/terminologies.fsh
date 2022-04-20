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
Title: "Machine Learning Models code system"
Description: "Machine Learning Models code system"

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
Title: "Machine Learning Models value set"
Description: "Machine Learning Models value set"
* include codes from system ml-response-cs


